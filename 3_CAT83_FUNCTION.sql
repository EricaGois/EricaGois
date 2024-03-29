use dbSPED_TAA_MODEL
GO







SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE or ALTER function [dbo].[fnStrToDatetime] (@str varchar(8000))
returns datetime

as begin

	declare @d datetime
	
	/*
	FUNÇÃO DE CONVERSÃO DE DATAS VARCHAR NO FORMATO DD/MM/AAAA PARA DATETIME DO SQL SERVER.
	*/
	
	if (len(rtrim(ltrim(@str))) = 10) --FORMATO DD/MM/AAAA
	begin
		
		set @d = CONVERT(datetime, SUBSTRING(@str,7,4) + '-' + SUBSTRING(@str,4,2) + '-' + SUBSTRING(@str,1,2))
		
		if (@d is null)
			set @d = '1900-01-01'
	end
	else if (len(rtrim(ltrim(@str))) = 7) --FORMATO MM/AAAA
	BEGIN
		set @d = CONVERT(datetime, SUBSTRING(@str,4,4) + '-' + SUBSTRING(@str,1,2) + '-01')
		
		if (@d is null)
			set @d = '1900-01-01'
	end
	else if (len(rtrim(ltrim(@str))) = 6 and isnumeric(@str) = 1 ) --FORMATO MMAAAA
	BEGIN
		set @d = CONVERT(datetime, SUBSTRING(@str,3,4) + '-' + SUBSTRING(@str,1,2) + '-01')
		
		if (@d is null)
			set @d = '1900-01-01'
	end
	else if (len(rtrim(ltrim(@str))) = 6 and isnumeric(@str) = 0 ) --FORMATO MMM/AA
	BEGIN
		declare @day varchar(2), @month varchar(2), @year varchar(4)
		set @year = '20' + right(@str,2)
		set @day = '01'
	
		if left(@str,3) = 'jan'
			set @month = '01'
		else if left(@str,3) = 'fev' or left(@str,3) = 'feb'
			set @month = '02'
		else if left(@str,3) = 'mar'
			set @month = '03'
		else if left(@str,3) = 'abr' or left(@str,3) = 'apr'
			set @month = '04'
		else if left(@str,3) = 'mai' or left(@str,3) = 'may'
			set @month = '05'
		else if left(@str,3) = 'jun'
			set @month = '06'
		else if left(@str,3) = 'jul'
			set @month = '07'
		else if left(@str,3) = 'ago' or left(@str,3) = 'aug'
			set @month = '08'
		else if left(@str,3) = 'set' or left(@str,3) = 'sep'
			set @month = '09'
		else if left(@str,3) = 'out' or left(@str,3) = 'oct'
			set @month = '10'
		else if left(@str,3) = 'nov'
			set @month = '11'
		else if left(@str,3) = 'dez' or left(@str,3) = 'dec'
			set @month = '12'
		
		set @d = CONVERT(datetime, @year+'-'+@month+'-'+@day)
		
	end
	else 
		set @d = '1900-01-01'
	
	RETURN @d

end



GO
/****** Object:  UserDefinedFunction [dbo].[fnTrataDatetime]    Script Date: 27/05/2022 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnTrataDatetime](@d datetime, @tamanhoRetorno int)
returns varchar(8000)
as begin

/*
@tamanhoRetorno = 6 ==> formato MMAAAA
@tamanhoRetorno = 8 ==> formato DDMMAAAA
*/

declare @s varchar(8000)

if (@tamanhoRetorno = 6)
begin
	set @s = RIGHT('00' + CAST(DATEPART(mm, @d) AS varchar(2)), 2) + convert(varchar(4), YEAR(@d))
	
	
end
else if (@tamanhoRetorno = 8)
begin
	set @s = replace(CONVERT(varchar(10), @d, 103),'/','')
end

return @s

end


