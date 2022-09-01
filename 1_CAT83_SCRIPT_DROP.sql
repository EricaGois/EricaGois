use dbSPED_TAA_MODEL

--Se der erro pelo drop de tabelas por FK, executar novamente.

--Functions antigas
DROP FUNCTION IF EXISTS fn_converte_valor
DROP FUNCTION IF EXISTS fn_retornaNomeGGF


DECLARE @sql NVARCHAR(MAX);

--Procedures
DECLARE	@c_nome_procedure VARCHAR(500);

DECLARE c_procedure CURSOR FOR
	--Listar as procedures da CAT83
	SELECT NAME
	FROM sys.objects
	WHERE NAME LIKE '%cat83%'
	AND TYPE = 'p';

OPEN c_procedure;
FETCH NEXT FROM c_procedure INTO @c_nome_procedure;

	WHILE @@FETCH_STATUS = 0 BEGIN
		
		SET @sql = 'DROP PROCEDURE IF EXISTS ' + @c_nome_procedure;

		EXEC sp_executesql @sql;

		FETCH NEXT FROM c_procedure INTO @c_nome_procedure;
	END;

CLOSE c_procedure;
DEALLOCATE c_procedure;

--Tabelas
DECLARE	@c_nome_tabela VARCHAR(500);

DECLARE c_tabela CURSOR FOR
	--Listar as tabelas da CAT83
	SELECT NAME
	FROM sys.tables
	WHERE NAME LIKE '%cat83%'
	--Desconsiderar as tabelas abaixo q sao preenchidas
	--AND NAME NOT IN ('tblCAT83_BaseLancamentoCalculoMedia','tblCAT83_BaseLancamentoControle','tblCAT83_DocumentosFiscaisICMS');

OPEN c_tabela;
FETCH NEXT FROM c_tabela INTO @c_nome_tabela;

	WHILE @@FETCH_STATUS = 0 BEGIN
		
		SET @sql = 'DROP TABLE IF EXISTS ' + @c_nome_tabela;

		EXEC sp_executesql @sql;

		FETCH NEXT FROM c_tabela INTO @c_nome_tabela;
	END;

CLOSE c_tabela;
DEALLOCATE c_tabela;


--Functions
DECLARE	@c_nome_function VARCHAR(500);

DECLARE c_function CURSOR FOR
	--Listar as functions da CAT83
	SELECT NAME
	FROM sys.objects
	WHERE NAME LIKE '%cat83%'
	AND TYPE IN ('fn','if');

OPEN c_function;
FETCH NEXT FROM c_function INTO @c_nome_function;

	WHILE @@FETCH_STATUS = 0 BEGIN
		
		SET @sql = 'DROP FUNCTION IF EXISTS ' + @c_nome_function;

		EXEC sp_executesql @sql;

		FETCH NEXT FROM c_function INTO @c_nome_function;
	END;

CLOSE c_function;
DEALLOCATE c_function;


-----------------------------------------------

--DROPAR E RECRIAR TYPE
DROP TYPE IF EXISTS dbo.processamentoCAT83;
CREATE TYPE dbo.processamentoCAT83 AS TABLE(proCodigo int, usuCodigo int, cnpj varchar(14), mes int, ano int, gerarCreditoAcumuladoVendaAbaixoCusto int);
