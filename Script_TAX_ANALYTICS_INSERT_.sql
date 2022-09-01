use TAX_ANALYTICS


/* Insert manual dos ID 
SET IDENTITY_INSERT [tabela] ON;
insert into [...]  
SET IDENTITY_INSERT [tabela] OFF;
*/


update tblArquivoTipoTabelaCarga set attcTabelaCarga = 'tblCAT83_BaseFicha5C' where attcTabelaCarga = 'tblCAT83_FichaBase5C'
update tblArquivoTipoTabelaCarga set attcTabelaCarga = 'tblCAT83_BaseFicha5D' where attcTabelaCarga = 'tblCAT83_FichaBase5D'
update tblArquivoTipoTabelaCarga set attcTabelaCarga = 'tblCAT83_BaseFicha5F' where attcTabelaCarga = 'tblCAT83_FichaBase5F'

--[Arquivo de Importação das bases]
SET IDENTITY_INSERT tblArquivoTipo ON;
insert into tblArquivoTipo (artCodigo,artSigla,artNome,artExtensao,artVersao,artDescricao,artAtivo,artValidoAte,artDelimitador,pddCodigo,comCodigo,artDesmembraNoMapa,artDesmembraNoCadastro,atmCodigo,artPathTemplateModelo,artCaminhoRoboRPA)
SELECT 178, 'CAT83_EntradaDevolucao','CAT 83 - Entrada Devolução','.xls','0','CAT 83 - Entrada Devolução','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Entrada_Devolucao.xlsm',NULL union all
SELECT 179, 'CAT83_EntradaImportacao','CAT 83 - Entrada Importação','.xls','0','CAT 83 - Entrada Importação','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Entrada_Importacao.xlsm',NULL union all
SELECT 180, 'CAT83_EstoqueParametroEstorno','CAT 83 - Estoque Parametrização Estorno','.xls','0','CAT 83 - Estoque Parametrização Estorno','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Estoque_Parametro_Estorno.xlsm',NULL union all
SELECT 181, 'CAT83_EstoqueParametroEstornoDetalhe','CAT 83 - Estoque Parametrização Estorno Detalhe','.xls','0','CAT 83 - Estoque Parametrização Estorno Detalhe','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Estoque_Parametro_Estorno_Detalhe.xlsm',NULL union all
SELECT 182, 'CAT83_FICHA_5G','CAT 83 - Ficha 5G - Produtos em Elaboração','.xls','0','CAT 83 - Ficha 5G - Produtos em Elaboração','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Ficha_5G.xlsm',NULL union all
SELECT 183, 'CAT83_CodItemRemovido','CAT 83 - Cod. Item Removido','.xls','0','CAT 83 - Cod. Item Removido','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Cod_Item_Removido.xlsm',NULL union all
SELECT 184, 'CAT83_PerdaSobra','CAT 83 - Perdas e Sobras','.xls','0','CAT 83 - Perdas e Sobras','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Perdas_Sobras.xlsm',NULL union all
SELECT 185, 'CAT83_PreBaseFrete','CAT 83 - Pré-Frete','.xls','0','CAT 83 - Pré-Frete','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Pre_Frete.xlsm',NULL union all
SELECT 186, 'CAT83_PreBaseIndustrializacaoEncomenda','CAT 83 - Pré-Industrialização por Encomenda','.xls','0','CAT 83 - Pré-Industrialização por Encomenda','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Pre_Industrializacao_Encomenda.xlsm',NULL union all
SELECT 187, 'CAT83_PreBaseVinculo','CAT 83 - Pré-Vinculo','.xls','0','CAT 83 - Pré-Vinculo','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Pre_Vinculo.xlsm',NULL union all
SELECT 188, 'CAT83_Producao','CAT 83 - Produção','.xls','0','CAT 83 - Produção','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Producao.xlsm',NULL union all
SELECT 189, 'CAT83_SaidaDevolucao','CAT 83 - Saida Devolução','.xls','0','CAT 83 - Saida Devolução','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Saida_Devolucao.xlsm',NULL union all
SELECT 190, 'CAT83_SaidaExportacao','CAT 83 - Saida Exportação','.xls','0','CAT 83 - Saida Exportação','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Saida_Exportacao.xlsm',NULL union all
SELECT 191, 'CAT83_SaidaRessarcimentoICMS','CAT 83 - Saida Ressarcimento ICMS','.xls','0','CAT 83 - Saida Ressarcimento ICMS','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Saida_Ressarcimento_Icms.xlsm',NULL union all
SELECT 192, 'CAT83_UnidadeMedida','CAT 83 - Unidade de Medida','.xls','0','CAT 83 - Unidade de Medida','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Unidade_Medida.xlsm',NULL union all
SELECT 193, 'CAT83_Vinculo','CAT 83 - Vinculo','.xls','0','CAT 83 - Vinculo','1',NULL,'column','8','2','1','0','2','/content/Tabelas_Modelo/CAT_83/Vinculo.xlsm',NULL 
SET IDENTITY_INSERT tblArquivoTipo OFF;