GO
/****** Object:  UserDefinedFunction [dbo].[fnTrataNumeric]    Script Date: 27/05/2022 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnTrataNumeric](@n numeric(17,5))
returns varchar(8000)
as begin

return isnull(
			replace(
				convert(varchar(100), 
					convert(numeric(17,2),@n)
				)
			,'.',',')
		,'0,00')

end

GO
/****** Object:  UserDefinedFunction [dbo].[fnTrataNumericV2]    Script Date: 27/05/2022 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnTrataNumericV2](@n numeric(26,9))
returns varchar(8000)
as begin

return isnull(
			replace(
				convert(varchar(100), 
					convert(numeric(26,12),@n)
				)
			,'.',',')
		,'0,00')

end

GO
/****** Object:  UserDefinedFunction [dbo].[fnTrataNumericV3]    Script Date: 27/05/2022 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnTrataNumericV3](@n numeric(17,5))
returns varchar(8000)
as begin

return isnull(replace(convert(varchar(100),convert(numeric(17,2),@n)),'.',','),'')

end

GO
/****** Object:  UserDefinedFunction [dbo].[fnTrataVarchar]    Script Date: 27/05/2022 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE or ALTER FUNCTION [dbo].[fnTrataVarchar](@s varchar(8000))
returns varchar(8000)
as begin

return rtrim(ltrim(isnull(@s,'')))

end
GO












/****** Object:  UserDefinedFunction [dbo].[fnCAT83ConverterValor]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE or ALTER FUNCTION [dbo].[fnCAT83ConverterValor](@p_valor VARCHAR(1000))
RETURNS VARCHAR(1000) AS BEGIN

	--Vars
	DECLARE @p_valor_reverse VARCHAR(100)
	DECLARE @p_pos_decimal INT

	--Teste
	--SET @p_valor = '100.200.300.400'
	--SET @p_valor = '100,200,300.400'
	--SET @p_valor = '100,200.300.400'
	--SET @p_valor = '100,200,300,400'
	--SET @p_valor = '100.200.300,400'
	--SET @p_valor = '100.200,300,400'

	--Remover todos os tipos de strings encontrados
	SET @p_valor = REPLACE(@p_valor, ' ', '') --Remover espaços em brancos
	SET @p_valor = REPLACE(@p_valor, '	', '') --Remover tab
	SET @p_valor = REPLACE(@p_valor, ' R$-   ', '')
	SET @p_valor = REPLACE(@p_valor, 'R$', '')
	SET @p_valor = REPLACE(@p_valor, ' -  ', '') --As vezes, o excel retorna este tipo de valor
	SET @p_valor = REPLACE(@p_valor, 'null', '')

	IF @p_valor = ''
		RETURN NULL

	-- "." ou "," será o decimal na primeira ocorrencia da ultima casa
	--Então, faço REVERSE para o CHARINDEX pegar a primeira ocorrencia
	SET @p_valor_reverse = REVERSE(@p_valor)

	-- SE FOR ","
	IF CHARINDEX('.', @p_valor_reverse) = 0 --Se não houver "."
	OR CHARINDEX(',', @p_valor_reverse) > 0 AND CHARINDEX('.', @p_valor_reverse) > CHARINDEX(',', @p_valor_reverse) --Se primeiro houver "." e depois as ","
		SET @p_pos_decimal = CHARINDEX(',', @p_valor_reverse)

	-- SE FOR "."
	ELSE IF CHARINDEX(',', @p_valor_reverse) = 0 --Se não houver ","
	OR CHARINDEX(',', @p_valor_reverse) > 0 AND CHARINDEX('.', @p_valor_reverse) < CHARINDEX(',', @p_valor_reverse) --Se primeiro houver "," e depois os "."
		SET @p_pos_decimal = CHARINDEX('.', @p_valor_reverse)

	--1. Adiciona "@" na primeira ocorrencia do "." ou "," 
	--2. Remove "." e ","
	--3. Substitui @ por "."
	IF @p_pos_decimal <> 0
		SET @p_valor = REPLACE(REPLACE(REPLACE(REVERSE(STUFF(@p_valor_reverse, @p_pos_decimal, 1, '@')),'.',''),',',''),'@','.')

	RETURN @p_valor

END
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83FormatarItem]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83FormatarItem](@p_IdCodItem    INT,
                                           @p_CodItem      VARCHAR(100), 
                                           @p_NumItem      INT, 
                                           @p_CodLote      VARCHAR(20), 
                                           @p_NumOrderProd VARCHAR(100), 
                                           @p_NumDocumento VARCHAR(10))
RETURNS TABLE
AS

/*   
||=======================================================================================                      
||EMPRESA     : DELOITTE TOUCHE TOHMATSU                      
||SISTEMA     : TAX Analytics                      
||OBJETIVO    : Formata o item: cod_item + cod_lote + num_item + num_doc + num_order_prod
||AUTOR       : JIWAMOTO                
||CRIACAO     : 03/03/2020
||MANUTENCAO  : 
||OBSERV      :                     
||=======================================================================================
*/
     RETURN
     SELECT CASE
                WHEN @p_CodItem IS NULL
                THEN NULL
				WHEN @p_IdCodItem = 6
				THEN CONCAT('ORDEM-', @p_NumOrderProd)
                ELSE CONCAT(IIF(@p_CodItem = '0', '', @p_CodItem) 
				          , IIF(@p_CodLote = '0', '', '-' + @p_CodLote) 
						  , IIF(@p_NumItem = 0, '', '-' + CAST(@p_NumItem AS VARCHAR(100))) 
						  , IIF(@p_NumDocumento = '0', '', '-' + @p_NumDocumento) 
						  , IIF(@p_NumOrderProd = '0', '', '-' + @p_NumOrderProd))
            END AS ccCodigo_CodItemFormatado;
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83RetornarCodItem]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83RetornarCodItem](@pro_codigo    INT, 
                                              @cnpj          VARCHAR(14), 
                                              @ano           INT, 
                                              @mes           INT, 
                                              @p_id_cod_item INT)
