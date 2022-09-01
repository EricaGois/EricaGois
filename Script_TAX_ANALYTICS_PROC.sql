use TAX_ANALYTICS

GO

--Alteração na TAX ANALYTICS
ALTER TABLE tblCAT83_Processamento ADD cprGerarCreditoAcumuladoVendaAbaixoCusto INT NOT NULL
DROP PROC [Taa_InterromperProcessamentoCAT83_u]
DROP PROC [Taa_AdicionarProcessamentoCAT83_i]

--RECRIAR AS PROCS PARA ATUALIZAR O TYPE: Taa_InterromperProcessamentoCAT83_u, Taa_AdicionarProcessamentoCAT83_i
DROP TYPE dbo.processamentoCAT83;
CREATE TYPE dbo.processamentoCAT83 AS TABLE(proCodigo int, usuCodigo int, cnpj varchar(14), mes int, ano int, gerarCreditoAcumuladoVendaAbaixoCusto int);


Create Table dbo.tblCAT83_Processamento_Arvore (
cpaCodigo int identity(1,1) not null
,proCodigo int not null
,cpaCNPJ varchar(14) not null
,cpaDataInicioCriacao datetime
,cpaDataFimCriacao datetime
,usuCodigoSolicitacao int not null
,cpaDataSolicitacao datetime not null
,cpaStatus varchar(30) not null
,cpaMaxRecursivo INT not null
,cpaMensagemErro varchar(2000));


alter table tblCAT83_Processamento_Arvore add constraint PK_tblCAT83_Processamento_Arvore primary key (cpaCodigo)


GO


--BUG: se o processamento terminou em 38 minutos, ele aparece como 01:38:00.
--CORRECAO: adicionado a condição se a diferença em minutos for menor que 60, acrescenta '00', se não, faz a diferença normalmente.

GO

ALTER FUNCTION [dbo].[fnCalculaTempo]   
(  
    @antes DATETIME, @depois DATETIME  
)  
RETURNS VARCHAR(20)  
AS  
BEGIN  
    DECLARE @temp DATETIME;  
    IF (@antes > @depois)  
    BEGIN  
        SET @temp = @antes;  
        SET @antes = @depois;  
        SET @depois = @temp;  
    END  
    RETURN  CASE WHEN @temp IS NULL THEN '' ELSE '-' END  
            + CASE WHEN DATEDIFF(DAY, @antes, @depois) <> 0 THEN CONVERT(VARCHAR, DATEDIFF(DAY, @antes, @depois)) + 'd ' ELSE '' END  
            + CASE WHEN DATEDIFF(MINUTE, @antes, @depois) < 60 THEN '00' ELSE RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(HOUR, @antes, @depois) % 24), 2) END + ':'  
            + RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(MINUTE, @antes, @depois) % 60), 2) + ':'  
            + RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(SECOND, @antes, @depois) % 60), 2);  
END 

GO

CREATE OR ALTER proc [dbo].[Taa_AdicionarProcessamentoCAT83_i]
(
	@processamentoCAT83 processamentoCAT83 readonly
)
---------------------------------------------------------------------------------
-- Autor:		THALCOSTA
-- Data:		03/12/2019
-- Alteração	
-- Descrição:	agendar processamento CAT 83
---------------------------------------------------------------------------------
as
begin

	delete	
		cat83
	from 
		tblCAT83_Processamento cat83
			inner join @processamentoCAT83 tp on tp.proCodigo = cat83.proCodigo and tp.cnpj = cat83.cprCnpj and   DATEFROMPARTS(cat83.cprAno, cat83.cprMes, 1) >  DATEFROMPARTS(tp.ano, tp.mes,1) 


	update	
		cat83
	set	
		cat83.cprDataCriacao = getdate(),
		cat83.cprDataInicioProcessamento = null,
		cat83.cprDataFimProcessamento = null,
		cat83.cprStatus = 'Agendado',
		cat83.usuCodigo = process.usuCodigo,
		cat83.cprLogErro = null
	from 
		tblCAT83_Processamento cat83 
			inner join @processamentoCAT83 process on process.CNPJ = cat83.cprCNPJ and process.proCodigo = cat83.proCodigo and process.ano = cat83.cprAno and process.mes = cat83.cprMes


	insert tblCAT83_Processamento	
	select 
		cat83.proCodigo,
		cat83.cnpj,
		cat83.mes,
		cat83.ano,
		getdate(),
		null,
		null,
		'Agendado',
		cat83.usuCodigo,
		null,
		null,
		cat83.gerarCreditoAcumuladoVendaAbaixoCusto
	from
		@processamentoCAT83 cat83
	where
		not exists (select	1
					from	tblCAT83_Processamento cat83_
					where	cat83_.proCodigo = cat83.proCodigo and
							cat83_.cprCnpj = cat83.cnpj and
							cat83_.cprAno = cat83.ano and
							cat83_.cprMes = cat83.mes )
	
end

GO