--Log de [Arquivo de Importação das bases]
insert into tblArquivoTipoTabelaCarga(artCodigo, attcTabelaCarga, attcTabelaControleArquivo, attcColunaFiltroPeriodo)
SELECT 178,'tblCAT83_BaseEntradaDevolucao','tblCAT83_ArquivoBaseEntradaDevolucao','dt_doc' union all
SELECT 179,'tblCAT83_BaseEntradaImportacao','tblCAT83_ArquivoBaseEntradaImportacao','dt_e_s' union all
SELECT 180,'tblCAT83_BaseEstoqueParametroEstorno','tblCAT83_ArquivoBaseEstoqueParametroEstorno',NULL union all
SELECT 181,'tblCAT83_BaseEstoqueParametroEstornoDetalhe','tblCAT83_ArquivoBaseEstoqueParametroEstornoDetalhe',NULL union all
SELECT 182,'tblCAT83_BaseFicha5G','tblCAT83_ArquivoBaseFicha5G','dt_e_s' union all
SELECT 183,'tblCAT83_BaseCodItemRemovido','tblCAT83_ArquivoBaseCodItemRemovido',NULL union all
SELECT 184,'tblCAT83_BasePerdaSobra','tblCAT83_ArquivoBasePerdaSobra','dt_e_s' union all
SELECT 185,'tblCAT83_PreBaseFrete','tblCAT83_ArquivoPreBaseFrete','d100_dt_a_p' union all
SELECT 186,'tblCAT83_PreBaseIndustrializacaoEncomenda','tblCAT83_ArquivoPreBaseIndustrializacaoEncomenda','ind_dt_e_s' union all
SELECT 187,'tblCAT83_PreBaseVinculo','tblCAT83_ArquivoPreBaseVinculo','dev_dt_e_s' union all
SELECT 188,'tblCAT83_BaseProducao','tblCAT83_ArquivoBaseProducao','dt_e_s' union all
SELECT 189,'tblCAT83_BaseSaidaDevolucao','tblCAT83_ArquivoBaseSaidaDevolucao','dt_doc' union all
SELECT 190,'tblCAT83_BaseSaidaExportacao','tblCAT83_ArquivoBaseSaidaExportacao','dt_e_s' union all
SELECT 191,'tblCAT83_BaseSaidaRessarcimentoICMS','tblCAT83_ArquivoBaseSaidaRessarcimentoICMS','dt_e_s' union all
SELECT 192,'tblCAT83_BaseUnidadeMedida','tblCAT83_ArquivoBaseUnidadeMedida',NULL union all
SELECT 193,'tblCAT83_BaseVinculo','tblCAT83_ArquivoBaseVinculo','dev_dt_e_s' 

update tblArquivoTipoTabelaCarga set attcColunaFiltroPeriodo = 'd100_dt_a_p' where attcTabelaCarga = 'tblCAT83_BaseFrete'	
update tblArquivoTipoTabelaCarga set attcColunaFiltroPeriodo = 'c500_dt_e_s' where attcTabelaCarga = 'tblCAT83_BaseEnergia'	
update tblArquivoTipoTabelaCarga set attcColunaFiltroPeriodo = 'ind_dt_e_s' where attcTabelaCarga = 'tblCAT83_BaseIndustrializacaoEncomenda'