RETURNS TABLE
AS
     RETURN
     SELECT cod_item, 
            descricao, 
            unidade_medida, 
            cod_ncm
     FROM tblcat83_baseficha5f
     WHERE id_cod_item = @p_id_cod_item
           AND pro_codigo = @pro_codigo
           AND cnpj = @cnpj
           AND DATEFROMPARTS(@ano, @mes, 1) BETWEEN ISNULL(dt_inicio, DATEFROMPARTS(@ano, @mes, 1)) AND ISNULL(dt_termino, DATEFROMPARTS(@ano, @mes, 1));
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83RetornarCodParticipante]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83RetornarCodParticipante](@pro_codigo    INT, 
                                                       @cnpj          VARCHAR(14), 
                                                       @ano           INT, 
                                                       @mes           INT, 
                                                       @p_id_cod_cnpj INT)
RETURNS TABLE
AS
     RETURN
     SELECT cod_part
     FROM tblcat83_baseficha5c
     WHERE id_cod_cnpj = @p_id_cod_cnpj
           AND pro_codigo = @pro_codigo
           AND cnpj = @cnpj
           AND DATEFROMPARTS(@ano, @mes, 1) BETWEEN ISNULL(dt_inicio, DATEFROMPARTS(@ano, @mes, 1)) AND ISNULL(dt_termino, DATEFROMPARTS(@ano, @mes, 1))
           AND considerar = 'sim';
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83RetornarIdCnpj]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83RetornarIdCnpj](@pro_codigo INT, 
                                              @cnpj       VARCHAR(14), 
                                              @p_cod_part VARCHAR(60))
RETURNS TABLE
AS
     RETURN
     SELECT DISTINCT 
            id_cod_cnpj
     FROM tblcat83_baseficha5c
     WHERE cod_part = @p_cod_part
           AND pro_codigo = @pro_codigo
           AND cnpj = @cnpj
           AND considerar = 'sim';
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83RetornarIdItem]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83RetornarIdItem](@pro_codigo INT, 
                                              @cnpj       VARCHAR(14), 
                                              @p_cod_item VARCHAR(100))
RETURNS TABLE
AS
     RETURN
     SELECT DISTINCT 
            id_cod_item
     FROM tblcat83_baseficha5f
     WHERE cod_item = @p_cod_item
           AND pro_codigo = @pro_codigo
           AND cnpj = @cnpj;
GO
/****** Object:  UserDefinedFunction [dbo].[fnCAT83RetornarIdItemFinalProducao]    Script Date: 29/04/2022 16:43:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER FUNCTION [dbo].[fnCAT83RetornarIdItemFinalProducao](@pProCodigo     INT, 
                                                          @pCnpj          VARCHAR(14), 
                                                          @pANO           INT, 
                                                          @pMES           INT, 
                                                          @pNumItem       INT, 
                                                          @pCodLote       INT, 
                                                          @pNumOrderProd  VARCHAR(100), 
                                                          @pNumDoc        VARCHAR(10), 
                                                          @pCodLancamento VARCHAR(6))
RETURNS TABLE
AS
     RETURN
     SELECT TOP 1 
            id_cod_item, cod_lote, num_order_prod
     FROM tblCAT83_BaseProducao
          CROSS APPLY dbo.fnCAT83RetornarIdItem(PRO_CODIGO, CNPJ, cod_item) ori
     WHERE dt_e_s >= DATEFROMPARTS(@pANO, @pMES, 1)
           AND num_item = @pNumItem
           AND cod_lote = @pCodLote
           AND num_order_prod = @pNumOrderProd
           AND num_doc = @pNumDoc
           AND PRO_CODIGO = @pProCodigo
           AND CNPJ = @pCnpj
           AND ficha = (SELECT lan.ficha
                        FROM tblCAT83_BaseLancamentoControle lan
                        WHERE lan.PRO_CODIGO = @pProCodigo
                              AND lan.CNPJ = @pCnpj
                              AND lan.cod_lancamento = @pCodLancamento
                              AND lan.tipo = 'e');
GO