CREATE OR ALTER proc [dbo].[Taa_InterromperProcessamentoCAT83_u]
(
	@processamentoCAT83 processamentoCAT83 readonly
)
---------------------------------------------------------------------------------
-- Autor:		THALCOSTA
-- Data:		03/12/2019
-- Alteração	
-- Descrição:	interromper processamento CAT 83
---------------------------------------------------------------------------------
as
begin

	update
		cat83
	set
		cprStatus = 'Interrompido'
	from 
		tblCAT83_Processamento cat83
			inner join @processamentoCAT83 tp on tp.proCodigo = cat83.proCodigo and tp.cnpj = cat83.cprCnpj 
			and datefromparts(cat83.cprAno, cat83.cprMes,1) >= datefromparts(tp.ano, tp.mes ,1)  
	where cat83.cprStatus = 'Agendado'
end

GO

CREATE OR ALTER PROCEDURE [dbo].[Taa_ListaProcessamentoCAT83_s] 
(
	@proCodigo int
)
AS
BEGIN

	declare	@dt_escopo_inicio date,
			@dt_escopo_fim    date

	select	
		@dt_escopo_inicio = proDataEscopoInicio,
		@dt_escopo_fim = proDataEscopoFim
	from
		tblProjeto
	where
		proCodigo = @proCodigo

	-- clientes projeto
	SELECT 
		cl.cliCodigo,
		cl.cliCnpj
	INTO 
		#cnpjs
	FROM  
		dbo.tblProjetoCliente pc
			inner join dbo.tblCliente cl on cl.cliCodigo = pc.cliCodigo
	WHERE 
		pc.proCodigo = @proCodigo

	if (@dt_escopo_inicio is not null and @dt_escopo_fim is not null)
	begin
		;with mesAno (date)
		AS
		(
			SELECT @dt_escopo_inicio
			UNION ALL
			SELECT DATEADD(month, 1, date)
			from mesAno
			where DATEADD(month, 1, date) < @dt_escopo_fim
		)
		select
			[Mes]  = DATEPART(mm, date),  
			[Ano]  = DATEPART(yy, date)
		into
			#mesAno
		from 
			mesAno
		option (maxrecursion 300)
	end

	select *,
		   convert(varchar(30),null) as Status,
		   convert(varchar(20),null) as TempoProcessamento,
		   convert(varchar(200),null) as Observacao,
		   convert(varchar(400),null) as MensagemErro
	into  #final
	from #cnpjs
		cross join #mesAno
		
	update	
		final
	set	
		Status = cat83.cprStatus,
		TempoProcessamento = case when cat83.cprDataInicioProcessamento is not null and cat83.cprDataFimProcessamento is not null then
								dbo.fnCalculaTempo(cat83.cprDataInicioProcessamento, cat83.cprDataFimProcessamento)
							 else
								''
							 end,
		Observacao = cat83.cprObservacao,
		MensagemErro = cat83.cprLogErro
	from 
		#final final
			inner join tblCAT83_Processamento cat83 
				on cat83.proCodigo = @proCodigo and cat83.cprCnpj = final.cliCnpj and cat83.cprMes = final.Mes and cat83.cprAno = final.Ano

	update
		#final
	set
		Status = 'Pendente'
	where
		Status is null

	select * from #final
	
	drop table #final
	drop table #cnpjs
	drop table #mesAno
end

GO

CREATE OR ALTER PROCEDURE [dbo].[Taa_CAT83_ListarProcessamentoPendenteArvore]
/*                  
||------------------------------------------------------------------------------------                  
||  EMPRESA    : Deloitte                  
||  SISTEMA    : Tax Analytics                 
||  DESCRICAO  : Retorna a arvore a criado
||  AUTOR      : JIWAMOTO
||  CRIACAO    : 28/07/2022
||  MANUTENCAO : 
||  OBSERV.    :  
||------------------------------------------------------------------------------------     
*/     
AS
begin


SET NOCOUNT ON

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	select	top 1 usuCodigoSolicitacao
	into	#usuario
	from	tblCAT83_Processamento_Arvore cpr
	where	cpaDataInicioCriacao is null and
			cpaStatus = 'Pendente' and
			not exists ( select 1
						 from	tblCAT83_Processamento_Arvore cpr_
						 where	cpr_.proCodigo = cpr.proCodigo and
								cpr_.usuCodigoSolicitacao   = cpr.usuCodigoSolicitacao   and
								cpr_.cpaDataInicioCriacao  is not null and
								cpr_.cpaStatus = 'Em processamento' )

	select	cpr.*
	from	tblCAT83_Processamento_Arvore cpr
			inner join #usuario usuario on usuario.usuCodigoSolicitacao = cpr.usuCodigoSolicitacao
	where	cpaDataInicioCriacao is null and
			cpaStatus = 'Pendente' and
			not exists ( select 1
						 from	tblCAT83_Processamento_Arvore cpr_
						 where	cpr_.proCodigo = cpr.proCodigo and
								cpr_.usuCodigoSolicitacao   = cpr.usuCodigoSolicitacao   and
								cpr_.cpaDataInicioCriacao  is not null and
								cpr_.cpaStatus = 'Em processamento')
	order by cpaDataSolicitacao
	drop table #usuario
end



GO