--Adicionar os [Arquivo de Importação das bases] ao projeto de CAT83
insert into tblProjetoTipoArquivoTipo (ptaAtivo, prtCodigo, artCodigo, ptaObrigatorio)
select 1, 29, 178, 0 union all
select 1, 29, 179, 0 union all
select 1, 29, 180, 0 union all
select 1, 29, 181, 0 union all
select 1, 29, 182, 0 union all
select 1, 29, 183, 0 union all
select 1, 29, 184, 0 union all
select 1, 29, 185, 0 union all
select 1, 29, 186, 0 union all
select 1, 29, 187, 0 union all
select 1, 29, 188, 0 union all
select 1, 29, 189, 0 union all
select 1, 29, 190, 0 union all
select 1, 29, 191, 0 union all
select 1, 29, 192, 0 union all
select 1, 29, 193, 0


--[Lista de Cruzamentos] para aparecer na tela
SET IDENTITY_INSERT tblCruzamento ON;
insert into tblCruzamento (cruCodigo,crtCodigo,pddCodigo,crcCodigo,cctCodigo,craCodigo,cpnCodigo,rtiCodigo,cruNome,cruDescricaoAmigavel,cruDescricaoTecnica,cruDataValidadeInicial,cruDataValidadeFinal,cruObservacao,cruGeraExcecao,cruAtivo,comCodigo,cruOrdem,cruAutomatico,cruMostraFiliais)
select 172, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Energia', 'CAT 83/09 - Pré Validação - Base de Energia', 'CAT 83/09 - Pré Validação - Base de Energia', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 173, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Entrada Importação', 'CAT 83/09 - Pré Validação - Base de Entrada Importação', 'CAT 83/09 - Pré Validação - Base de Entrada Importação', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 174, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Entrada Impostos', 'CAT 83/09 - Pré Validação - Base de Entrada Impostos', 'CAT 83/09 - Pré Validação - Base de Entrada Impostos', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 175, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Ficha 5C', 'CAT 83/09 - Pré Validação - Base de Ficha 5C', 'CAT 83/09 - Pré Validação - Base de Ficha 5C', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 176, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Ficha 5F', 'CAT 83/09 - Pré Validação - Base de Ficha 5F', 'CAT 83/09 - Pré Validação - Base de Ficha 5F', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 177, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Saida Exportação', 'CAT 83/09 - Pré Validação - Base de Saida Exportação', 'CAT 83/09 - Pré Validação - Base de Saida Exportação', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 178, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Saida Impostos', 'CAT 83/09 - Pré Validação - Base de Saida Impostos', 'CAT 83/09 - Pré Validação - Base de Saida Impostos', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 179, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Saldo Inicial', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 180, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Vinculo', 'CAT 83/09 - Pré Validação - Base de Vinculo', 'CAT 83/09 - Pré Validação - Base de Vinculo', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 181, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque', 'CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque', 'CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 182, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 183, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Pré-Base Vinculo', 'CAT 83/09 - Pré Validação - Base de Pré-Base Vinculo', 'CAT 83/09 - Pré Validação - Base de Pré-Base Vinculo', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 184, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base de Saldo Negativo', 'CAT 83/09 - Pré Validação - Base de Saldo Negativo', 'CAT 83/09 - Pré Validação - Base de Saldo Negativo', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 union all
select 185, 2, 3, 1, 10, 2, 1, 1, 'CAT 83/09 - Pré Validação - Base Árvore', 'CAT 83/09 - Pré Validação - Base Árvore', 'CAT 83/09 - Pré Validação - Base Árvore', NULL, NULL, NULL, 0, 1, 3, 0, 0, 1 
SET IDENTITY_INSERT tblCruzamento OFF;

--Lista de [item de relatórios] para gerar o excel
insert into tblRelatorioItem (cruCodigo,reiOrdem,reiDescricao,reiTitulo,reiNomeAba,reiNomeProcedure,reiDataValidadeInicial,reiDataValidadeFinal,reiObservacao,reiAtivo,criCodigo,reiCompostoConcatenado)
select 172, 1, 'CAT 83/09 - Pré Validação - Base de Energia', 'CAT 83/09 - Pré Validação - Base de Energia', 'BASE_ENERGIA', 'sped_CAT83_Relatorio_PreValidacao_Base_Energia', '0001-01-01', NULL, 'Este relatório visa demonstrar os cruzamentos da base de energia com a pré-ficha. A coluna ID ENERGIA informa o número do ID correspondente na base de energia e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 173, 1, 'CAT 83/09 - Pré Validação - Base de Entrada Importação', 'CAT 83/09 - Pré Validação - Base de Entrada Importação', 'BASE_ENTRADA_IMPORTACAO', 'sped_CAT83_Relatorio_PreValidacao_Base_Entrada_Importacao', '0001-01-01', NULL, 'Este relatório visa demonstrar os erros da base de entrada importação. A coluna ID ENTRADA IMPORTAÇÃO informa o número do ID correspondente na base de entrada de importação e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 174, 1, 'CAT 83/09 - Pré Validação - Base de Entrada Impostos', 'CAT 83/09 - Pré Validação - Base de Entrada Impostos', 'BASE_ENTRADA_IMPOSTOS', 'sped_CAT83_Relatorio_PreValidacao_Base_Entrada_Impostos', '0001-01-01', NULL, 'Este relatório visa demonstrar os possíveis ajustes de impostos da base de entrada. A coluna ID ENTRADA informa o número do ID correspondente na base de entrada e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 175, 1, 'CAT 83/09 - Pré Validação - Base de Ficha 5C', 'CAT 83/09 - Pré Validação - Base de Ficha 5C', 'BASE_FICHA_5C', 'sped_CAT83_Relatorio_PreValidacao_Base_Ficha_5C', '0001-01-01', NULL, 'Este relatório visa demonstrar os erros da base de ficha 5C. A coluna ID informa o número do ID correspondente na base de ficha 5C e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 176, 1, 'CAT 83/09 - Pré Validação - Base de Ficha 5F', 'CAT 83/09 - Pré Validação - Base de Ficha 5F', 'BASE_FICHA_5F', 'sped_CAT83_Relatorio_PreValidacao_Base_Ficha_5F', '0001-01-01', NULL, 'Este relatório visa demonstrar os erros da base de ficha 5F. A coluna ID informa o número do ID correspondente na base de ficha 5F e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 177, 1, 'CAT 83/09 - Pré Validação - Base de Saida Exportação', 'CAT 83/09 - Pré Validação - Base de Saida Exportação', 'BASE_SAIDA_EXPORTACAO', 'sped_CAT83_Relatorio_PreValidacao_Base_Saida_Exportacao', '0001-01-01', NULL, 'Este relatório visa demonstrar os erros da base de saida exportação. A coluna ID SAIDA EXPORTACAO informa o número do ID correspondente na base de saida de exportação e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 178, 1, 'CAT 83/09 - Pré Validação - Base de Saida Impostos', 'CAT 83/09 - Pré Validação - Base de Saida Impostos', 'BASE_SAIDA_IMPOSTOS', 'sped_CAT83_Relatorio_PreValidacao_Base_Saida_Impostos', '0001-01-01', NULL, 'Este relatório visa demonstrar os possíveis ajustes de impostos da base de saida. A coluna ID SAIDA informa o número do ID correspondente na base de saida e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 179, 1, 'CAT 83/09 - Pré Validação - Base de Saldo Inicial', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial', 'BASE_SALDO_INICIAL', 'sped_CAT83_Relatorio_PreValidacao_Base_Saldo_Inicial', '0001-01-01', NULL, 'Este relatório visa demonstrar as diferenças da base de saldo inicial com a própria base. Os resultados dos cruzamentos trazidos pelo sistema precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 180, 1, 'CAT 83/09 - Pré Validação - Base de Vinculo', 'CAT 83/09 - Pré Validação - Base de Vinculo', 'BASE_VINCULO', 'sped_CAT83_Relatorio_PreValidacao_Base_Vinculo', '0001-01-01', NULL, 'Este relatório visa demonstrar os cruzamentos da base de vinculo com as bases de entrada e saida. A coluna ID VINCULO informa o número do ID correspondente na base de vinculo e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 181, 1, 'CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque', 'CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque', 'BASE_ENTRADA_X_BASE_SAIDA_X_BASE_ESTOQUE', 'sped_CAT83_Relatorio_PreValidacao_BaseEntrada_X_BaseSaida_X_BaseEstoque', '0001-01-01', NULL, 'Este relatório visa demonstrar os cruzamentos entre as bases de entrada, saida e estoque. Os resultados dos cruzamentos trazidos pelo sistema precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 182, 1, 'CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H', 'CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H', 'BASE_SALDO_INICIAL_X_BLOCO_H', 'sped_CAT83_Relatorio_PreValidacao_BaseSaldoInicial_X_BlocoH', '0001-01-01', NULL, 'Este relatório visa demonstrar as diferenças da base de saldo inicial com a base do sped. Os resultados dos cruzamentos trazidos pelo sistema precisarão ser analisados pelo usuario.', 1, NULL, 0 union all
select 183, 1, 'CAT 83/09 - Pré Validação - Pré-Base de Vinculo', 'CAT 83/09 - Pré Validação - Pré-Base de Vinculo', 'PREBASE_VINCULO', 'sped_CAT83_Relatorio_PreValidacao_PreBase_Vinculo', '0001-01-01', NULL, 'Este relatório visa demonstrar os cruzamentos da pré-base de vinculo com as bases de entrada e saida. A coluna ID PRÉ-VINCULO informa o número do ID correspondente na pré-base de vinculo e as colunas seguintes são os resultados dos cruzamentos trazidos pelo sistema que precisarão ser analisados pelo usuario. Caso não haja inconsistência a célula do teste ficará em branco.', 1, NULL, 0 union all
select 184, 1, 'CAT 83/09 - Pré Validação - Saldo Negativo', 'CAT 83/09 - Pré Validação - Saldo Negativo', 'SALDO_NEGATIVO', 'sped_CAT83_Relatorio_PreValidacao_Saldo_Negativo', '0001-01-01', NULL, 'Este relatório visa demonstrar o saldo negativo, somando as quantidades das bases de entrada, saida, romaneio, estoque e saldo inicial.', 1, NULL, 0 union all
select 114, 32, 'Pré-Ficha ', 'Pré Ficha', 'PREFICHA', 'sped_CAT83_analisar_preficha', '0001-01-01', NULL, 'Este relatório visa demonstrar os erros ocorridos na geração da Pré-Ficha', 1, NULL, 0 union all
select 185, 1, 'CAT 83/09 - Pré Validação - Base Árvore', 'CAT 83/09 - Pré Validação - Base Árvore', 'BASE_ARVORE', 'sped_CAT83_Relatorio_PreValidacao_Base_Arvore', '0001-01-01', NULL, 'Este relatório visa demonstrar a construção da árvore e o cálculo do custo e icms dos registros.', 1, NULL, 0

--O [item de relatórios] de 'devolucao de saida' não existe mais. Mas tem um item novo e só substituir por Ficha 2G
update tblRelatorioItem set reiDescricao = '2G - Produtos em Elaboração - Produção Conjunta do e-Credac Custeio.', reiTitulo = '2G - Produtos em Elaboração - Produção Conjunta do e-Credac Custeio.', reiNomeAba = '2G', reiNomeProcedure = 'sped_CAT83_analisar_ficha_2g', reiObservacao = 'Este relatório visa demonstrar os erros ocorridos na geração da Ficha 2G - Produtos em Elaboração - Produção Conjunta do e-Credac Custeio.' where reiCodigo = 561

--Mudar a ordem do [item de relatórios] da Ficha 2G (por causa da FK, precisa ser feito na mão)
update tblRelatorioItem set reiOrdem = 100 where reiCodigo = 561 --2G recebe reiOrdem com valor aleatorio
update tblRelatorioItem set reiOrdem = 31  where reiCodigo = 560 --Ficha 6H
update tblRelatorioItem set reiOrdem = 30  where reiCodigo = 559 --Ficha 6G
update tblRelatorioItem set reiOrdem = 29  where reiCodigo = 558 --Ficha 6F
update tblRelatorioItem set reiOrdem = 28  where reiCodigo = 557 --Ficha 6E
update tblRelatorioItem set reiOrdem = 27  where reiCodigo = 556 --Ficha 6D
update tblRelatorioItem set reiOrdem = 26  where reiCodigo = 555 --Ficha 6C
update tblRelatorioItem set reiOrdem = 25  where reiCodigo = 554 --Ficha 6B
update tblRelatorioItem set reiOrdem = 24  where reiCodigo = 553 --Ficha 6A
update tblRelatorioItem set reiOrdem = 23  where reiCodigo = 552 --Ficha 5I
update tblRelatorioItem set reiOrdem = 22  where reiCodigo = 551 --Ficha 5H
update tblRelatorioItem set reiOrdem = 21  where reiCodigo = 550 --Ficha 5G
update tblRelatorioItem set reiOrdem = 20  where reiCodigo = 549 --Ficha 5F
update tblRelatorioItem set reiOrdem = 19  where reiCodigo = 548 --Ficha 5D
update tblRelatorioItem set reiOrdem = 18  where reiCodigo = 547 --Ficha 5C
update tblRelatorioItem set reiOrdem = 17  where reiCodigo = 546 --Ficha 5B
update tblRelatorioItem set reiOrdem = 16  where reiCodigo = 545 --Ficha 5A
update tblRelatorioItem set reiOrdem = 15  where reiCodigo = 544 --Ficha 4C
update tblRelatorioItem set reiOrdem = 14  where reiCodigo = 543 --Ficha 4B
update tblRelatorioItem set reiOrdem = 13  where reiCodigo = 542 --Ficha 4A
update tblRelatorioItem set reiOrdem = 12  where reiCodigo = 541 --Ficha 3C
update tblRelatorioItem set reiOrdem = 11  where reiCodigo = 540 --Ficha 3B
update tblRelatorioItem set reiOrdem = 10  where reiCodigo = 539 --Ficha 3A
update tblRelatorioItem set reiOrdem = 9   where reiCodigo = 561 --Ajusta a ordem da ficha 2G



--Adicionar a [Lista de cruzamento] ao projeto de CAT83
insert into tblCruzamentoProjetoTipo (cruCodigo, prtCodigo, cptAtivo)
select 172, 29, 1 union all
select 173, 29, 1 union all
select 174, 29, 1 union all
select 175, 29, 1 union all
select 176, 29, 1 union all
select 177, 29, 1 union all
select 178, 29, 1 union all
select 179, 29, 1 union all
select 180, 29, 1 union all
select 181, 29, 1 union all
select 182, 29, 1 union all
select 183, 29, 1 union all
select 184, 29, 1 union all
select 185, 29, 1

--Vincular a [Lista de cruzamento] ao [Arquivo de Importação das bases]
insert into tblCruzamentoArquivoTipo (cruCodigo, artCodigo, catAtivo)
select 108, 125, 1 union all ---	CAT 83/09 - Pré Validação - Base de Entrada
select 109, 127, 1 union all ---	CAT 83/09 - Pré Validação - Base de Estoque
select 110, 128, 1 union all ---	CAT 83/09 - Pré Validação - Base de Romaneio
select 111, 129, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saida
select 112, 124, 1 union all ---	CAT 83/09 - Pré Validação - Base de Frete
select 113, 130, 1 union all ---	CAT 83/09 - Pré Validação - Base de Industrialização por Encomenda
select 114, 125, 1 union all ---	CAT 83/09 - Pós Validação   -- Colocar artCodigo CAT83_Entrada *hardcode*
select 115, 125, 1 union all ---	CAT 83/09 - Arquivo Oficial -- Colocar artCodigo CAT83_Entrada *hardcode*
select 172, 126, 1 union all ---	CAT 83/09 - Pré Validação - Base de Energia
select 173, 179, 1 union all ---	CAT 83/09 - Pré Validação - Base de Entrada Importação
select 174, 125, 1 union all ---	CAT 83/09 - Pré Validação - Base de Entrada Impostos
select 175, 133, 1 union all ---	CAT 83/09 - Pré Validação - Base de Ficha 5C
select 176, 135, 1 union all ---	CAT 83/09 - Pré Validação - Base de Ficha 5F
select 177, 190, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saida Exportação
select 178, 129, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saida Impostos
select 179, 122, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saldo Inicial
select 180, 193, 1 union all ---	CAT 83/09 - Pré Validação - Base de Vinculo
select 181, 125, 1 union all ---	CAT 83/09 - Pré Validação - Base de Entrada X Base Saida X Base Estoque
select 182, 122, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saldo Inicial X Bloco H
select 183, 187, 1 union all ---	CAT 83/09 - Pré Validação - Base de Pré-Base Vinculo
select 184, 122, 1 union all ---	CAT 83/09 - Pré Validação - Base de Saldo Negativo
select 185, 125, 1 ---	CAT 83/09 - Pré Validação - Base Arvore -- Colocar artCodigo CAT83_Entrada *hardcode*


--Adicionar a [Lista de cruzamento] com os parametros da procedure em [item de relatórios]
insert into tblRelatorioParametro (parCodigo,cruCodigo,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo)
select parCodigo,172,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,173,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,174,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,175,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 and parCodigo in (6,1) union all
select parCodigo,176,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 and parCodigo in (6,1) union all
select parCodigo,177,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,178,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,179,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,180,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,181,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,182,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,183,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,184,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 union all
select parCodigo,185,repOrdem,repNome,repTitulo,repValorDefault,repObrigatorio,repAtivo from tblRelatorioParametro where cruCodigo = 108 


--Listar na tela a Criação de bases
insert into tblcat83_Bases (cbaCodigo,cbaNomeBase,cbaProcedure,cbaAtiva,artCodigo)
select 1,'CAT83_Energia','sped_cat83_criar_base_energia',1,126 union all
select 2,'CAT83_Entrada','sped_cat83_criar_base_entrada',1,125 union all
select 3,'CAT83_Ficha5C','sped_cat83_criar_base_ficha_5c',1,133 union all
select 4,'CAT83_Ficha5F','sped_cat83_criar_base_ficha_5f',1,135 union all
select 5,'CAT83_Ficha5G','sped_cat83_criar_base_ficha_5g',1,182 union all
select 6,'CAT83_Frete','sped_cat83_criar_base_frete',1,124 union all
select 7,'CAT83_IndustrializacaoEncomenda','sped_cat83_criar_base_industr',1,130 union all
select 8,'CAT83_PerdaSobra','sped_cat83_criar_base_perda_sobra',1,184 union all
select 9,'CAT83_Producao','sped_cat83_criar_base_producao',1,188 union all
select 10,'CAT83_Rateio','sped_cat83_criar_base_rateio',1,123 union all
select 11,'CAT83_Saida','sped_cat83_criar_base_saida',1,129 union all
select 12,'CAT83_SaidaRessarcimentoICMS','sped_cat83_criar_base_saida_ressarcimento_icms',1,191 union all
select 13,'CAT83_SaldoInicial','sped_cat83_criar_base_saldo_inicial',1,122 union all
select 14,'CAT83_UnidadeMedida','sped_cat83_criar_base_unidade_medida',1,192 union all
select 15,'CAT83_Vinculo','sped_cat83_criar_base_vinculo',1,193 union all
select 16,'CAT83_PreBaseFrete','sped_cat83_criar_prebase_frete',1,185 union all
select 17,'CAT83_PreBaseIndustrializacaoEncomenda','sped_cat83_criar_prebase_industr',1,186 union all
select 18,'CAT83_PreBaseVinculo','sped_cat83_criar_prebase_vinculo',1,187
