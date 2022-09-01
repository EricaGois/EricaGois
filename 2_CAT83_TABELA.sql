use dbSPED_TAA_MODEL
GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseEnergia]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseEnergia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_energia] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[energia_consumo_maior_valor_mes] [decimal](20, 9) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseEntrada]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseEntrada](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NOT NULL,
	[entrada_custo_negativo] [varchar](1000) NULL,
	[estoque_existe_ordem_producao] [varchar](1000) NULL,
	[saida_cfop] [varchar](1000) NULL,
	[ficha5f_uso_consumo_ativo] [varchar](100) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
	[prebase_vinculo_id] [varchar](1000) NULL,
	[vinculo_considerar] [varchar](1000) NULL,
	[importacao_qtd_linha] [int] NULL,
	[importacao_sem_di] [varchar](3) NULL,
	[vinculo_qtd_linha] [int] NULL,
	[entrada_complementar_vinculada] [varchar](1000) NULL,
	[entrada_devolucao_x_saida_original_considerar_diferente] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseEntradaImportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseEntradaImportacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NOT NULL,
	[importacao_id_duplicado] [varchar](3) NULL,
	[importacao_id_nulo] [varchar](3) NULL,
	[importacao_qtd_atual_dif] [decimal](20, 9) NULL,
	[id_entrada_importacao] [int] NULL,
	[importacao_qtd_atual_importacao_nulo] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseEntradaImpostos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseEntradaImpostos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NOT NULL,
	[id_efd] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[dt_e_s] [date] NULL,
	[c100_tot_vl_merc] [decimal](20, 9) NULL,
	[tot_vl_merc] [decimal](20, 9) NULL,
	[c170_vl_item] [decimal](20, 9) NULL,
	[vl_item] [decimal](20, 9) NULL,
	[c100_tot_vl_icms] [decimal](20, 9) NULL,
	[tot_vl_icms] [decimal](20, 9) NULL,
	[c170_vl_icms] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[vl_bc_icms] [decimal](20, 9) NULL,
	[aliq_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_icms_st] [decimal](20, 9) NULL,
	[tot_vl_icms_st] [decimal](20, 9) NULL,
	[vl_icms_st] [decimal](20, 9) NULL,
	[vl_bc_icms_st] [decimal](20, 9) NULL,
	[aliq_st] [decimal](20, 9) NULL,
	[c100_tot_vl_ipi] [decimal](20, 9) NULL,
	[tot_vl_ipi] [decimal](20, 9) NULL,
	[c170_vl_ipi] [decimal](20, 9) NULL,
	[vl_ipi] [decimal](20, 9) NULL,
	[vl_bc_ipi] [decimal](20, 9) NULL,
	[aliq_ipi] [decimal](20, 9) NULL,
	[c100_tot_vl_pis] [decimal](20, 9) NULL,
	[tot_vl_pis] [decimal](20, 9) NULL,
	[c170_vl_pis] [decimal](20, 9) NULL,
	[vl_pis] [decimal](20, 9) NULL,
	[vl_bc_pis] [decimal](20, 9) NULL,
	[aliq_pis] [decimal](20, 9) NULL,
	[quant_bc_pis] [decimal](20, 9) NULL,
	[vl_aliq_pis] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins] [decimal](20, 9) NULL,
	[tot_vl_cofins] [decimal](20, 9) NULL,
	[c170_vl_cofins] [decimal](20, 9) NULL,
	[vl_cofins] [decimal](20, 9) NULL,
	[vl_bc_cofins] [decimal](20, 9) NULL,
	[aliq_cofins] [decimal](20, 9) NULL,
	[quant_bc_cofins] [decimal](20, 9) NULL,
	[vl_aliq_cofins] [decimal](20, 9) NULL,
	[entrada_vl_aliq_icms_dif] [decimal](20, 9) NULL,
	[entrada_vl_aliq_ipi_dif] [decimal](20, 9) NULL,
	[entrada_vl_aliq_pis_dif] [decimal](20, 9) NULL,
	[entrada_vl_aliq_cofins_dif] [decimal](20, 9) NULL,
	[entrada_vl_item_dif_c100_x_c170] [decimal](20, 9) NULL,
	[entrada_vl_item_dif] [decimal](20, 9) NULL,
	[entrada_vl_icms_dif_c100_x_c170] [decimal](20, 9) NULL,
	[entrada_vl_icms_dif] [decimal](20, 9) NULL,
	[entrada_vl_ipi_dif_c100_x_c170] [decimal](20, 9) NULL,
	[entrada_vl_ipi_dif] [decimal](20, 9) NULL,
	[entrada_vl_pis_dif_c100_x_c170] [decimal](20, 9) NULL,
	[entrada_vl_pis_dif] [decimal](20, 9) NULL,
	[entrada_vl_cofins_dif_c100_x_c170] [decimal](20, 9) NULL,
	[entrada_vl_cofins_dif] [decimal](20, 9) NULL,
	[sit_icms_combinacao] [int] NULL,
	[sit_pis_cofins_combinacao] [int] NULL,
	[sit_ipi_combinacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseEstoque]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseEstoque](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_estoque] [int] NOT NULL,
	[estoque_producao_po_num_order_prod] [varchar](1000) NULL,
	[estoque_cod_item_dif_producao_insumo] [varchar](1000) NULL,
	[estoque_cod_item_igual_producao_insumo] [varchar](max) NULL,
	[estoque_dif_producao_cod_item] [varchar](max) NULL,
	[estoque_producao_sem_insumo] [varchar](1000) NULL,
	[estoque_producao_sem_insumo_considerar] [varchar](1000) NULL,
	[estoque_insumo_sem_producao] [varchar](1000) NULL,
	[estoque_insumo_sem_producao_considerar] [varchar](1000) NULL,
	[estoque_refcircular] [varchar](500) NULL,
	[ficha5f_uso_consumo_ativo] [varchar](100) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
	[vinculo_qtd_linha] [int] NULL,
	[estoque_cod_item_igual_insumo_producao] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseFrete]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseFrete](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_frete] [int] NOT NULL,
	[frete_cod_lancamento] [varchar](1000) NULL,
	[frete_dt_e_s_dif] [varchar](1000) NULL,
	[saida_despesas_operacionais] [varchar](1000) NULL,
	[frete_perce_rateio] [decimal](20, 2) NULL,
	[frete_vl_icms_cred] [decimal](20, 9) NULL,
	[ficha5f_uso_consumo_ativo] [varchar](100) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
	[frete_cte_enviado] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseIndustrializacaoEncomenda]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseIndustrializacaoEncomenda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_industr] [int] NOT NULL,
	[industr_itca_pa_sem_ins] [varchar](1000) NULL,
	[industr_itca_ins_sem_pa] [varchar](1000) NULL,
	[entrada_considerar] [varchar](1000) NULL,
	[saida_considerar] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseRomaneio]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseRomaneio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_romaneio] [int] NOT NULL,
	[estoque_id_producao] [varchar](1000) NULL,
	[estoque_id_insumo] [varchar](1000) NULL,
	[estoque_mvt_insumo] [varchar](1000) NULL,
	[romaneio_producao_sem_insumo] [varchar](1000) NULL,
	[romaneio_producao_sem_insumo_considerar] [varchar](1000) NULL,
	[romaneio_producao_insumo_cod_item_dif] [varchar](1000) NULL,
	[romaneio_producao_insumo_cod_item_dif_considerar] [varchar](1000) NULL,
	[romaneio_producao_insumo_cod_item_igual] [varchar](1000) NULL,
	[romaneio_producao_insumo_cod_item_igual_considerar] [varchar](1000) NULL,
	[romaneio_insumo_sem_producao] [varchar](1000) NULL,
	[romaneio_insumo_sem_producao_considerar] [varchar](1000) NULL,
	[saida_cfop] [varchar](1000) NULL,
	[saida_cod_item] [varchar](1000) NULL,
	[saida_cod_item_nao_encontrado] [varchar](1000) NULL,
	[saida_cod_lancamento] [varchar](1000) NULL,
	[saida_considerar] [varchar](1000) NULL,
	[saida_dt_e_s] [varchar](1000) NULL,
	[saida_id] [varchar](1000) NULL,
	[saida_nf_nao_encontrado] [varchar](1000) NULL,
	[saida_num_item] [varchar](1000) NULL,
	[saida_quantidade] [varchar](1000) NULL,
	[ficha5f_uso_consumo_ativo] [varchar](100) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
	[vinculo_qtd_linha] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseSaida](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NOT NULL,
	[entrada_cfop] [varchar](1000) NULL,
	[estoque_existe_ordem_producao] [varchar](1000) NULL,
	[frete_Despesas_operacionais] [varchar](1000) NULL,
	[romaneio_cod_item] [varchar](1000) NULL,
	[romaneio_considerar] [varchar](1000) NULL,
	[romaneio_id] [varchar](1000) NULL,
	[romaneio_num_item] [varchar](1000) NULL,
	[energia_despesas_operacionais] [decimal](20, 9) NULL,
	[ficha5f_uso_consumo_ativo] [varchar](100) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
	[prebase_vinculo_id] [varchar](1000) NULL,
	[vinculo_considerar] [varchar](1000) NULL,
	[exportacao_qtd_linha] [int] NULL,
	[saida_comprovacaooperacao_nao_preenchido] [varchar](1000) NULL,
	[exportacao_id_nulo] [varchar](1000) NULL,
	[vinculo_qtd_linha] [int] NULL,
	[saida_complementar_vinculada] [varchar](1000) NULL,
	[saida_devolucao_x_entrada_original_considerar_diferente] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseSaidaExportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseSaidaExportacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NOT NULL,
	[exportacao_id_duplicado] [varchar](3) NULL,
	[exportacao_id_nulo] [varchar](3) NULL,
	[exportacao_qtd_atual_dif] [decimal](20, 9) NULL,
	[exportacao_registro_duplicado] [varchar](3) NULL,
	[id_saida_exportacao] [int] NULL,
	[exportacao_data_menor_saida] [varchar](3) NULL,
	[exportacao_qtd_atual_exportacao_nulo] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseSaidaImpostos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseSaidaImpostos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NOT NULL,
	[id_efd] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[dt_e_s] [date] NULL,
	[c100_tot_vl_merc] [decimal](20, 9) NULL,
	[tot_vl_merc] [decimal](20, 9) NULL,
	[c170_vl_item] [decimal](20, 9) NULL,
	[vl_item] [decimal](20, 9) NULL,
	[c100_tot_vl_icms] [decimal](20, 9) NULL,
	[tot_vl_icms] [decimal](20, 9) NULL,
	[c170_vl_icms] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[vl_bc_icms] [decimal](20, 9) NULL,
	[aliq_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_icms_st] [decimal](20, 9) NULL,
	[tot_vl_icms_st] [decimal](20, 9) NULL,
	[vl_icms_st] [decimal](20, 9) NULL,
	[vl_bc_icms_st] [decimal](20, 9) NULL,
	[aliq_st] [decimal](20, 9) NULL,
	[c100_tot_vl_ipi] [decimal](20, 9) NULL,
	[tot_vl_ipi] [decimal](20, 9) NULL,
	[c170_vl_ipi] [decimal](20, 9) NULL,
	[vl_ipi] [decimal](20, 9) NULL,
	[vl_bc_ipi] [decimal](20, 9) NULL,
	[aliq_ipi] [decimal](20, 9) NULL,
	[c100_tot_vl_pis] [decimal](20, 9) NULL,
	[tot_vl_pis] [decimal](20, 9) NULL,
	[c170_vl_pis] [decimal](20, 9) NULL,
	[vl_pis] [decimal](20, 9) NULL,
	[vl_bc_pis] [decimal](20, 9) NULL,
	[aliq_pis] [decimal](20, 9) NULL,
	[quant_bc_pis] [decimal](20, 9) NULL,
	[vl_aliq_pis] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins] [decimal](20, 9) NULL,
	[tot_vl_cofins] [decimal](20, 9) NULL,
	[c170_vl_cofins] [decimal](20, 9) NULL,
	[vl_cofins] [decimal](20, 9) NULL,
	[vl_bc_cofins] [decimal](20, 9) NULL,
	[aliq_cofins] [decimal](20, 9) NULL,
	[quant_bc_cofins] [decimal](20, 9) NULL,
	[vl_aliq_cofins] [decimal](20, 9) NULL,
	[saida_vl_aliq_icms_dif] [decimal](20, 9) NULL,
	[saida_vl_aliq_ipi_dif] [decimal](20, 9) NULL,
	[saida_vl_aliq_pis_dif] [decimal](20, 9) NULL,
	[saida_vl_aliq_cofins_dif] [decimal](20, 9) NULL,
	[saida_vl_item_dif_c100_x_c170] [decimal](20, 9) NULL,
	[saida_vl_item_dif] [decimal](20, 9) NULL,
	[saida_vl_icms_dif_c100_x_c170] [decimal](20, 9) NULL,
	[saida_vl_icms_dif] [decimal](20, 9) NULL,
	[saida_vl_ipi_dif_c100_x_c170] [decimal](20, 9) NULL,
	[saida_vl_ipi_dif] [decimal](20, 9) NULL,
	[saida_vl_pis_dif_c100_x_c170] [decimal](20, 9) NULL,
	[saida_vl_pis_dif] [decimal](20, 9) NULL,
	[saida_vl_cofins_dif_c100_x_c170] [decimal](20, 9) NULL,
	[saida_vl_cofins_dif] [decimal](20, 9) NULL,
	[sit_icms_combinacao] [int] NULL,
	[sit_pis_cofins_combinacao] [int] NULL,
	[sit_ipi_combinacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseSaldoInicial]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseSaldoInicial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_saldo_inicial] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[saldo_bloco_h_x_erp_qtd] [decimal](20, 9) NULL,
	[saldo_bloco_h_x_arvore_vl_custo] [decimal](20, 9) NULL,
	[saldo_bloco_h_x_arvore_vl_icms] [decimal](20, 9) NULL,
	[preficha_vl_custo] [decimal](20, 9) NULL,
	[preficha_vl_icms] [decimal](20, 9) NULL,
	[preficha_cod_lancamento] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnaliseBaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnaliseBaseVinculo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_vinculo] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[vinculo_qtd_dev_maior_qtd_ori] [varchar](1000) NULL,
	[vinculo_qtd_ori_zerada] [varchar](1000) NULL,
	[vinculo_entrada_dt_dev_posterior] [varchar](1000) NULL,
	[vinculo_item_valor_diferente_dev_ori] [varchar](1000) NULL,
	[vinculo_icms_unitario_valor_diferente_dev_ori] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_AnalisePreBaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_AnalisePreBaseVinculo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_previnculo] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[previnculo_chv_inexistente] [varchar](1000) NULL,
	[previnculo_vinculo_inexistente] [varchar](1000) NULL,
	[previnculo_vinculo_existente_sem_item] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseCodItemRemovido]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseCodItemRemovido](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseCodItemRemovido] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEnergia]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEnergia](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abeAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEnergia] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEntrada]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEntrada](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abeAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEntrada] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEntradaDevolucao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEntradaDevolucao](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEntradaDevolucao] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEntradaImportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEntradaImportacao](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEntradaImportacao] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEstoque]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEstoque](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abestAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEstoque] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEstoqueParametroEstorno]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEstoqueParametroEstorno](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEstoqueParametroEstorno] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseEstoqueParametroEstornoDetalhe]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseEstoqueParametroEstornoDetalhe](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseEstoqueParametroEstornoDetalhe] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseFicha5C]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseFicha5C](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abf5cAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseFicha5C] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseFicha5D]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseFicha5D](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abf5dAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseFicha5D] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseFicha5F]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseFicha5F](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abf5fAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseFicha5F] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseFicha5G]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseFicha5G](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseFicha5G] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseFrete]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseFrete](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseFrete] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseIndustrializacaoEncomenda]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseIndustrializacaoEncomenda](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abieAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseIndustrializacaoEncomenda] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseLancamentoCalculoMedia]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseLancamentoCalculoMedia](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[ablcmAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseLancamentoCalculoMedia] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseLancamentoControle]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseLancamentoControle](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[ablcAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseLancamentoControle] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBasePerdaSobra]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBasePerdaSobra](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBasePerdaSobra] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseProducao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseProducao](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseProducao] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseRateio]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseRateio](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abrAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseRateio] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseRomaneio]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseRomaneio](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abroAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseRomaneio] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseSaida](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[absAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseSaida] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseSaidaDevolucao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseSaidaDevolucao](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseSaidaDevolucao] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseSaidaExportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseSaidaExportacao](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseSaidaExportacao] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseSaidaRessarcimentoICMS]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseSaidaRessarcimentoICMS](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseSaidaRessarcimentoICMS] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseSaldoInicial]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseSaldoInicial](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[absiAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseSaldoInicial] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseUnidadeMedida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseUnidadeMedida](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseUnidadeMedida] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoBaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoBaseVinculo](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoBaseVinculo] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoPreBaseFrete]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoPreBaseFrete](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoPreBaseFrete] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoPreBaseIndustrializacaoEncomenda]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoPreBaseIndustrializacaoEncomenda](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoPreBaseIndustrializacaoEncomenda] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ArquivoPreBaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ArquivoPreBaseVinculo](
	[ID_ARQUIVO] [int] IDENTITY(1,1) NOT NULL,
	[alrChaveArquivo] [uniqueidentifier] NOT NULL,
	[abfAtivo] [bit] NOT NULL,
 CONSTRAINT [PK_tblCAT83_ArquivoPreBaseVinculo] PRIMARY KEY CLUSTERED 
(
	[ID_ARQUIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseArvore]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseArvore](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NULL,
	[id_estoque] [int] NULL,
	[id_saldo_inicial] [int] NULL,
	[cod_item] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[num_order_prod] [varchar](100) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[qtd_controle_estoque] [decimal](20, 9) NULL,
	[qtd_consumida] [decimal](20, 9) NULL,
	[vl_rateio] [decimal](20, 9) NULL,
	[vl_custo] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[base] [varchar](50) NULL,
	[ord_arvore] [int] NULL,
	[nivel_arvore] [varchar](1000) NULL,
	[id_arvore] [int] NULL,
	[id_arvore_pai] [int] NULL,
	[cadeia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseArvore_RefCircular]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseArvore_RefCircular](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NULL,
	[base] [varchar](50) NULL,
	[observacao] [varchar](1000) NULL,
	[ord_arvore] [int] NULL,
	[nivel_arvore] [varchar](4000) NULL,
	[cadeia] [int] NULL,
	[ult_insumo] [int] NULL,
	[refCircular] [int] NULL,
	[id_pai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseCodItemRemovido]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseCodItemRemovido](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[observacao] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseControleProducao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseControleProducao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[ANO] [int] NULL,
	[MES] [int] NULL,
	[cod_item_final] [int] NULL,
	[num_item_final] [int] NULL,
	[cod_lote_final] [varchar](20) NOT NULL,
	[num_order_prod_final] [varchar](100) NULL,
	[num_doc_final] [varchar](10) NULL,
	[ficha] [varchar](2) NULL,
	[id_preficha] [int] NULL,
	[qtd_perda_total] [decimal](20, 9) NULL,
	[qtd_total] [decimal](20, 9) NULL,
	[custo_total] [decimal](20, 9) NULL,
	[icms_total] [decimal](20, 9) NULL,
	[qtd_disponivel] [decimal](20, 9) NULL,
	[custo_disponivel] [decimal](20, 9) NULL,
	[icms_disponivel] [decimal](20, 9) NULL,
	[qtd_perdaxganho_disponivel] [decimal](20, 9) NULL,
	[qtd_industr_esperado_periodo] [decimal](20, 9) NULL,
	[qtd_industr_esperado] [decimal](20, 9) NULL,
	[preco_medio_unitario] [decimal](20, 9) NULL,
	[preco_medio_projetado] [decimal](20, 9) NULL,
	[perce_alocacao] [decimal](20, 3) NULL,
	[qtd_utilizada_periodo] [decimal](20, 9) NULL,
	[custo_utilizada_periodo] [decimal](20, 9) NULL,
	[icms_utilizada_periodo] [decimal](20, 9) NULL,
	[qtd_perdaxganho_periodo] [decimal](20, 9) NULL,
	[qtd_estorno_periodo] [decimal](20, 9) NULL,
	[perda_normal_ficha_5b] [varchar](3) NULL,
	[id_producao] [int] NULL,
	[cod_item_insumo] [varchar](100) NULL,
	[num_item_insumo] [int] NULL,
	[cod_lote_insumo] [varchar](20) NULL,
	[num_order_prod_insumo] [varchar](100) NULL,
	[num_doc_insumo] [varchar](10) NULL,
	[linha_nova_mes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEnergia]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEnergia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[obs] [varchar](4000) NULL,
	[historico] [varchar](4000) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[c500_ind_oper] [int] NULL,
	[c500_ind_emit] [int] NULL,
	[c500_cod_part] [varchar](60) NULL,
	[r0150_participante_nome] [varchar](100) NULL,
	[r0150_participante_cod_pais] [varchar](10) NULL,
	[r0150_participante_cnpj] [varchar](14) NULL,
	[r0150_participante_cpf] [varchar](14) NULL,
	[r0150_participante_ie] [varchar](15) NULL,
	[r0150_participante_cod_mun] [varchar](10) NULL,
	[r0150_participante_suframa] [varchar](500) NULL,
	[c500_cod_mod] [varchar](2) NULL,
	[c500_cod_sit] [varchar](2) NULL,
	[c500_ser] [varchar](10) NULL,
	[c500_sub] [varchar](10) NULL,
	[c500_cod_cons] [varchar](2) NULL,
	[c500_num_doc] [varchar](10) NULL,
	[c500_dt_doc] [date] NULL,
	[c500_dt_e_s] [date] NOT NULL,
	[c500_vl_doc] [decimal](20, 9) NULL,
	[c500_vl_desc] [decimal](20, 9) NULL,
	[c500_vl_forn] [decimal](20, 9) NULL,
	[c500_vl_serv_nt] [decimal](20, 9) NULL,
	[c500_vl_terc] [decimal](20, 9) NULL,
	[c500_vl_da] [decimal](20, 9) NULL,
	[c500_vl_bc_icms] [decimal](20, 9) NULL,
	[c500_vl_icms] [decimal](20, 9) NULL,
	[c500_vl_bc_icms_st] [decimal](20, 9) NULL,
	[c500_vl_icms_st] [decimal](20, 9) NULL,
	[c500_cod_inf] [varchar](6) NULL,
	[c500_vl_pis] [decimal](20, 9) NULL,
	[c500_vl_cofins] [decimal](20, 9) NULL,
	[c500_tp_ligacao] [int] NULL,
	[c500_cod_grupo_tensao] [varchar](2) NULL,
	[c500_chv_doce] [varchar](44) NULL,
	[c500_fin_doce] [int] NULL,
	[c500_chv_doce_ref] [varchar](44) NULL,
	[c500_ind_dest] [int] NULL,
	[c500_cod_mun_dest] [varchar](7) NULL,
	[c500_cod_cta] [varchar](10) NULL,
	[c510_num_item] [int] NULL,
	[c510_cod_item] [varchar](100) NULL,
	[c510_cod_class] [varchar](4) NULL,
	[c510_qtd] [decimal](20, 9) NULL,
	[c510_unid] [varchar](5) NULL,
	[c510_vl_item] [decimal](20, 9) NULL,
	[c510_vl_desc] [decimal](20, 9) NULL,
	[c510_cst_icms] [varchar](3) NULL,
	[c510_cfop] [varchar](4) NULL,
	[c510_vl_bc_icms] [decimal](20, 9) NULL,
	[c510_aliq_icms] [decimal](20, 9) NULL,
	[c510_vl_icms] [decimal](20, 9) NULL,
	[c510_vl_bc_icms_st] [decimal](20, 9) NULL,
	[c510_aliq_st] [decimal](20, 9) NULL,
	[c510_vl_icms_st] [decimal](20, 9) NULL,
	[c510_ind_rec] [int] NULL,
	[c510_cod_part] [varchar](60) NULL,
	[c510_vl_pis] [decimal](20, 9) NULL,
	[c510_vl_cofins] [decimal](20, 9) NULL,
	[c510_cod_cta] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEntrada]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEntrada](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[c100_ind_oper] [int] NULL,
	[ind_oper] [int] NULL,
	[c100_ind_emit] [int] NULL,
	[ind_emit] [int] NULL,
	[c100_cod_part] [varchar](60) NULL,
	[cod_part] [varchar](60) NULL,
	[r0150_participante_nome] [varchar](100) NULL,
	[participante_nome] [varchar](100) NULL,
	[r0150_participante_cod_pais] [varchar](10) NULL,
	[participante_cod_pais] [varchar](10) NULL,
	[r0150_participante_cnpj] [varchar](14) NULL,
	[participante_cnpj] [varchar](14) NULL,
	[r0150_participante_cpf] [varchar](14) NULL,
	[participante_cpf] [varchar](14) NULL,
	[r0150_participante_ie] [varchar](15) NULL,
	[participante_ie] [varchar](15) NULL,
	[r0150_participante_cod_mun] [varchar](10) NULL,
	[participante_cod_mun] [varchar](10) NULL,
	[r0150_participante_suframa] [varchar](500) NULL,
	[participante_suframa] [varchar](500) NULL,
	[c100_cod_mod] [varchar](2) NULL,
	[cod_mod] [varchar](2) NULL,
	[c100_cod_sit] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[c100_ser] [varchar](10) NULL,
	[ser] [varchar](10) NULL,
	[c100_num_doc] [varchar](10) NULL,
	[num_doc] [varchar](10) NOT NULL,
	[c100_chv_nfe] [varchar](44) NULL,
	[chv_nfe] [varchar](44) NULL,
	[c100_dt_doc] [date] NULL,
	[dt_doc] [date] NULL,
	[c100_dt_e_s] [date] NULL,
	[dt_e_s] [date] NOT NULL,
	[c100_tot_vl_doc] [decimal](20, 9) NULL,
	[tot_vl_doc] [decimal](20, 9) NULL,
	[c100_ind_pgto] [int] NULL,
	[ind_pgto] [int] NULL,
	[c100_tot_vl_desc] [decimal](20, 9) NULL,
	[tot_vl_desc] [decimal](20, 9) NULL,
	[c100_tot_vl_abat_nt] [decimal](20, 9) NULL,
	[tot_vl_abat_nt] [decimal](20, 9) NULL,
	[c100_tot_vl_merc] [decimal](20, 9) NULL,
	[tot_vl_merc] [decimal](20, 9) NULL,
	[c100_ind_frt] [int] NULL,
	[ind_frt] [int] NULL,
	[c100_tot_vl_frt] [decimal](20, 9) NULL,
	[tot_vl_frt] [decimal](20, 9) NULL,
	[c100_tot_vl_seg] [decimal](20, 9) NULL,
	[tot_vl_seg] [decimal](20, 9) NULL,
	[c100_tot_vl_out_da] [decimal](20, 9) NULL,
	[tot_vl_out_da] [decimal](20, 9) NULL,
	[c100_tot_vl_bc_icms] [decimal](20, 9) NULL,
	[tot_vl_bc_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_icms] [decimal](20, 9) NULL,
	[tot_vl_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_bc_icms_st] [decimal](20, 9) NULL,
	[tot_vl_bc_icms_st] [decimal](20, 9) NULL,
	[c100_tot_vl_icms_st] [decimal](20, 9) NULL,
	[tot_vl_icms_st] [decimal](20, 9) NULL,
	[c100_tot_vl_ipi] [decimal](20, 9) NULL,
	[tot_vl_ipi] [decimal](20, 9) NULL,
	[c100_tot_vl_pis] [decimal](20, 9) NULL,
	[tot_vl_pis] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins] [decimal](20, 9) NULL,
	[tot_vl_cofins] [decimal](20, 9) NULL,
	[c100_tot_vl_pis_st] [decimal](20, 9) NULL,
	[tot_vl_pis_st] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins_st] [decimal](20, 9) NULL,
	[tot_vl_cofins_st] [decimal](20, 9) NULL,
	[c170_num_item] [int] NULL,
	[num_item] [int] NULL,
	[c170_cod_item] [varchar](100) NULL,
	[cod_item] [varchar](100) NOT NULL,
	[c170_desc_item] [varchar](500) NULL,
	[desc_item] [varchar](500) NULL,
	[c170_qtd_original] [decimal](20, 9) NULL,
	[qtd_original] [decimal](20, 9) NULL,
	[c170_uni_original] [varchar](5) NULL,
	[uni_original] [varchar](5) NULL,
	[qtd_ajustada] [decimal](20, 9) NULL,
	[uni_ajustada] [varchar](5) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[uni_atual] [varchar](5) NULL,
	[c170_vl_item] [decimal](20, 9) NULL,
	[vl_item] [decimal](20, 9) NOT NULL,
	[c170_vl_desc] [decimal](20, 9) NULL,
	[vl_desc] [decimal](20, 9) NULL,
	[c170_ind_mov] [int] NULL,
	[ind_mov] [int] NULL,
	[c170_cst_icms] [varchar](3) NULL,
	[cst_icms] [varchar](3) NULL,
	[c170_cfop] [varchar](4) NULL,
	[cfop] [varchar](4) NULL,
	[desc_cfop] [varchar](500) NULL,
	[c170_cod_nat] [varchar](7) NULL,
	[cod_nat] [varchar](7) NULL,
	[c170_vl_bc_icms] [decimal](20, 9) NULL,
	[vl_bc_icms] [decimal](20, 9) NOT NULL,
	[c170_aliq_icms] [decimal](20, 9) NULL,
	[aliq_icms] [decimal](20, 9) NOT NULL,
	[c170_vl_icms] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NOT NULL,
	[c170_vl_bc_icms_st] [decimal](20, 9) NULL,
	[vl_bc_icms_st] [decimal](20, 9) NULL,
	[c170_aliq_st] [decimal](20, 9) NULL,
	[aliq_st] [decimal](20, 9) NULL,
	[c170_vl_icms_st] [decimal](20, 9) NULL,
	[vl_icms_st] [decimal](20, 9) NULL,
	[c170_ind_apur] [int] NULL,
	[ind_apur] [int] NULL,
	[c170_cst_ipi] [varchar](3) NULL,
	[cst_ipi] [varchar](3) NULL,
	[c170_vl_bc_ipi] [decimal](20, 9) NULL,
	[vl_bc_ipi] [decimal](20, 9) NOT NULL,
	[c170_aliq_ipi] [decimal](20, 9) NULL,
	[aliq_ipi] [decimal](20, 9) NOT NULL,
	[c170_vl_ipi] [decimal](20, 9) NULL,
	[vl_ipi] [decimal](20, 9) NOT NULL,
	[c170_cst_pis] [varchar](3) NULL,
	[cst_pis] [varchar](3) NULL,
	[c170_vl_bc_pis] [decimal](20, 9) NULL,
	[vl_bc_pis] [decimal](20, 9) NOT NULL,
	[c170_aliq_pis] [decimal](20, 9) NULL,
	[aliq_pis] [decimal](20, 9) NOT NULL,
	[c170_quant_bc_pis] [decimal](20, 9) NULL,
	[quant_bc_pis] [decimal](20, 9) NULL,
	[c170_vl_aliq_pis] [decimal](20, 9) NULL,
	[vl_aliq_pis] [decimal](20, 9) NULL,
	[c170_vl_pis] [decimal](20, 9) NULL,
	[vl_pis] [decimal](20, 9) NOT NULL,
	[c170_cst_cofins] [varchar](3) NULL,
	[cst_cofins] [varchar](3) NULL,
	[c170_vl_bc_cofins] [decimal](20, 9) NULL,
	[vl_bc_cofins] [decimal](20, 9) NOT NULL,
	[c170_aliq_cofins] [decimal](20, 9) NULL,
	[aliq_cofins] [decimal](20, 9) NOT NULL,
	[c170_quant_bc_cofins] [decimal](20, 9) NULL,
	[quant_bc_cofins] [decimal](20, 9) NULL,
	[c170_vl_aliq_cofins] [decimal](20, 9) NULL,
	[vl_aliq_cofins] [decimal](20, 9) NULL,
	[c170_vl_cofins] [decimal](20, 9) NULL,
	[vl_cofins] [decimal](20, 9) NOT NULL,
	[c170_cod_cta] [varchar](10) NULL,
	[cod_cta] [varchar](10) NULL,
	[c170_vl_abat_nt] [decimal](20, 9) NULL,
	[vl_abat_nt] [decimal](20, 9) NULL,
	[c110_txt_compl] [varchar](4000) NULL,
	[c180_cod_resp_ret] [int] NULL,
	[cod_resp_ret] [int] NULL,
	[c180_quant_conv] [decimal](20, 9) NULL,
	[quant_conv] [decimal](20, 9) NULL,
	[c180_unid_conv] [decimal](20, 9) NULL,
	[unid_conv] [decimal](20, 9) NULL,
	[c180_vl_unit_conv] [decimal](20, 9) NULL,
	[vl_unit_conv] [decimal](20, 9) NULL,
	[c180_vl_unit_icms_op_conv] [decimal](20, 9) NULL,
	[vl_unit_icms_op_conv] [decimal](20, 9) NULL,
	[cod_ncm] [varchar](10) NULL,
	[cod_enquadramentolegal] [varchar](4) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[perda_normal_ficha_5b] [varchar](3) NULL,
	[inf_compl] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
	[historico] [varchar](4000) NULL,
	[operacao_origem_item] [varchar](10) NULL,
	[id_arquivo_nfe] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[id_efd] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEntradaDevolucao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEntradaDevolucao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NOT NULL,
	[chv_nfe] [varchar](44) NULL,
	[num_doc] [varchar](10) NULL,
	[participante_cnpj] [varchar](14) NULL,
	[ser] [varchar](10) NULL,
	[dt_doc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEntradaImportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEntradaImportacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NOT NULL,
	[num_di] [varchar](20) NULL,
	[num_doc] [varchar](10) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[ser] [varchar](10) NULL,
	[cod_mod] [varchar](2) NULL,
	[chv_nfe] [varchar](44) NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](100) NOT NULL,
	[qtd_atual] [decimal](20, 9) NOT NULL,
	[cfop] [varchar](4) NULL,
	[cod_part] [varchar](60) NULL,
	[participante_nome] [varchar](100) NULL,
	[qtd_atual_importacao] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEstoque]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEstoque](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[planta] [varchar](4) NULL,
	[mvt] [varchar](50) NULL,
	[desc_mvt] [varchar](100) NULL,
	[tety] [varchar](2) NULL,
	[num_doc] [varchar](10) NULL,
	[item] [varchar](10) NULL,
	[cod_item] [varchar](100) NOT NULL,
	[desc_item] [varchar](500) NULL,
	[vendor] [varchar](8) NULL,
	[sloc] [varchar](4) NULL,
	[doc_header_text] [varchar](500) NULL,
	[user_name] [varchar](50) NULL,
	[cost_ctr] [varchar](10) NULL,
	[num_order_prod] [varchar](100) NULL,
	[num_po] [varchar](10) NULL,
	[item2] [varchar](10) NULL,
	[reference] [varchar](500) NULL,
	[wbs] [varchar](50) NULL,
	[dt_e_s] [date] NOT NULL,
	[qtd_original] [decimal](20, 9) NULL,
	[uni_original] [varchar](5) NULL,
	[qtd_ajustada] [decimal](20, 9) NULL,
	[uni_ajustada] [varchar](5) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[uni_atual] [varchar](5) NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[vl_perda_normal] [decimal](20, 9) NULL,
	[num_ordem_venda] [varchar](100) NULL,
	[num_diagrama_rede] [varchar](100) NULL,
	[num_pep] [varchar](100) NULL,
	[perda_normal_ficha_5b] [varchar](3) NULL,
	[imobilizado] [varchar](8) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[nf_chv_nfe] [varchar](44) NULL,
	[nf_dt_doc] [date] NULL,
	[nf_cnpj] [varchar](14) NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_num_item] [int] NULL,
	[cod_lancamento] [varchar](6) NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[historico] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
	[linha_frete] [int] NULL,
	[linha_entrada] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEstoqueControleDesindustr]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEstoqueControleDesindustr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NULL,
	[dt_e_s] [date] NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[qtd_remanescente] [decimal](20, 9) NULL,
	[id_estoque] [int] NOT NULL,
	[id_pai] [varchar](4000) NULL,
	[id_controle] [int] NULL,
	[id_parametro_estoque] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEstoqueControleEstorno]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEstoqueControleEstorno](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NULL,
	[dt_e_s] [date] NULL,
	[qtd_ajustada_atual] [decimal](20, 9) NULL,
	[qtd_remanescente] [decimal](20, 9) NULL,
	[id_estoque] [int] NOT NULL,
	[id_pai] [varchar](4000) NULL,
	[id_controle] [int] NULL,
	[id_parametro_estoque] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEstoqueParametroEstorno]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEstoqueParametroEstorno](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[mvt_original] [varchar](50) NOT NULL,
	[mvt_estorno] [varchar](50) NOT NULL,
	[mvt_texto_original] [varchar](100) NOT NULL,
	[mvt_texto_estorno] [varchar](100) NOT NULL,
	[upd_desindustrializacao] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseEstoqueParametroEstornoDetalhe]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseEstoqueParametroEstornoDetalhe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[ID_PARAMETRO_ESTOQUE] [int] NOT NULL,
	[coluna] [varchar](100) NOT NULL,
	[operador] [varchar](2) NOT NULL,
	[valor] [varchar](100) NULL,
	[condicao] [varchar](10) NULL,
	[ordem] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseFicha5C]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseFicha5C](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[cod_part] [varchar](60) NOT NULL,
	[nome] [varchar](100) NULL,
	[cod_pais] [varchar](5) NULL,
	[participante_cnpj] [varchar](14) NULL,
	[cpf] [varchar](11) NULL,
	[ie] [varchar](14) NULL,
	[ie_substituto] [varchar](14) NULL,
	[cod_mun] [varchar](7) NULL,
	[endereco] [varchar](100) NULL,
	[num] [varchar](10) NULL,
	[compl] [varchar](100) NULL,
	[bairro] [varchar](100) NULL,
	[cep] [varchar](8) NULL,
	[uf] [varchar](2) NULL,
	[telefone] [varchar](13) NULL,
	[dt_inicio] [date] NOT NULL,
	[dt_termino] [date] NULL,
	[id_cod_cnpj] [int] NULL,
	[analise_5c] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseFicha5D]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseFicha5D](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[ccgeral_codigoenquadramentolegal] [varchar](10) NOT NULL,
	[ccgeral_codigohipotesegeracao] [varchar](10) NOT NULL,
	[ccgeral_anexo] [varchar](10) NULL,
	[ccgeral_artigo] [varchar](10) NULL,
	[ccgeral_inciso] [varchar](10) NULL,
	[ccgeral_alinea] [varchar](10) NULL,
	[ccgeral_paragrafo] [varchar](10) NULL,
	[ccgeral_item] [varchar](10) NULL,
	[ccgeral_letra] [varchar](10) NULL,
	[ccgeral_observacoes] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseFicha5F]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseFicha5F](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[descricao] [varchar](500) NULL,
	[unidade_medida] [varchar](5) NULL,
	[cod_ncm] [varchar](10) NULL,
	[uso_consumo_ativo] [varchar](3) NULL,
	[cfop] [varchar](1000) NULL,
	[icms_st_aplicavel] [int] NULL,
	[dt_inicio] [date] NOT NULL,
	[dt_termino] [date] NULL,
	[id_cod_item] [int] NULL,
	[analise_5f] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseFicha5G]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseFicha5G](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item_final] [int] NOT NULL,
	[cod_item] [int] NOT NULL,
	[num_item] [int] NOT NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NOT NULL,
	[num_doc] [varchar](10) NOT NULL,
	[ficha] [varchar](2) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[qtd] [decimal](20, 9) NOT NULL,
	[mvt] [varchar](50) NOT NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[vl_custo] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseFrete]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseFrete](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_prefrete] [int] NULL,
	[considerar] [varchar](3) NOT NULL,
	[d100_ind_oper] [int] NULL,
	[d100_ind_emit] [int] NULL,
	[d100_cod_part] [varchar](60) NULL,
	[r0150_participante_nome] [varchar](100) NULL,
	[r0150_participante_cod_pais] [varchar](10) NULL,
	[r0150_participante_cnpj] [varchar](14) NULL,
	[r0150_participante_cpf] [varchar](14) NULL,
	[r0150_participante_ie] [varchar](15) NULL,
	[r0150_participante_cod_mun] [varchar](10) NULL,
	[r0150_participante_suframa] [varchar](500) NULL,
	[d100_cod_mod] [varchar](2) NULL,
	[d100_cod_sit] [varchar](2) NULL,
	[d100_ser] [varchar](10) NULL,
	[d100_sub] [varchar](10) NULL,
	[d100_num_doc] [varchar](10) NULL,
	[d100_chv_cte] [varchar](44) NULL,
	[d100_dt_doc] [date] NULL,
	[d100_dt_a_p] [date] NOT NULL,
	[d100_tp_cte] [varchar](1) NULL,
	[d100_chv_cte_ref] [varchar](44) NULL,
	[d100_vl_doc] [decimal](20, 9) NULL,
	[d100_vl_desc] [decimal](20, 9) NULL,
	[d100_ind_frt] [int] NULL,
	[d100_vl_serv] [decimal](20, 9) NULL,
	[d100_vl_bc_icms] [decimal](20, 9) NULL,
	[d100_vl_icms] [decimal](20, 9) NULL,
	[d100_vl_nt] [decimal](20, 9) NULL,
	[d100_cod_nf] [varchar](6) NULL,
	[d100_cod_cta] [varchar](10) NULL,
	[d100_cod_mun_orig] [int] NULL,
	[d100_cod_mun_dest] [int] NULL,
	[d190_cfop] [varchar](1000) NULL,
	[id_efd] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[nf_chv] [varchar](44) NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_ser] [varchar](10) NULL,
	[nf_cod_mod] [varchar](2) NULL,
	[nf_dt_doc] [date] NULL,
	[nf_cnpj] [varchar](14) NULL,
	[nf_ind_oper] [int] NULL,
	[nf_cod_item] [varchar](100) NULL,
	[nf_num_item] [int] NULL,
	[nf_num_order_prod] [varchar](100) NULL,
	[nf_cfop] [varchar](4) NULL,
	[nf_cst] [varchar](3) NULL,
	[nf_qtd_atual] [decimal](20, 9) NULL,
	[nf_uni_atual] [varchar](5) NULL,
	[nf_vl_item] [decimal](20, 9) NULL,
	[nf_vl_bc_icms] [decimal](20, 9) NULL,
	[nf_aliq_icms] [decimal](20, 9) NULL,
	[nf_vl_icms] [decimal](20, 9) NULL,
	[nf_cod_lote] [varchar](20) NOT NULL,
	[nf_cod_lancamento] [varchar](6) NULL,
	[nf_cod_enquadramentolegal] [varchar](4) NULL,
	[nf_cod_item_produzidoemterc] [varchar](100) NULL,
	[nf_id] [int] NULL,
	[nf_origem] [varchar](100) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[vl_rateio_percentual_frete] [decimal](20, 2) NULL,
	[vl_icms_cred] [decimal](20, 9) NULL,
	[historico] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseIndustrializacaoEncomenda]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseIndustrializacaoEncomenda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_preindustr] [int] NULL,
	[considerar] [varchar](3) NOT NULL,
	[ind_id] [int] NOT NULL,
	[ind_origem] [varchar](100) NOT NULL,
	[ind_num_order_prod] [varchar](100) NOT NULL,
	[ind_itca] [varchar](4) NULL,
	[ind_cod_item] [varchar](100) NOT NULL,
	[ind_cod_lote] [varchar](20) NOT NULL,
	[ind_num_doc] [varchar](10) NOT NULL,
	[ind_num_item] [int] NOT NULL,
	[ind_qtd_atual] [decimal](20, 9) NULL,
	[ind_dt_e_s] [date] NOT NULL,
	[ind_cod_lancamento] [varchar](6) NULL,
	[nf_id] [int] NULL,
	[nf_origem] [varchar](100) NULL,
	[nf_considerar] [varchar](3) NULL,
	[nf_chve] [varchar](44) NULL,
	[nf_num_item] [int] NULL,
	[nf_cfop] [varchar](4) NULL,
	[nf_ind_oper] [varchar](1) NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_ser] [varchar](10) NULL,
	[nf_cod_part] [varchar](60) NULL,
	[nf_vl_item] [decimal](20, 9) NULL,
	[nf_vl_icms] [decimal](20, 9) NULL,
	[nf_vl_ipi] [decimal](20, 9) NULL,
	[nf_vl_pis] [decimal](20, 9) NULL,
	[nf_vl_cofins] [decimal](20, 9) NULL,
	[nf_cod_item_anterior] [varchar](100) NULL,
	[perce_rat_utilizacao] [decimal](20, 2) NULL,
	[qtd_rateio] [decimal](20, 9) NULL,
	[vl_item] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[vl_ipi] [decimal](20, 9) NULL,
	[vl_pis] [decimal](20, 9) NULL,
	[vl_cofins] [decimal](20, 9) NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[qtd_industr_esperado_insumo] [decimal](20, 9) NULL,
	[historico] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseLancamentoCalculoMedia]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseLancamentoCalculoMedia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_lancamento] [varchar](6) NOT NULL,
	[ficha] [varchar](2) NOT NULL,
	[cod_lancamento_entrada] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseLancamentoControle]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseLancamentoControle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_lancamento] [varchar](6) NOT NULL,
	[ficha] [varchar](2) NOT NULL,
	[tipo] [varchar](100) NOT NULL,
	[vl_negativo_ficha] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseLogImportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseLogImportacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[campos] [varchar](1000) NULL,
	[tabela] [varchar](50) NULL,
	[timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BasePerdaSobra]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BasePerdaSobra](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_base] [int] NOT NULL,
	[origem] [varchar](100) NOT NULL,
	[dt_e_s] [datetime] NOT NULL,
	[num_doc] [varchar](10) NOT NULL,
	[ser] [varchar](10) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[cod_item] [varchar](100) NOT NULL,
	[qtd] [decimal](20, 9) NOT NULL,
	[historico] [varchar](4000) NULL,
	[cod_item_ficha_5b] [varchar](100) NULL,
	[qtd_ficha_5b] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseProducao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseProducao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[dt_e_s] [date] NULL,
	[cod_item] [varchar](100) NULL,
	[num_item] [int] NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NOT NULL,
	[num_doc] [varchar](10) NULL,
	[qtd_industr_esperado] [decimal](20, 9) NULL,
	[ficha] [varchar](2) NOT NULL,
	[perce_rateio] [decimal](20, 3) NULL,
	[preco_medio_unitario] [decimal](20, 9) NULL,
	[negativo_ficha] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseRateio]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseRateio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[num_order_prod] [varchar](100) NOT NULL,
	[num_doc] [varchar](10) NOT NULL,
	[num_item] [int] NOT NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[valor_custo_entrada_2A] [decimal](20, 9) NULL,
	[perce_rateio] [decimal](20, 9) NULL,
	[valor_rateio] [decimal](20, 9) NULL,
	[valor_rateio_maximo] [decimal](20, 9) NULL,
	[criterio] [varchar](100) NULL,
	[valor_rateio_final] [decimal](20, 9) NULL,
	[perce_rateio_final] [decimal](20, 9) NULL,
	[cod_lancamento] [varchar](6) NOT NULL,
	[ficha] [varchar](2) NULL,
	[perce_rateio_calculado] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseRomaneio]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseRomaneio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[num_order_prod] [varchar](100) NOT NULL,
	[num_doc] [varchar](10) NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[wbs] [varchar](30) NULL,
	[delivery] [varchar](10) NULL,
	[dt_e_s] [date] NOT NULL,
	[desc_item] [varchar](500) NULL,
	[item] [varchar](10) NULL,
	[itca] [varchar](4) NOT NULL,
	[order_quantity] [decimal](20, 9) NULL,
	[uni_order_quantity] [varchar](5) NULL,
	[delivery_quantity] [decimal](20, 9) NULL,
	[uni_delivery_quantity] [varchar](5) NULL,
	[item2] [varchar](10) NULL,
	[qtd_original] [decimal](20, 9) NULL,
	[uni_original] [varchar](5) NULL,
	[qtd_ajustada] [decimal](20, 9) NULL,
	[uni_ajustada] [varchar](5) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[uni_atual] [varchar](5) NULL,
	[bill_doc] [varchar](9) NULL,
	[pick_date] [date] NULL,
	[reference] [varchar](100) NULL,
	[ser_reference] [varchar](10) NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_num_item] [int] NULL,
	[nf_num_item_2] [int] NULL,
	[nf_dt_doc] [date] NULL,
	[nf_chv_nfe] [varchar](44) NULL,
	[nf_cnpj] [varchar](14) NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[vl_perda_normal] [decimal](20, 9) NULL,
	[perda_normal_ficha_5b] [varchar](3) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[negativo_ficha] [int] NULL,
	[obs] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaida](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[c100_ind_oper] [int] NULL,
	[ind_oper] [int] NULL,
	[c100_ind_emit] [int] NULL,
	[ind_emit] [int] NULL,
	[c100_cod_part] [varchar](60) NULL,
	[cod_part] [varchar](60) NULL,
	[r0150_participante_nome] [varchar](100) NULL,
	[participante_nome] [varchar](100) NULL,
	[r0150_participante_cod_pais] [varchar](10) NULL,
	[participante_cod_pais] [varchar](10) NULL,
	[r0150_participante_cnpj] [varchar](14) NULL,
	[participante_cnpj] [varchar](14) NULL,
	[r0150_participante_cpf] [varchar](14) NULL,
	[participante_cpf] [varchar](14) NULL,
	[r0150_participante_ie] [varchar](15) NULL,
	[participante_ie] [varchar](15) NULL,
	[r0150_participante_cod_mun] [varchar](10) NULL,
	[participante_cod_mun] [varchar](10) NULL,
	[r0150_participante_suframa] [varchar](500) NULL,
	[participante_suframa] [varchar](500) NULL,
	[c100_cod_mod] [varchar](2) NULL,
	[cod_mod] [varchar](2) NULL,
	[c100_cod_sit] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[c100_ser] [varchar](10) NULL,
	[ser] [varchar](10) NULL,
	[c100_num_doc] [varchar](10) NULL,
	[num_doc] [varchar](10) NOT NULL,
	[c100_chv_nfe] [varchar](44) NULL,
	[chv_nfe] [varchar](44) NULL,
	[c100_dt_doc] [date] NULL,
	[dt_doc] [date] NULL,
	[c100_dt_e_s] [date] NULL,
	[dt_e_s] [date] NOT NULL,
	[c100_tot_vl_doc] [decimal](20, 9) NULL,
	[tot_vl_doc] [decimal](20, 9) NULL,
	[c100_ind_pgto] [int] NULL,
	[ind_pgto] [int] NULL,
	[c100_tot_vl_desc] [decimal](20, 9) NULL,
	[tot_vl_desc] [decimal](20, 9) NULL,
	[c100_tot_vl_abat_nt] [decimal](20, 9) NULL,
	[tot_vl_abat_nt] [decimal](20, 9) NULL,
	[c100_tot_vl_merc] [decimal](20, 9) NULL,
	[tot_vl_merc] [decimal](20, 9) NULL,
	[c100_ind_frt] [int] NULL,
	[ind_frt] [int] NULL,
	[c100_tot_vl_frt] [decimal](20, 9) NULL,
	[tot_vl_frt] [decimal](20, 9) NULL,
	[c100_tot_vl_seg] [decimal](20, 9) NULL,
	[tot_vl_seg] [decimal](20, 9) NULL,
	[c100_tot_vl_out_da] [decimal](20, 9) NULL,
	[tot_vl_out_da] [decimal](20, 9) NULL,
	[c100_tot_vl_bc_icms] [decimal](20, 9) NULL,
	[tot_vl_bc_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_icms] [decimal](20, 9) NULL,
	[tot_vl_icms] [decimal](20, 9) NULL,
	[c100_tot_vl_bc_icms_st] [decimal](20, 9) NULL,
	[tot_vl_bc_icms_st] [decimal](20, 9) NULL,
	[c100_tot_vl_icms_st] [decimal](20, 9) NULL,
	[tot_vl_icms_st] [decimal](20, 9) NULL,
	[c100_tot_vl_ipi] [decimal](20, 9) NULL,
	[tot_vl_ipi] [decimal](20, 9) NULL,
	[c100_tot_vl_pis] [decimal](20, 9) NULL,
	[tot_vl_pis] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins] [decimal](20, 9) NULL,
	[tot_vl_cofins] [decimal](20, 9) NULL,
	[c100_tot_vl_pis_st] [decimal](20, 9) NULL,
	[tot_vl_pis_st] [decimal](20, 9) NULL,
	[c100_tot_vl_cofins_st] [decimal](20, 9) NULL,
	[tot_vl_cofins_st] [decimal](20, 9) NULL,
	[c170_num_item] [int] NULL,
	[num_item] [int] NOT NULL,
	[c170_cod_item] [varchar](100) NULL,
	[cod_item] [varchar](100) NOT NULL,
	[c170_desc_item] [varchar](500) NULL,
	[desc_item] [varchar](500) NULL,
	[c170_qtd_original] [decimal](20, 9) NULL,
	[qtd_original] [decimal](20, 9) NULL,
	[c170_uni_original] [varchar](5) NULL,
	[uni_original] [varchar](5) NULL,
	[qtd_ajustada] [decimal](20, 9) NULL,
	[uni_ajustada] [varchar](5) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[uni_atual] [varchar](5) NULL,
	[c170_vl_item] [decimal](20, 9) NULL,
	[vl_item] [decimal](20, 9) NOT NULL,
	[c170_vl_desc] [decimal](20, 9) NULL,
	[vl_desc] [decimal](20, 9) NULL,
	[c170_ind_mov] [int] NULL,
	[ind_mov] [int] NULL,
	[c170_cst_icms] [varchar](3) NULL,
	[cst_icms] [varchar](3) NULL,
	[c170_cfop] [varchar](4) NULL,
	[cfop] [varchar](4) NULL,
	[desc_cfop] [varchar](500) NULL,
	[c170_cod_nat] [varchar](7) NULL,
	[cod_nat] [varchar](7) NULL,
	[c170_vl_bc_icms] [decimal](20, 9) NULL,
	[vl_bc_icms] [decimal](20, 9) NOT NULL,
	[c170_aliq_icms] [decimal](20, 9) NULL,
	[aliq_icms] [decimal](20, 9) NOT NULL,
	[c170_vl_icms] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NOT NULL,
	[c170_vl_bc_icms_st] [decimal](20, 9) NULL,
	[vl_bc_icms_st] [decimal](20, 9) NULL,
	[c170_aliq_st] [decimal](20, 9) NULL,
	[aliq_st] [decimal](20, 9) NULL,
	[c170_vl_icms_st] [decimal](20, 9) NULL,
	[vl_icms_st] [decimal](20, 9) NULL,
	[c170_ind_apur] [int] NULL,
	[ind_apur] [int] NULL,
	[c170_cst_ipi] [varchar](3) NULL,
	[cst_ipi] [varchar](3) NULL,
	[c170_vl_bc_ipi] [decimal](20, 9) NULL,
	[vl_bc_ipi] [decimal](20, 9) NULL,
	[c170_aliq_ipi] [decimal](20, 9) NULL,
	[aliq_ipi] [decimal](20, 9) NULL,
	[c170_vl_ipi] [decimal](20, 9) NULL,
	[vl_ipi] [decimal](20, 9) NULL,
	[c170_cst_pis] [varchar](3) NULL,
	[cst_pis] [varchar](3) NULL,
	[c170_vl_bc_pis] [decimal](20, 9) NULL,
	[vl_bc_pis] [decimal](20, 9) NULL,
	[c170_aliq_pis] [decimal](20, 9) NULL,
	[aliq_pis] [decimal](20, 9) NULL,
	[c170_quant_bc_pis] [decimal](20, 9) NULL,
	[quant_bc_pis] [decimal](20, 9) NULL,
	[c170_vl_aliq_pis] [decimal](20, 9) NULL,
	[vl_aliq_pis] [decimal](20, 9) NULL,
	[c170_vl_pis] [decimal](20, 9) NULL,
	[vl_pis] [decimal](20, 9) NULL,
	[c170_cst_cofins] [varchar](3) NULL,
	[cst_cofins] [varchar](3) NULL,
	[c170_vl_bc_cofins] [decimal](20, 9) NULL,
	[vl_bc_cofins] [decimal](20, 9) NULL,
	[c170_aliq_cofins] [decimal](20, 9) NULL,
	[aliq_cofins] [decimal](20, 9) NULL,
	[c170_quant_bc_cofins] [decimal](20, 9) NULL,
	[quant_bc_cofins] [decimal](20, 9) NULL,
	[c170_vl_aliq_cofins] [decimal](20, 9) NULL,
	[vl_aliq_cofins] [decimal](20, 9) NULL,
	[c170_vl_cofins] [decimal](20, 9) NULL,
	[vl_cofins] [decimal](20, 9) NULL,
	[c170_cod_cta] [varchar](9) NULL,
	[cod_cta] [varchar](9) NULL,
	[c170_vl_abat_nt] [decimal](20, 9) NULL,
	[vl_abat_nt] [decimal](20, 9) NULL,
	[c110_txt_compl] [varchar](4000) NULL,
	[cod_ncm] [varchar](10) NULL,
	[cod_enquadramentolegal] [varchar](4) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[vl_custo_manual] [decimal](20, 9) NULL,
	[vl_icms_manual] [decimal](20, 9) NULL,
	[perce_creditoourtogado] [decimal](20, 2) NULL,
	[vl_creditooutorgado] [decimal](20, 9) NULL,
	[credito_acumulado] [varchar](500) NULL,
	[comprovacaooperacao] [varchar](3) NULL,
	[vl_despesas_operacionais] [decimal](20, 9) NULL,
	[perda_normal_ficha_5b] [varchar](3) NULL,
	[vl_credito_outorgado_ressarcimento] [decimal](20, 9) NULL,
	[inf_compl] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
	[historico] [varchar](4000) NULL,
	[operacao_origem_item] [varchar](10) NULL,
	[id_arquivo_nfe] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[id_efd] [int] NULL,
	[id_efd_item] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaidaControleRessarcimentoICMS]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaidaControleRessarcimentoICMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item] [varchar](100) NULL,
	[dt_e_s] [date] NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[qtd_remanescente] [decimal](20, 9) NULL,
	[id_saida] [int] NULL,
	[id_entrada] [int] NULL,
	[id_pai] [varchar](4000) NULL,
	[considerar] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaidaDevolucao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaidaDevolucao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NOT NULL,
	[chv_nfe] [varchar](44) NULL,
	[num_doc] [varchar](10) NULL,
	[participante_cnpj] [varchar](14) NULL,
	[ser] [varchar](10) NULL,
	[dt_doc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaidaExportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaidaExportacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NOT NULL,
	[num_declaracaoparadespachoexportacao] [varchar](20) NOT NULL,
	[num_documentofiscalexportador] [varchar](15) NULL,
	[ser_documentofiscalexportador] [varchar](12) NULL,
	[dt_documentofiscalexportador] [date] NULL,
	[num_doc] [varchar](10) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[ser] [varchar](10) NULL,
	[cod_mod] [varchar](2) NULL,
	[chv_nfe] [varchar](44) NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](100) NOT NULL,
	[qtd_atual] [decimal](20, 9) NOT NULL,
	[cfop] [varchar](4) NULL,
	[cod_part] [varchar](60) NULL,
	[participante_nome] [varchar](100) NULL,
	[qtd_atual_exportacao] [decimal](20, 9) NULL,
	[nat_exp] [int] NULL,
	[tipo_exportacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaidaRessarcimentoICMS]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaidaRessarcimentoICMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_saida] [int] NULL,
	[id_entrada] [int] NULL,
	[num_doc] [varchar](10) NULL,
	[dt_e_s] [date] NULL,
	[ser] [varchar](10) NULL,
	[cod_mod] [varchar](2) NULL,
	[chv_nfe] [varchar](44) NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](100) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[cfop] [varchar](4) NULL,
	[cod_part] [varchar](60) NULL,
	[participante_nome] [varchar](100) NULL,
	[cod_resp_ret] [varchar](1) NULL,
	[cod_mot_res] [varchar](1) NULL,
	[cod_mod_ult_e] [varchar](2) NULL,
	[ser_ult_e] [varchar](3) NULL,
	[ser_nfe_ret] [varchar](3) NULL,
	[num_doc_ult_e] [varchar](10) NULL,
	[num_nfe_ret] [varchar](9) NULL,
	[chave_nfe_ult_e] [varchar](44) NULL,
	[chave_nfe_ret] [varchar](44) NULL,
	[dt_ult_e] [date] NULL,
	[cod_part_ult_e] [varchar](60) NULL,
	[cod_part_nfe_ret] [varchar](60) NULL,
	[num_item_ult_e] [int] NULL,
	[item_nfe_ret] [int] NULL,
	[quant_ult_e] [decimal](20, 9) NULL,
	[vl_unit_ult_e] [decimal](20, 9) NULL,
	[vl_unit_bc_icms_ult_e] [decimal](20, 9) NULL,
	[vl_unit_limite_bc_icms_ult_e] [decimal](20, 9) NULL,
	[aliq_icms_ult_e] [decimal](20, 9) NULL,
	[vl_unit_icms_ult_e] [decimal](20, 9) NULL,
	[ult_e] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseSaldoInicial]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseSaldoInicial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[dt_e_s] [date] NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[blocoh_qtd] [decimal](20, 9) NULL,
	[blocoh_uni] [varchar](5) NULL,
	[blocoh_qtd_conv] [decimal](20, 9) NULL,
	[blocoh_uni_conv] [varchar](5) NULL,
	[blocoh_vl_custo] [decimal](20, 9) NULL,
	[blocoh_vl_icms] [decimal](20, 9) NULL,
	[erp_qtd] [decimal](20, 9) NULL,
	[erp_uni] [varchar](5) NULL,
	[erp_qtd_conv] [decimal](20, 9) NULL,
	[erp_uni_conv] [varchar](5) NULL,
	[arv_vl_custo] [decimal](20, 9) NULL,
	[arv_vl_icms] [decimal](20, 9) NULL,
	[qtd] [decimal](20, 9) NOT NULL,
	[uni] [varchar](5) NULL,
	[vl_custo] [decimal](20, 9) NOT NULL,
	[vl_icms] [decimal](20, 9) NOT NULL,
	[base_importada] [varchar](1) NOT NULL,
	[cod_item_anterior] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NOT NULL,
	[num_item] [int] NOT NULL,
	[num_doc] [varchar](10) NOT NULL,
	[ficha] [varchar](2) NOT NULL,
	[cod_lancamento] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseUnidadeMedida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseUnidadeMedida](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_cod_item] [int] NOT NULL,
	[cod_item] [varchar](100) NOT NULL,
	[qtd_original] [decimal](20, 9) NULL,
	[unidade_medida_original] [varchar](5) NOT NULL,
	[qtd_padrao] [decimal](20, 9) NULL,
	[unidade_medida_padrao] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_BaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_BaseVinculo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_previnculo] [int] NULL,
	[considerar] [varchar](3) NOT NULL,
	[dev_id] [int] NULL,
	[dev_origem] [varchar](100) NOT NULL,
	[dev_num_doc] [varchar](10) NOT NULL,
	[dev_cnpj] [varchar](14) NULL,
	[dev_chv_nfe] [varchar](44) NULL,
	[dev_dt_e_s] [date] NULL,
	[dev_dt_doc] [date] NULL,
	[dev_vl_item] [decimal](20, 9) NULL,
	[dev_num_item] [int] NOT NULL,
	[dev_cod_item] [varchar](100) NOT NULL,
	[dev_cod_lote] [varchar](20) NOT NULL,
	[dev_num_order_prod] [varchar](100) NOT NULL,
	[dev_desc_item] [varchar](500) NULL,
	[dev_qtd_atual] [decimal](20, 9) NULL,
	[dev_uni_atual] [varchar](5) NULL,
	[dev_cfop] [varchar](4) NULL,
	[dev_desc_cfop] [varchar](500) NULL,
	[dev_mvt] [varchar](50) NULL,
	[dev_desc_mvt] [varchar](100) NULL,
	[dev_itca] [varchar](4) NULL,
	[dev_cod_lancamento] [varchar](6) NULL,
	[dev_cod_sit] [varchar](50) NULL,
	[dev_icms_unitario] [decimal](20, 9) NULL,
	[ori_id] [int] NULL,
	[ori_origem] [varchar](100) NULL,
	[ori_num_doc] [varchar](10) NOT NULL,
	[ori_cnpj] [varchar](14) NULL,
	[ori_chv_nfe] [varchar](44) NULL,
	[ori_dt_e_s] [date] NULL,
	[ori_dt_doc] [date] NULL,
	[ori_vl_item] [decimal](20, 9) NULL,
	[ori_num_item] [int] NOT NULL,
	[ori_cod_item] [varchar](100) NULL,
	[ori_cod_lote] [varchar](20) NOT NULL,
	[ori_num_order_prod] [varchar](100) NOT NULL,
	[ori_ser] [varchar](10) NULL,
	[ori_cod_part] [varchar](60) NULL,
	[ori_ind_oper] [int] NULL,
	[ori_desc_item] [varchar](500) NULL,
	[ori_qtd_atual] [decimal](20, 9) NULL,
	[ori_uni_atual] [varchar](5) NULL,
	[ori_cfop] [varchar](4) NULL,
	[ori_desc_cfop] [varchar](500) NULL,
	[ori_mvt] [varchar](50) NULL,
	[ori_desc_mvt] [varchar](100) NULL,
	[ori_itca] [varchar](4) NULL,
	[ori_cod_enquadramentolegal] [varchar](4) NULL,
	[ori_cod_lancamento] [varchar](6) NULL,
	[ori_cod_sit] [varchar](50) NULL,
	[ori_icms_unitario] [decimal](20, 9) NULL,
	[qtd_devolvida] [decimal](20, 9) NULL,
	[negativo_ficha] [int] NULL,
	[perce_complementar] [decimal](20, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_DocumentosFiscaisICMS]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_DocumentosFiscaisICMS](
	[cvIdDocumentosFiscaisICMS] [int] IDENTITY(1,1) NOT NULL,
	[ccCodigoChave] [varchar](3) NULL,
	[ccCodigo] [varchar](2) NULL,
	[ccDescricao] [varchar](100) NULL,
	[ccModelo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cvIdDocumentosFiscaisICMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0000_AberturaIdentificacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0000_AberturaIdentificacao](
	[cvIDAberturaIdentificacao] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_VER] [varchar](2) NULL,
	[ccCOD_FIN] [varchar](2) NULL,
	[cdPERIODO] [datetime] NULL,
	[ccNOME] [varchar](255) NULL,
	[ccCNPJ] [varchar](14) NULL,
	[ccIE] [varchar](50) NULL,
	[ccCNAE] [varchar](7) NULL,
	[ccCOD_MUN] [varchar](7) NULL,
	[ccOP_CRD_OUT] [varchar](1) NULL,
	[ccIE_INTIMA] [varchar](12) NULL,
	[ccLADCA] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDAberturaIdentificacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0001_AberturaBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0001_AberturaBloco](
	[cvIDAberturaBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccIND_MOV] [varchar](1) NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDAberturaBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0150_CadastroParticipantes]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0150_CadastroParticipantes](
	[cvIDCadastroParticipantes] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_PART] [varchar](1000) NULL,
	[ccNOME] [varchar](255) NULL,
	[ccCOD_PAIS] [varchar](5) NULL,
	[ccCNPJ] [varchar](14) NULL,
	[ccIE] [varchar](1000) NULL,
	[ccUF] [varchar](2) NULL,
	[ccCEP] [varchar](8) NULL,
	[ccEND] [varchar](1000) NULL,
	[ccNUM] [varchar](1000) NULL,
	[ccCOMPL] [varchar](1000) NULL,
	[ccBAIRRO] [varchar](1000) NULL,
	[ccCOD_MUN] [varchar](7) NULL,
	[ccFONE] [varchar](1000) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDCadastroParticipantes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0151_IEContribuinteSubstituto]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0151_IEContribuinteSubstituto](
	[cvIDContribuinteSubstituto] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccIE_SUBS] [varchar](50) NULL,
	[cvIDCadastroParticipantes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDContribuinteSubstituto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0200_IdentificacaoItem]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0200_IdentificacaoItem](
	[cvIDIdentificacaoItem] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[ccDESCR_ITEM] [varchar](8000) NULL,
	[ccUNI] [varchar](50) NULL,
	[ccCOD_GEN] [varchar](2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDIdentificacaoItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0205_CodigoAnteriorItem]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0205_CodigoAnteriorItem](
	[cvIDCodigoAnteriorItem] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ANT_ITEM] [varchar](50) NULL,
	[ccDESCR_ANT_ITEM] [varchar](255) NULL,
	[cdPE_INI] [datetime] NULL,
	[cdPE_FIM] [datetime] NULL,
	[cvIDIdentificacaoItem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDCodigoAnteriorItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0300_EnquadramentoLegal]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0300_EnquadramentoLegal](
	[cvIDEnquadramentoLegal] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_LEGAL] [varchar](4) NULL,
	[ccDESC] [varchar](1000) NULL,
	[ccANEX] [varchar](50) NULL,
	[ccART] [varchar](50) NULL,
	[ccINC] [varchar](50) NULL,
	[ccALIN] [varchar](50) NULL,
	[ccPRG] [varchar](50) NULL,
	[ccITM] [varchar](50) NULL,
	[ccLTR] [varchar](50) NULL,
	[ccOBS] [varchar](500) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDEnquadramentoLegal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0400_IdentificacaoDocumento]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0400_IdentificacaoDocumento](
	[cvIDIdentificacaoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_CHV] [varchar](3) NULL,
	[ccDESCR_DOC_INT] [varchar](255) NULL,
	[ccCOD_DOC_INT] [varchar](255) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDIdentificacaoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_0990_EncerramentoBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_0990_EncerramentoBloco](
	[cvIDEncerramentoBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvQTD_LIN_0] [int] NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDEncerramentoBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5001_AberturaBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5001_AberturaBloco](
	[cvIDAberturaBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccIND_MOV] [varchar](1) NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDAberturaBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5010_AberturaFicha1A]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5010_AberturaFicha1A](
	[cvIdAberturaFicha1A] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT_INI] [numeric](26, 9) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvQUANT_FIM] [numeric](26, 9) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha1A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5015_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5015_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](250) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccNUM_DI] [varchar](50) NULL,
	[ccCOD_PART] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM_OUTRA_TAB] [varchar](50) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha1A] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5020_IPITributos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5020_IPITributos](
	[cvIDIPITributos] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVAL_IPI] [numeric](18, 2) NULL,
	[cvVAL_TRIB] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDIPITributos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5060_AberturaFicha1B]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5060_AberturaFicha1B](
	[cvIdAberturaFicha1B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha1B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5065_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5065_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](20) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha1B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5070_IPITributos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5070_IPITributos](
	[cvIDIPITributos] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVAL_IPI] [numeric](26, 9) NULL,
	[cvVAL_TRIB] [numeric](26, 9) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDIPITributos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5080_AberturaFicha1C]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5080_AberturaFicha1C](
	[cvIdAberturaFicha1C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ENERGIA] [varchar](255) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha1C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5085_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5085_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](18, 2) NULL,
	[cvCUST_ENER] [numeric](18, 2) NULL,
	[cvVL_ICMS] [numeric](18, 2) NULL,
	[cvPERC_RATEIO] [numeric](18, 2) NULL,
	[cvIdAberturaFicha1C] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5090_OutrosTributos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5090_OutrosTributos](
	[cvIDOutrosTributos] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVAL_TRIB] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOutrosTributos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5100_AberturaFicha1D]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5100_AberturaFicha1D](
	[cvIdAberturaFicha1D] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_SERV] [varchar](255) NULL,
	[cvCUSTO_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha1D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5105_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5105_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](20) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[cvCUST_SERV] [numeric](18, 2) NULL,
	[cvVAL_TRIB] [numeric](18, 2) NULL,
	[cvVL_ICMS] [numeric](18, 2) NULL,
	[cvIdAberturaFicha1D] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5110_AberturaFicha1E]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5110_AberturaFicha1E](
	[cvIdAberturaFicha1E] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_SERV] [varchar](255) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha1E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5115_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5115_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_REMET] [varchar](255) NULL,
	[ccCOD_DEST] [varchar](255) NULL,
	[ccUF_INICIO] [varchar](2) NULL,
	[ccUF_DESTINO] [varchar](2) NULL,
	[ccCOD_TOMAD] [varchar](20) NULL,
	[cvALIQUOTA] [numeric](18, 2) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[cvVLR_CUSTO] [numeric](18, 2) NULL,
	[cvVLR_ICMS] [numeric](18, 2) NULL,
	[cvIdAberturaFicha1E] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5150_AberturaFicha2A]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5150_AberturaFicha2A](
	[cvIdAberturaFicha2A] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvQUANT_PER] [numeric](26, 9) NULL,
	[cvCUST_UNIT] [numeric](26, 9) NULL,
	[cvICMS_UNIT] [numeric](26, 9) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5155_ApuracaoCusto]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5155_ApuracaoCusto](
	[cvIDApuracaoCusto] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_INS] [varchar](100) NULL,
	[cvQUANT_INS] [numeric](26, 9) NULL,
	[cvCUST_UNIT] [numeric](26, 9) NULL,
	[cvICMS_UNIT] [numeric](26, 9) NULL,
	[cvPERD_NORM] [numeric](26, 9) NULL,
	[cvGANHO_NORM] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2A] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDApuracaoCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5160_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5160_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](250) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_ITEM] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2A] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5165_AberturaFicha2B]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5165_AberturaFicha2B](
	[cvIdAberturaFicha2B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvQUANT_PER] [decimal](26, 9) NULL,
	[cvCUST_UNIT] [decimal](26, 9) NULL,
	[cvICMS_UNIT] [decimal](26, 9) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5170_ApuracaoCusto]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5170_ApuracaoCusto](
	[cvIDApuracaoCusto] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_INS] [varchar](100) NULL,
	[cvQUANT_INS] [decimal](26, 9) NULL,
	[cvCUST_UNIT] [decimal](26, 9) NULL,
	[cvICMS_UNIT] [decimal](26, 9) NULL,
	[cvPERD_NORM] [decimal](26, 9) NULL,
	[cvGANHO_NORM] [decimal](26, 9) NULL,
	[cvIdAberturaFicha2B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDApuracaoCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5175_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5175_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_PART] [varchar](20) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [decimal](26, 9) NULL,
	[cvCUST_ITEM] [decimal](26, 9) NULL,
	[cvVL_ICMS] [decimal](26, 9) NULL,
	[cvIdAberturaFicha2B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5180_AberturaFicha2C]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5180_AberturaFicha2C](
	[cvIdAberturaFicha2C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5185_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5185_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_ITEM] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2C] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5190_AberturaFicha2D]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5190_AberturaFicha2D](
	[cvIdAberturaFicha2D] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_SERV] [varchar](255) NULL,
	[cvCUSTO_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5195_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5195_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](20) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](18, 2) NULL,
	[cvVLR_CUSTO] [numeric](18, 2) NULL,
	[cvVLR_ICMS] [numeric](18, 2) NULL,
	[cvIdAberturaFicha2D] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5210_AberturaFicha2E]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5210_AberturaFicha2E](
	[cvIdAberturaFicha2E] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5215_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5215_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvPERC_RAT] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2E] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5230_AberturaFicha2F]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5230_AberturaFicha2F](
	[cvIdAberturaFicha2F] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_INSUMO_CONJ] [varchar](255) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2F] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5235_ApuracaoAlocacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5235_ApuracaoAlocacao](
	[cvIDApuracaoAlocacao] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_COPROD] [varchar](20) NULL,
	[cvQUANT_COPROD] [numeric](18, 2) NULL,
	[cvPRECO_MEDIO] [numeric](18, 2) NULL,
	[cvVALOR_SAIDA] [numeric](18, 2) NULL,
	[cvPERC_ATRIB] [numeric](18, 2) NULL,
	[cvIdAberturaFicha2F] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDApuracaoAlocacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5240_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5240_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC_INT] [varchar](3) NULL,
	[ccSER_INT] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](18, 2) NULL,
	[cvCUSTO] [numeric](18, 2) NULL,
	[cvVL_ICMS] [numeric](18, 2) NULL,
	[cvIdAberturaFicha2F] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5260_AberturaFicha2G]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5260_AberturaFicha2G](
	[cvIdAberturaFicha2G] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha2G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5265_AberturaFicha5A]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5265_AberturaFicha5A](
	[cvIdAberturaFicha5A] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_COPROD] [varchar](255) NULL,
	[cvQUANT_PER] [numeric](26, 9) NULL,
	[cvCUST_UNIT] [numeric](26, 9) NULL,
	[cvICMS_UNIT] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2G] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha5A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5270_ApuracaoCusto]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5270_ApuracaoCusto](
	[cvIDApuracaoCusto] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_INS] [varchar](100) NULL,
	[cvQUANT_INS] [numeric](26, 9) NULL,
	[cvCUST_UNIT] [numeric](26, 9) NULL,
	[cvICMS_UNIT] [numeric](26, 9) NULL,
	[cvPERD_NORM] [numeric](26, 9) NULL,
	[cvGANHO_NORM] [numeric](26, 9) NULL,
	[cvIDAberturaFicha5A] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDApuracaoCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5275_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5275_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](50) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_PART] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_ITEM] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha2G] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5310_AberturaFicha3A]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5310_AberturaFicha3A](
	[cvIdAberturaFicha3A] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT_INI] [numeric](26, 9) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvQUANT_FIM] [numeric](26, 9) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha3A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5315_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5315_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](20) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](50) NULL,
	[ccNUM_DOC] [varchar](250) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](50) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvPERC_CRDOUT] [numeric](26, 9) NULL,
	[cvVALOR_CRDOUT] [numeric](26, 9) NULL,
	[cvVALOR_DESP] [numeric](26, 9) NULL,
	[cvIdAberturaFicha3A] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5320_DevolucaoSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5320_DevolucaoSaida](
	[cvIDDevolucaoSaida] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cdDT_SAI] [datetime] NULL,
	[ccTIP_DOC] [varchar](2) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDDevolucaoSaida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5325_OperacoesGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5325_OperacoesGeradoras](
	[cvIDOperacoesGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_LEGAL] [varchar](4) NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvICMS_GERA_ITEM] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5330_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5330_OperacoesGeradorasApuradas](
	[cvIdOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5335_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5335_OperacoesGeradorasApuradas](
	[cvIDOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_DECL_EXP] [varchar](255) NULL,
	[ccCOMP_OPER] [varchar](1) NULL,
	[cvSERV_COMUN] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5340_DadosExportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5340_DadosExportacao](
	[cvIDDadosExportacao] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cdDATA_DOC_IND] [datetime] NULL,
	[ccNUM_DOC_IND] [varchar](255) NULL,
	[ccSER_DOC_IND] [varchar](255) NULL,
	[ccNUM_DECL_EXP_IND] [varchar](255) NULL,
	[cvIDOperacoesGeradorasApuradas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDDadosExportacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5350_OperacoesNaoGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5350_OperacoesNaoGeradoras](
	[cvIDOperacoesNaoGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM_CRED] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesNaoGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5360_AberturaFicha3B]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5360_AberturaFicha3B](
	[cvIdAberturaFicha3B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT_INI] [decimal](26, 9) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvQUANT_FIM] [decimal](26, 9) NULL,
	[cvCUS_FIM] [decimal](26, 9) NULL,
	[cvICMS_FIM] [decimal](26, 9) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha3B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5365_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5365_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](255) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccNUM_DI] [varchar](255) NULL,
	[ccCOD_PART] [varchar](255) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvPERC_CRDOUT] [numeric](18, 2) NULL,
	[cvVALOR_CRDOUT] [numeric](18, 2) NULL,
	[cvVALOR_DESP] [numeric](18, 2) NULL,
	[cvIdAberturaFicha3B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5370_IPITributos]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5370_IPITributos](
	[cvIDIPITributos] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVAL_IPI] [decimal](26, 9) NULL,
	[cvVAL_TRIB] [decimal](26, 9) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDIPITributos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5375_DevolucaoSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5375_DevolucaoSaida](
	[cvIDDevolucaoSaida] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cdDT_SAI] [datetime] NULL,
	[ccTIP_DOC] [varchar](2) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDDevolucaoSaida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5380_OperacoesGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5380_OperacoesGeradoras](
	[cvIDOperacoesGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_LEGAL] [varchar](4) NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvICMS_GERA_ITEM] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5385_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5385_OperacoesGeradorasApuradas](
	[cvIDOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5390_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5390_OperacoesGeradorasApuradas](
	[cvIDOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_DECL_EXP] [varchar](255) NULL,
	[ccCOMP_OPER] [varchar](1) NULL,
	[cvSERV_COMUN] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5395_DadosExportacao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5395_DadosExportacao](
	[cvIDDadosExportacao] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cdDATA_DOC_IND] [datetime] NULL,
	[ccNUM_DOC_IND] [varchar](255) NULL,
	[ccSER_DOC_IND] [varchar](255) NULL,
	[ccNUM_DECL_EXP_IND] [varchar](255) NULL,
	[cvIDOperacoesGeradorasApuradas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDDadosExportacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5400_OperacoesNaoGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5400_OperacoesNaoGeradoras](
	[cvIDOperacoesNaoGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM_CRED] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesNaoGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5410_AberturaFicha3C]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5410_AberturaFicha3C](
	[cvIdAberturaFicha3C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQUANT_INI] [numeric](18, 2) NULL,
	[cvCUS_INI] [numeric](18, 2) NULL,
	[cvICMS_INI] [numeric](18, 2) NULL,
	[cvQUANT_FIM] [numeric](18, 2) NULL,
	[cvCUS_FIM] [numeric](18, 2) NULL,
	[cvICMS_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha3C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5415_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5415_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_LANC] [varchar](255) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](1000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](255) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccIND] [varchar](1) NULL,
	[cvQUANT] [numeric](26, 9) NULL,
	[cvCUST_MERC] [numeric](26, 9) NULL,
	[cvVL_ICMS] [numeric](26, 9) NULL,
	[cvPERC_CRDOUT] [numeric](18, 2) NULL,
	[cvVALOR_CRDOUT] [numeric](18, 2) NULL,
	[cvVALOR_DESP] [numeric](18, 2) NULL,
	[cvIdAberturaFicha3C] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5420_DevolucaoSaida]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5420_DevolucaoSaida](
	[cvIDDevolucaoSaida] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cdDT_SAI] [datetime] NULL,
	[ccTIP_DOC] [varchar](2) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDDevolucaoSaida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5425_OperacoesGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5425_OperacoesGeradoras](
	[cvIDOperacoesGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_LEGAL] [varchar](4) NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvICMS_GERA_ITEM] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5430_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5430_OperacoesGeradorasApuradas](
	[cvIDOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5435_OperacoesGeradorasApuradas]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5435_OperacoesGeradorasApuradas](
	[cvIDOperacoesGeradorasApuradas] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccNUM_DECL_EXP] [varchar](255) NULL,
	[ccCOMP_OPER] [varchar](1) NULL,
	[cvSERV_COMUN] [numeric](18, 2) NULL,
	[cvIDOperacoesGeradoras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesGeradorasApuradas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5440_OperacoesNaoGeradoras]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5440_OperacoesNaoGeradoras](
	[cvIDOperacoesNaoGeradoras] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvVALOR_OP_ITEM] [numeric](18, 2) NULL,
	[cvVALOR_BC_ITEM] [numeric](18, 2) NULL,
	[cvALIQ_ITEM] [numeric](18, 2) NULL,
	[cvICMS_DEB_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM] [numeric](18, 2) NULL,
	[cvICMS_OPER_ITEM_CRED] [numeric](18, 2) NULL,
	[cvIDMovimentacaoItens] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDOperacoesNaoGeradoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5550_AberturaFicha5B]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5550_AberturaFicha5B](
	[cvIdAberturaFicha5B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_MAT_RES] [varchar](255) NULL,
	[cvSLD_QTD_INI] [numeric](18, 2) NULL,
	[cvSLD_QTD_FIM] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha5B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5555_MovimentacaoItens]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5555_MovimentacaoItens](
	[cvIDMovimentacaoItens] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvNUM_ORD] [int] NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccCOD_PART] [varchar](255) NULL,
	[ccCOD_LANC] [varchar](6) NULL,
	[ccCOD_ITEM] [varchar](1000) NULL,
	[cvQTD_MAT_RES] [numeric](18, 2) NULL,
	[cvVLR_MAT_RES] [numeric](18, 2) NULL,
	[cvIdAberturaFicha5B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDMovimentacaoItens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5590_AberturaFicha5G]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5590_AberturaFicha5G](
	[cvIdAberturaFicha5G] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_PROD_ELAB] [varchar](255) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdAberturaFicha5G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5595_InventarioMaterial]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5595_InventarioMaterial](
	[cvIDInventarioMaterial] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_INS] [varchar](255) NULL,
	[cvQUANT_INS] [numeric](26, 9) NULL,
	[cvCUST_INS] [numeric](26, 9) NULL,
	[cvICMS_INS] [numeric](26, 9) NULL,
	[cvIdAberturaFicha5G] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDInventarioMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5720_PrestacaoServico]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5720_PrestacaoServico](
	[cvIDPrestacaoServico] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvNUM_ORD] [numeric](18, 2) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_REMET] [varchar](255) NULL,
	[ccCOD_DEST] [varchar](255) NULL,
	[ccUF_INICIO] [varchar](2) NULL,
	[ccUF_DESTINO] [varchar](2) NULL,
	[ccCOD_TOMAD] [varchar](255) NULL,
	[cvALIQUOTA] [numeric](18, 2) NULL,
	[cvVR_NGER_TOTAL] [numeric](18, 2) NULL,
	[cvVR_NGER_ICMS] [numeric](18, 2) NULL,
	[cvVR_GER_TOTAL] [numeric](18, 2) NULL,
	[cvVR_GER_SUBST] [numeric](18, 2) NULL,
	[cvCRED_OUT_PROP] [numeric](18, 2) NULL,
	[cvCRED_OUT_ST] [numeric](18, 2) NULL,
	[cvCRED_AC_GERADO] [numeric](18, 2) NULL,
	[cvICMS_DEVIDO] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDPrestacaoServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5725_CadastroVeiculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5725_CadastroVeiculo](
	[cvIDCadastroVeiculo] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCOD_VEIC] [varchar](255) NULL,
	[ccCNPJ_PROP] [varchar](14) NULL,
	[ccPLACA_VEIC] [varchar](7) NULL,
	[ccUF_VEIC] [varchar](2) NULL,
	[ccMUNIC_VEIC] [varchar](255) NULL,
	[ccRENAVAM] [varchar](255) NULL,
	[ccMARCA] [varchar](3) NULL,
	[ccMODELO_VEIC] [varchar](255) NULL,
	[cvANO_FAB] [numeric](18, 2) NULL,
	[cvREND_COMB] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDCadastroVeiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5730_PrestacoesServico]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5730_PrestacoesServico](
	[cvIDPrestacoesServico] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvNUM_ORD] [numeric](18, 2) NULL,
	[cdDT_MOV] [datetime] NULL,
	[ccHIST] [varchar](8000) NULL,
	[ccCFOP] [varchar](4) NULL,
	[ccTIP_DOC] [varchar](3) NULL,
	[ccSER] [varchar](255) NULL,
	[ccNUM_DOC] [varchar](50) NULL,
	[ccCOD_REMET] [varchar](255) NULL,
	[ccCOD_DEST] [varchar](255) NULL,
	[ccUF_INICIO] [varchar](2) NULL,
	[ccUF_DESTINO] [varchar](2) NULL,
	[ccCOD_TOMAD] [varchar](255) NULL,
	[ccCOD_VEIC_PRINC] [varchar](20) NULL,
	[cvDIST_PERC] [numeric](18, 2) NULL,
	[ccCOD_LEGAL] [varchar](4) NULL,
	[cvALIQUOTA] [numeric](18, 2) NULL,
	[cvVLR_PREST] [numeric](18, 2) NULL,
	[cvVLR_ICMS_DB] [numeric](18, 2) NULL,
	[ccIND_RATEIO] [varchar](255) NULL,
	[cvVLR_CUSTO] [numeric](18, 2) NULL,
	[cvVLR_ICMS] [numeric](18, 2) NULL,
	[cvCRED_AC_GERADO] [numeric](18, 2) NULL,
	[cvICMS_DEVIDO] [numeric](18, 2) NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDPrestacoesServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_5990_EncerramentoBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_5990_EncerramentoBloco](
	[cvIDEncerramentoBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvQTD_LIN_C] [int] NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDEncerramentoBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_9001_AberturaBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_9001_AberturaBloco](
	[cvIDAberturaBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccIND_MOV] [varchar](1) NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDAberturaBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_9900_RegistrosArquivo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_9900_RegistrosArquivo](
	[cvIDRegistrosArquivo] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccREG_BLC] [varchar](4) NULL,
	[cvQTD_REG_BLC] [int] NULL,
	[cvIDAberturaBloco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDRegistrosArquivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_9990_EncerramentoBloco]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_9990_EncerramentoBloco](
	[cvIDEncerramentoBloco] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvQTD_LIN_9] [int] NULL,
	[cvIDAberturaIdentificacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDEncerramentoBloco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_LADCA_9999_EncerramentoArquivo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_LADCA_9999_EncerramentoArquivo](
	[cvIDEncerramentoArquivo] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvQTD_LIN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIDEncerramentoArquivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a](
	[cvidecredac_ladca_c_ficha_1a] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_numerodidsi] [varchar](12) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoorigemdestino] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cventrada_ipi] [decimal](20, 9) NULL,
	[cventrada_outrosimpostoscontribuicoes] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_quantidademercadoria] [decimal](20, 9) NULL,
	[cvsaldo_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccdocumentofiscalindustrializacao] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_1a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1b](
	[cvidecredac_ladca_c_ficha_1b] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_numerodidsi] [varchar](12) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoorigemdestino] [varchar](100) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cventrada_ipi] [decimal](20, 9) NULL,
	[cventrada_outrosimpostoscontribuicoes] [decimal](20, 9) NULL,
	[cvsaída_valorcusto] [decimal](20, 9) NULL,
	[cvsaída_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccdocumentofiscalindustrializacao] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_1b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1c](
	[cvIdECREDAC_LADCA_C_Ficha_1C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccProduto] [varchar](500) NULL,
	[ccCodigo] [varchar](100) NULL,
	[ccUnidade] [varchar](5) NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_CodigoRemetenteDestinatario] [varchar](60) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[ccGeral_FichaOrigemDestino] [varchar](2) NULL,
	[ccGeral_CodigoOrigemDestino] [varchar](100) NULL,
	[cvEntrada_Quantidade] [decimal](20, 9) NULL,
	[cvEntrada_ValorCusto] [decimal](20, 9) NULL,
	[cvEntrada_ICMS] [decimal](20, 9) NULL,
	[cvEntrada_OutrosImpostosContribuicoes] [decimal](20, 9) NULL,
	[cvSaida_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_ValorCusto] [decimal](20, 9) NULL,
	[cvSaida_ValorICMS] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_1C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1d]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1d](
	[cvidecredac_ladca_c_ficha_1d] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigoremetente] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_outrosimpostoscontribuicoes] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[ccdocumentofiscalindustrializacao] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_1d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1e]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1e](
	[cvidecredac_ladca_c_ficha_1e] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigoremetente] [varchar](60) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccGeral_UFInicioServicoTransporte] [varchar](2) NULL,
	[ccGeral_UFDestinoServicoTransporte] [varchar](2) NULL,
	[ccGeral_CodigoTomadorServico] [varchar](1000) NULL,
	[cvGeral_Aliquota] [decimal](20, 9) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[ccdocumentofiscalindustrializacao] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_1e] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2a](
	[cvidecredac_ladca_c_ficha_2a] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoitemmovimentado] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccnumeronf] [int] NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_2a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2b](
	[cvidecredac_ladca_c_ficha_2b] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoitemmovimentado] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccdocumentofiscalindustrializacao] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_2b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2c](
	[cvIdECREDAC_LADCA_C_Ficha_2C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccProduto] [varchar](500) NULL,
	[ccCodigo] [varchar](100) NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[ccGeral_FichaOrigemDestino] [varchar](2) NULL,
	[ccGeral_CodigoItemMovimentado] [varchar](100) NULL,
	[cvEntrada_Quantidade] [decimal](20, 9) NULL,
	[cvEntrada_ValorCusto] [decimal](20, 9) NULL,
	[cvEntrada_ValorICMS] [decimal](20, 9) NULL,
	[cvSaida_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_ValorCusto] [decimal](20, 9) NULL,
	[cvSaida_ValorICMS] [decimal](20, 9) NULL,
	[cvSaldo_ValorCusto] [decimal](20, 9) NULL,
	[cvSaldo_ValorICMS] [decimal](20, 9) NULL,
	[ccNumeroNF] [int] NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_2C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2d]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2d](
	[cvidecredac_ladca_c_ficha_2d] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoorigem] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[ccnumeronf] [int] NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_2d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2e]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2e](
	[cvidecredac_ladca_c_ficha_2e] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoitemmovimentado] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[ccentrada_unidade] [varchar](5) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_2e] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2f]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2f](
	[cvIdECREDAC_LADCA_C_Ficha_2F] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccInsumoConjunto] [varchar](100) NULL,
	[ccCodigoInsumoProcessoConjunto] [varchar](100) NULL,
	[ccUnidade] [varchar](5) NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[ccGeral_FichaOrigemDestino] [varchar](2) NULL,
	[ccGeral_CodigoItemMovimentado] [varchar](100) NULL,
	[cvEntrada_Quantidade] [decimal](20, 9) NULL,
	[cvEntrada_ValorCusto] [decimal](20, 9) NULL,
	[cvEntrada_ValorICMS] [decimal](20, 9) NULL,
	[cvSaida_PercentualAtribuicaoInsumoConjunto] [decimal](20, 2) NULL,
	[cvSaida_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_ValorCusto] [decimal](20, 9) NULL,
	[cvSaida_ValorICMS] [decimal](20, 9) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_2F] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2g]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2g](
	[cvidecredac_ladca_c_ficha_2g] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoitemmovimentado] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccnumeronf] [int] NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_2g] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3a](
	[cvidecredac_ladca_c_ficha_3a] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoorigemdestino] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_quantidade] [decimal](20, 9) NULL,
	[cvsaldo_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccnumeronf] [int] NULL,
	[cdGeral_DocumentoOriginal_Data] [date] NULL,
	[ccGeral_DocumentoOriginal_Serie] [varchar](10) NULL,
	[ccGeral_DocumentoOriginal_NumDocumento] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_3a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3b](
	[cvidecredac_ladca_c_ficha_3b] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccmercadoria] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvgeral_numeroordem] [int] NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_historico] [varchar](4000) NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_tipodocumento] [varchar](50) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumento] [varchar](10) NULL,
	[ccgeral_numerodidsi] [varchar](12) NULL,
	[ccgeral_codigoremetentedestinatario] [varchar](60) NULL,
	[ccgeral_codigolancamento] [varchar](6) NULL,
	[ccgeral_fichaorigemdestino] [varchar](2) NULL,
	[ccgeral_codigoorigemdestino] [varchar](100) NULL,
	[cventrada_quantidade] [decimal](20, 9) NULL,
	[cventrada_valorcusto] [decimal](20, 9) NULL,
	[cventrada_valoricms] [decimal](20, 9) NULL,
	[cventrada_ipi] [decimal](20, 9) NULL,
	[cventrada_outrosimpostoscontribuicoes] [decimal](20, 9) NULL,
	[cvsaida_quantidade] [decimal](20, 9) NULL,
	[cvsaida_valorcusto] [decimal](20, 9) NULL,
	[cvsaida_valoricms] [decimal](20, 9) NULL,
	[cvsaldo_quantidade] [decimal](20, 9) NULL,
	[cvsaldo_valorunitariocusto] [decimal](20, 9) NULL,
	[cvsaldo_valorcusto] [decimal](20, 9) NULL,
	[cvsaldo_valorunitarioicms] [decimal](20, 9) NULL,
	[cvsaldo_valoricms] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[cdGeral_DocumentoOriginal_Data] [date] NULL,
	[ccGeral_DocumentoOriginal_Serie] [varchar](10) NULL,
	[ccGeral_DocumentoOriginal_NumDocumento] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_3b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3c](
	[cvIdECREDAC_LADCA_C_Ficha_3C] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccProdutoEncomendado] [varchar](500) NULL,
	[ccCodigoProdutoEncomendado] [varchar](100) NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_CodigoRemetenteDestinatario] [varchar](60) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[cvEntrada_Quantidade] [decimal](20, 9) NULL,
	[cvEntrada_ValorCusto] [decimal](20, 9) NULL,
	[cvEntrada_ValorICMS] [decimal](20, 9) NULL,
	[cvSaida_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_ValorCusto] [decimal](20, 9) NULL,
	[cvSaida_ValorICMS] [decimal](20, 9) NULL,
	[cvSaldo_Quantidade] [decimal](20, 9) NULL,
	[cvSaldo_ValorCusto] [decimal](20, 9) NULL,
	[cvSaldo_ValorICMS] [decimal](20, 9) NULL,
	[ccNumeroSolicitacaoInterna] [varchar](10) NULL,
	[ccNumeroNF] [int] NULL,
	[cdGeral_DocumentoOriginal_Data] [date] NULL,
	[ccGeral_DocumentoOriginal_Serie] [varchar](10) NULL,
	[ccGeral_DocumentoOriginal_NumDocumento] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_3C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4a](
	[cvIdECREDAC_LADCA_C_Ficha_4A] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccGeral_CodigoItem] [varchar](100) NULL,
	[cvGeral_PercentualRateio] [decimal](20, 9) NULL,
	[cvGeral_CustoEnergiaEletrica] [decimal](20, 9) NULL,
	[cvGeral_ICMSEnergiaEletrica] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_4A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4b](
	[cvIdECREDAC_LADCA_C_Ficha_4B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccInsumoProcessoConjunto] [varchar](100) NULL,
	[ccCodigoOrigemInsumoProcessoConjunto] [varchar](100) NULL,
	[ccGeral_CodigoCoProdutoSubproduto] [varchar](100) NULL,
	[cvGeral_QuantidadeCoProdutoSubprodutoResultanteInsumoConjunto] [decimal](20, 9) NULL,
	[cvGeral_PrecoMedioUnitarioSaidaCoProdutoSubproduto] [decimal](20, 9) NULL,
	[cvGeral_ValorProjetadoDasSaidas] [decimal](20, 9) NULL,
	[cvGeral_PercentualAtribuicaoInsumoConjunto] [decimal](20, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_4B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4c](
	[cvidecredac_ladca_c_ficha_4c] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccgeral_codigoitem] [varchar](100) NULL,
	[cvgeral_percentualrateio] [decimal](20, 9) NULL,
	[cvgeral_custogastosgeraisfabricacao] [decimal](20, 9) NULL,
	[cvgeral_icmsgastosgeraisfabricacao] [decimal](20, 9) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_4c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5a](
	[cvidecredac_ladca_c_ficha_5a] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccproduto] [varchar](500) NULL,
	[cccodigo] [varchar](100) NULL,
	[ccunidade] [varchar](5) NULL,
	[cvquantidadeprodutoconcluidaperiodo] [decimal](20, 9) NULL,
	[ccgeral_codigoinsumo] [varchar](100) NULL,
	[cvgeral_quantidadeinsumoutilizada] [decimal](20, 9) NULL,
	[cvgeral_quantidadeinsumoutilizadaporunidadeproduto] [decimal](20, 9) NULL,
	[cvgeral_custounitarioinsumo] [decimal](20, 9) NULL,
	[cvgeral_custototalinsumoporunidadeproduto] [decimal](20, 9) NULL,
	[cvgeral_valorunitarioicmsinsumo] [decimal](20, 9) NULL,
	[cvgeral_valortotalicmsinsumoporunidadeproduto] [decimal](20, 9) NULL,
	[cvgeral_perdanormal] [decimal](20, 9) NULL,
	[ccFicha] [varchar](2) NULL,
	[ccCodigo_CodItem_2G] [varchar](100) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5b](
	[cvIdECREDAC_LADCA_C_Ficha_5B] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccMaterial] [varchar](500) NULL,
	[ccCodigo] [varchar](100) NULL,
	[ccUnidade] [varchar](5) NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_CodigoRemetenteDestinatario] [varchar](60) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[ccEntrada_FichaOcorrenciaPerda] [varchar](2) NULL,
	[ccEntrada_CodigoItem] [varchar](100) NULL,
	[cvEntrada_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_Quantidade] [decimal](20, 9) NULL,
	[cvSaida_ValorItem] [decimal](20, 9) NULL,
	[cvSaldo_Quantidade] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_5B] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5c](
	[cvidecredac_ladca_c_ficha_5c] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccgeral_codigo] [varchar](200) NULL,
	[ccgeral_nome] [varchar](200) NULL,
	[ccgeral_pais] [varchar](200) NULL,
	[ccgeral_cnpj] [varchar](200) NULL,
	[ccgeral_ie] [varchar](200) NULL,
	[ccgeral_iesubstituto] [varchar](200) NULL,
	[ccgeral_endereco] [varchar](200) NULL,
	[ccgeral_numero] [varchar](200) NULL,
	[ccgeral_complemento] [varchar](200) NULL,
	[ccgeral_bairro] [varchar](200) NULL,
	[ccgeral_municipio] [varchar](200) NULL,
	[ccgeral_cep] [varchar](200) NULL,
	[ccgeral_uf] [varchar](200) NULL,
	[ccgeral_telefone] [varchar](200) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5d]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5d](
	[cvidecredac_ladca_c_ficha_5d] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccgeral_codigoenquadramentolegal] [varchar](10) NULL,
	[ccgeral_codigohipotesegeracao] [varchar](10) NULL,
	[ccgeral_anexo] [varchar](10) NULL,
	[ccgeral_artigo] [varchar](10) NULL,
	[ccgeral_inciso] [varchar](10) NULL,
	[ccgeral_alinea] [varchar](10) NULL,
	[ccgeral_paragrafo] [varchar](10) NULL,
	[ccgeral_item] [varchar](10) NULL,
	[ccgeral_letra] [varchar](10) NULL,
	[ccgeral_observacoes] [varchar](500) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5f]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5f](
	[cvidecredac_ladca_c_ficha_5f] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccgeral_codigo] [varchar](100) NULL,
	[ccgeral_descricao] [varchar](500) NULL,
	[ccgeral_unidadeitem] [varchar](5) NULL,
	[cchidden_ncm] [varchar](10) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5f] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5g]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5g](
	[cvidecredac_ladca_c_ficha_5g] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccprodutoelaboracao] [varchar](500) NULL,
	[cccodigoprodutoelaboracao] [varchar](500) NULL,
	[ccgeral_codigoinsumo] [varchar](100) NULL,
	[cvgeral_quantidadeinsumo] [decimal](20, 9) NULL,
	[cvgeral_custoinsumo] [decimal](20, 9) NULL,
	[cvgeral_valoricmsinsumo] [decimal](20, 9) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5g] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5h]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5h](
	[cvidecredac_ladca_c_ficha_5h] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_numerodocumentofiscalexportador] [varchar](15) NULL,
	[ccgeral_seriedocumentofiscalexportador] [varchar](12) NULL,
	[cdgeral_datadocumentofiscalexportador] [date] NULL,
	[ccgeral_numerodeclaracaoparadespachoexportacaoexportador] [varchar](15) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_5h] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5i]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5i](
	[cvIdECREDAC_LADCA_C_Ficha_5I] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccGeral_CodigoIdentificacaoVeiculoTransportador] [varchar](1000) NULL,
	[ccGeral_PlacaVeiculo] [varchar](1000) NULL,
	[ccGeral_CNPJCPFProprietario] [varchar](1000) NULL,
	[ccGeral_UnidadeFederacaoRegistroVeiculo] [varchar](1000) NULL,
	[ccGeral_Municipio] [varchar](1000) NULL,
	[ccGeral_NumeroRenavan] [varchar](1000) NULL,
	[ccGeral_MarcaVeiculo] [varchar](1000) NULL,
	[ccGeral_ModeloVeiculo] [varchar](1000) NULL,
	[ccGeral_AnoFabricacao] [varchar](1000) NULL,
	[cvGeral_RendimentoCombustivel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_5I] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6a]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6a](
	[cvidecredac_ladca_c_ficha_6a] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccgeral_classificacaooperacaogeradora] [varchar](10) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorbasecalculoitem] [decimal](20, 9) NULL,
	[cvgeral_aliquotaitem] [decimal](20, 2) NULL,
	[cvgeral_valoricmsdebitadooperacao] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualcreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valortotalicms] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoacumuladogerado] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6b]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6b](
	[cvidecredac_ladca_c_ficha_6b] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccgeral_classificacaooperacaogeradora] [varchar](10) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorbasecalculoitem] [decimal](20, 9) NULL,
	[cvgeral_aliquotaitem] [decimal](20, 2) NULL,
	[cvgeral_valoricmsdebitadooperacao] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualcreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valortotalicms] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoacumuladogerado] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6b] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6c]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6c](
	[cvidecredac_ladca_c_ficha_6c] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccgeral_classificacaooperacaogeradora] [varchar](10) NULL,
	[ccgeral_numerodeclaracaoparadespachoexportacao] [varchar](20) NULL,
	[ccgeral_comprovacaooperacao] [varchar](3) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualaplicavelaocreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoservicoscomunicacoes] [decimal](20, 9) NULL,
	[cvgeral_valoricmscomprovado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoacumuladogerado] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6d]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6d](
	[cvidecredac_ladca_c_ficha_6d] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccgeral_classificacaooperacaogeradora] [varchar](10) NULL,
	[ccgeral_comprovacaooperacao] [varchar](3) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualaplicavelaocreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valoricmscomprovado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoacumuladogerado] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6e]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6e](
	[cvidecredac_ladca_c_ficha_6e] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[ccgeral_classificacaooperacaogeradora] [varchar](10) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualaplicavelaocreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valorcreditoacumuladogerado] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6e] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6f]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6f](
	[cvidecredac_ladca_c_ficha_6f] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvgeral_numerolancamento] [int] NULL,
	[ccgeral_codigomercadoria] [varchar](100) NULL,
	[cdgeral_data] [date] NULL,
	[ccgeral_cfop] [varchar](4) NULL,
	[ccgeral_numerodocumentofiscal] [varchar](10) NULL,
	[ccgeral_seriedocumento] [varchar](5) NULL,
	[ccgeral_codigodestinatario] [varchar](60) NULL,
	[cvgeral_valortotalsaidaitem] [decimal](20, 9) NULL,
	[cvgeral_valorbasecalculoitem] [decimal](20, 9) NULL,
	[cvgeral_aliquotaitem] [decimal](20, 2) NULL,
	[cvgeral_valoricmsdebitadooperacao] [decimal](20, 9) NULL,
	[cvgeral_valorcusto] [decimal](20, 9) NULL,
	[cvgeral_valoricms] [decimal](20, 9) NULL,
	[cvgeral_percentualcreditooutorgado] [decimal](20, 2) NULL,
	[cvgeral_valorcreditooutorgado] [decimal](20, 9) NULL,
	[cvgeral_valorcreditodespesasoperacionais] [decimal](20, 9) NULL,
	[cvgeral_valortotalicms] [decimal](20, 9) NULL,
	[cvgeral_valoricmsdevido] [decimal](20, 9) NULL,
	[ccnumerosolicitacaointerna] [varchar](10) NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[desc_erro] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvidecredac_ladca_c_ficha_6f] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6g]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6g](
	[cvIdECREDAC_LADCA_C_Ficha_6G] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumentoFiscal] [varchar](10) NULL,
	[ccGeral_CodigoRemetente] [varchar](60) NULL,
	[ccGeral_CodigoDestinatario] [varchar](60) NULL,
	[ccGeral_UFInicioServicoTransporte] [varchar](2) NULL,
	[ccGeral_UFDestinoMercadoria] [varchar](2) NULL,
	[ccGeral_CodigoTomadorServico] [varchar](10) NULL,
	[cvGeral_Aliquota] [decimal](20, 9) NULL,
	[cvImposto_NaoGeradorasValorTotalPrestacao] [decimal](20, 9) NULL,
	[cvImposto_NaoGeradorasICMSDebitadoParaPrestador] [decimal](20, 9) NULL,
	[cvImposto_GeradorasValorPrestacao] [decimal](20, 9) NULL,
	[cvImposto_GeradorasICMSDevidoContribuinteSubstituto] [decimal](20, 9) NULL,
	[cvImposto_ValorCreditoOutorgadoPrestacaoPropria] [decimal](20, 9) NULL,
	[cvImposto_ValorCreditoOutorgadoPrestacaoComST] [decimal](20, 9) NULL,
	[cvImposto_CreditoAcumuladoGerado] [decimal](20, 9) NULL,
	[cvImposto_ValorICMSDevido] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_6G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6h]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6h](
	[cvIdECREDAC_LADCA_C_Ficha_6H] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvGeral_NumeroOrdem] [int] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumentoFiscal] [varchar](10) NULL,
	[ccGeral_CodigoRemetente] [varchar](60) NULL,
	[ccGeral_CodigoDestinatario] [varchar](60) NULL,
	[ccGeral_UFInicioServicoTransporte] [varchar](2) NULL,
	[ccGeral_UFDestinoMercadoria] [varchar](2) NULL,
	[ccGeral_CodigoTomadorServico] [varchar](10) NULL,
	[ccGeral_CodigoIdentificacaoPrincipalVeiculoTransportador] [varchar](10) NULL,
	[cvGeral_QuilometragemPercorrida] [decimal](20, 9) NULL,
	[ccGeral_ClassificacaoPrestacaoGeradora] [decimal](20, 9) NULL,
	[cvGeral_Aliquota] [decimal](20, 9) NULL,
	[cvImposto_ValorPrestacao] [decimal](20, 9) NULL,
	[cvImposto_ValorICMSDebitadoPeloTransportador] [decimal](20, 9) NULL,
	[cvImposto_IndiceRateio] [decimal](20, 9) NULL,
	[cvImposto_ValorCusto] [decimal](20, 9) NULL,
	[cvImposto_ValorICMS] [decimal](20, 9) NULL,
	[cvImposto_CreditoAcumuladoGerado] [decimal](20, 9) NULL,
	[cvImposto_ValorICMSDevido] [decimal](20, 9) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdECREDAC_LADCA_C_Ficha_6H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_Ficha_Negativo_3B]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_Ficha_Negativo_3B](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[dt_e_s] [date] NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[cod_item] [varchar](100) NULL,
	[num_item] [int] NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NULL,
	[num_doc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_LogECREDAC]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_LogECREDAC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[descricao] [varchar](4000) NULL,
	[timestamp] [datetime] NULL,
	[qtdLinhas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreBaseArvore]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreBaseArvore](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[id_entrada] [int] NULL,
	[id_estoque] [int] NULL,
	[id_saldo_inicial] [int] NULL,
	[cod_item] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[dt_e_s] [date] NULL,
	[num_order_prod] [varchar](100) NULL,
	[qtd_atual] [decimal](20, 9) NULL,
	[qtd_controle_estoque] [decimal](20, 9) NULL,
	[qtd_consumida] [decimal](20, 9) NULL,
	[vl_rateio] [decimal](20, 9) NULL,
	[vl_custo] [decimal](20, 9) NULL,
	[vl_icms] [decimal](20, 9) NULL,
	[base] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreBaseArvore_RefCircular]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreBaseArvore_RefCircular](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[cod_item] [varchar](100) NULL,
	[cod_lote] [varchar](20) NOT NULL,
	[num_order_prod] [varchar](100) NULL,
	[base] [varchar](50) NULL,
	[observacao] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreBaseFrete]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreBaseFrete](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NOT NULL,
	[d100_ind_oper] [int] NULL,
	[d100_ind_emit] [int] NULL,
	[d100_cod_part] [varchar](60) NULL,
	[r0150_participante_nome] [varchar](100) NULL,
	[r0150_participante_cod_pais] [varchar](10) NULL,
	[r0150_participante_cnpj] [varchar](14) NULL,
	[r0150_participante_cpf] [varchar](14) NULL,
	[r0150_participante_ie] [varchar](15) NULL,
	[r0150_participante_cod_mun] [varchar](10) NULL,
	[r0150_participante_suframa] [varchar](500) NULL,
	[d100_cod_mod] [varchar](2) NULL,
	[d100_cod_sit] [varchar](2) NULL,
	[d100_ser] [varchar](10) NULL,
	[d100_sub] [varchar](10) NULL,
	[d100_num_doc] [varchar](10) NULL,
	[d100_chv_cte] [varchar](44) NULL,
	[d100_dt_doc] [date] NULL,
	[d100_dt_a_p] [date] NOT NULL,
	[d100_tp_cte] [varchar](1) NULL,
	[d100_chv_cte_ref] [varchar](44) NULL,
	[d100_vl_doc] [decimal](20, 9) NULL,
	[d100_vl_desc] [decimal](20, 9) NULL,
	[d100_ind_frt] [int] NULL,
	[d100_vl_serv] [decimal](20, 9) NULL,
	[d100_vl_bc_icms] [decimal](20, 9) NULL,
	[d100_vl_icms] [decimal](20, 9) NULL,
	[d100_vl_nt] [decimal](20, 9) NULL,
	[d100_cod_nf] [varchar](6) NULL,
	[d100_cod_cta] [varchar](10) NULL,
	[d100_cod_mun_orig] [int] NULL,
	[d100_cod_mun_dest] [int] NULL,
	[d190_cfop] [varchar](1000) NULL,
	[cod_lancamento] [varchar](6) NULL,
	[id_efd] [int] NULL,
	[id_arquivo_efd] [int] NULL,
	[nf_chv] [varchar](44) NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_ser] [varchar](10) NULL,
	[nf_cod_mod] [varchar](2) NULL,
	[nf_dt_doc] [date] NULL,
	[nf_cnpj] [varchar](14) NULL,
	[historico] [varchar](4000) NULL,
	[obs] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreBaseIndustrializacaoEncomenda]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreBaseIndustrializacaoEncomenda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[ind_id] [int] NOT NULL,
	[ind_origem] [varchar](100) NOT NULL,
	[ind_num_order_prod] [varchar](100) NOT NULL,
	[ind_cod_item] [varchar](100) NOT NULL,
	[ind_cod_lote] [varchar](20) NOT NULL,
	[ind_num_doc] [varchar](10) NULL,
	[ind_num_item] [int] NOT NULL,
	[ind_dt_e_s] [date] NULL,
	[ind_qtd_atual] [decimal](20, 9) NULL,
	[nf_id] [int] NULL,
	[nf_origem] [varchar](100) NULL,
	[nf_ind_oper] [int] NULL,
	[nf_num_doc] [varchar](10) NULL,
	[nf_dt_e_s] [date] NULL,
	[nf_cod_part] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreBaseVinculo]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreBaseVinculo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ARQUIVO] [int] NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[considerar] [varchar](3) NULL,
	[dev_id] [int] NOT NULL,
	[dev_origem] [varchar](100) NOT NULL,
	[dev_num_doc] [varchar](10) NOT NULL,
	[dev_cnpj] [varchar](14) NULL,
	[dev_chv_nfe] [varchar](44) NULL,
	[dev_dt_e_s] [date] NULL,
	[dev_dt_doc] [date] NULL,
	[dev_vl_item] [decimal](20, 9) NULL,
	[dev_num_item] [int] NOT NULL,
	[dev_cod_item] [varchar](100) NOT NULL,
	[dev_cod_lote] [varchar](20) NOT NULL,
	[dev_num_order_prod] [varchar](100) NOT NULL,
	[dev_desc_item] [varchar](400) NULL,
	[dev_qtd_atual] [decimal](20, 9) NULL,
	[dev_uni_atual] [varchar](5) NULL,
	[dev_cfop] [varchar](4) NULL,
	[dev_desc_cfop] [varchar](500) NULL,
	[dev_mvt] [varchar](50) NULL,
	[dev_desc_mvt] [varchar](100) NULL,
	[dev_itca] [varchar](4) NULL,
	[dev_cod_lancamento] [varchar](6) NULL,
	[dev_cod_sit] [varchar](50) NULL,
	[ori_id] [int] NULL,
	[ori_origem] [varchar](50) NULL,
	[ori_num_doc] [varchar](10) NOT NULL,
	[ori_cnpj] [varchar](14) NULL,
	[ori_chv_nfe] [varchar](44) NULL,
	[ori_dt_doc] [date] NULL,
	[ori_num_item] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreFicha]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreFicha](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvId_Base] [int] NULL,
	[ccOrigem] [varchar](100) NULL,
	[ccCodigo_CodItem] [int] NULL,
	[ccCodigo_NumItem] [int] NULL,
	[ccCodigo_CodLote] [varchar](20) NULL,
	[ccCodigo_NumOrderProd] [varchar](100) NULL,
	[ccCodigo_NumDocumento] [varchar](10) NULL,
	[ccCodigoOrigemDestino_CodItem] [int] NULL,
	[ccCodigoOrigemDestino_NumItem] [int] NULL,
	[ccCodigoOrigemDestino_CodLote] [varchar](20) NULL,
	[ccCodigoOrigemDestino_NumOrderProd] [varchar](100) NULL,
	[ccCodigoOrigemDestino_NumDocumento] [varchar](10) NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cvQuantidade] [decimal](20, 9) NULL,
	[cvCusto] [decimal](20, 9) NULL,
	[cvIcms] [decimal](20, 9) NULL,
	[cvEntrada_IPI] [decimal](20, 9) NULL,
	[cvEntrada_OutrosImpostosContribuicoes] [decimal](20, 9) NULL,
	[ccFlag_CustoIcmsNaoCalculado] [int] NULL,
	[cvOrdemDTT] [bigint] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_NumeroDIDSI] [varchar](12) NULL,
	[ccGeral_CodigoRemetenteDestinatario] [int] NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[cvGeral_PercentualRateio2E] [decimal](20, 9) NULL,
	[cvGeral_PercentualRateioEnergia] [decimal](20, 9) NULL,
	[cdGeral_DataDocumentoFiscalExportador] [date] NULL,
	[ccGeral_SerieDocumentoFiscalExportador] [varchar](12) NULL,
	[ccGeral_NumeroDocumentoFiscalExportador] [varchar](15) NULL,
	[ccGeral_NumeroDeclaracaoParaDespachoExportacao] [varchar](20) NULL,
	[ccGeral_NumeroDeclaracaoParaDespachoExportacaoExportador] [varchar](15) NULL,
	[ccGeral_ClassificacaoOperacaoGeradora] [varchar](10) NULL,
	[cvGeral_ValorTotalSaidaItem] [decimal](20, 2) NULL,
	[cvGeral_ValorBaseCalculoItem] [decimal](20, 2) NULL,
	[cvGeral_ValorICMSDebitadoOperacao] [decimal](20, 2) NULL,
	[cvGeral_AliquotaItem] [decimal](20, 2) NULL,
	[cvGeral_PercentualCreditoOutorgado] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoOutorgado] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoDespesasOperacionais] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoServicosComunicacoes] [decimal](20, 2) NULL,
	[ccGeral_ComprovacaoOperacao] [varchar](3) NULL,
	[ccGeral_Erro] [varchar](500) NULL,
	[cvGeral_ValorPerdaNormal] [decimal](20, 9) NULL,
	[cvGeral_ValorPISCOFINSDebitadoOperacao] [decimal](20, 9) NULL,
	[cvId_BaseVinculo] [int] NULL,
	[ccPerdaNormalFicha5B] [varchar](3) NULL,
	[cvId_PrefichaExplosao] [int] NULL,
	[cvId_FichaNegativo3B] [int] NULL,
	[cvNivelCalculo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_PreFicha_Explosao]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_PreFicha_Explosao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[cvId_Base] [int] NULL,
	[ccOrigem] [varchar](100) NULL,
	[ccCodigo_CodItem] [int] NULL,
	[ccCodigo_NumItem] [int] NULL,
	[ccCodigo_CodLote] [varchar](20) NULL,
	[ccCodigo_NumOrderProd] [varchar](100) NULL,
	[ccCodigo_NumDocumento] [varchar](10) NULL,
	[ccCodigoOrigemDestino_CodItem] [int] NULL,
	[ccCodigoOrigemDestino_NumItem] [int] NULL,
	[ccCodigoOrigemDestino_CodLote] [varchar](20) NULL,
	[ccCodigoOrigemDestino_NumOrderProd] [varchar](100) NULL,
	[ccCodigoOrigemDestino_NumDocumento] [varchar](10) NULL,
	[cvGeral_NumeroLancamento] [int] NULL,
	[cvQuantidade] [decimal](20, 9) NULL,
	[cvCusto] [decimal](20, 9) NULL,
	[cvIcms] [decimal](20, 9) NULL,
	[cvEntrada_IPI] [decimal](20, 9) NULL,
	[cvEntrada_OutrosImpostosContribuicoes] [decimal](20, 9) NULL,
	[ccFlag_CustoIcmsNaoCalculado] [int] NULL,
	[cvOrdemDTT] [bigint] NULL,
	[cdGeral_Data] [date] NULL,
	[ccGeral_Historico] [varchar](4000) NULL,
	[ccGeral_CFOP] [varchar](4) NULL,
	[ccGeral_TipoDocumento] [varchar](50) NULL,
	[ccGeral_SerieDocumento] [varchar](5) NULL,
	[ccGeral_NumeroDocumento] [varchar](10) NULL,
	[ccGeral_NumeroDIDSI] [varchar](12) NULL,
	[ccGeral_CodigoRemetenteDestinatario] [int] NULL,
	[ccGeral_CodigoLancamento] [varchar](6) NULL,
	[cvGeral_PercentualRateio2E] [decimal](20, 9) NULL,
	[cvGeral_PercentualRateioEnergia] [decimal](20, 9) NULL,
	[cdGeral_DataDocumentoFiscalExportador] [date] NULL,
	[ccGeral_SerieDocumentoFiscalExportador] [varchar](12) NULL,
	[ccGeral_NumeroDocumentoFiscalExportador] [varchar](15) NULL,
	[ccGeral_NumeroDeclaracaoParaDespachoExportacao] [varchar](12) NULL,
	[ccGeral_NumeroDeclaracaoParaDespachoExportacaoExportador] [varchar](15) NULL,
	[ccGeral_ClassificacaoOperacaoGeradora] [varchar](10) NULL,
	[cvGeral_ValorTotalSaidaItem] [decimal](20, 2) NULL,
	[cvGeral_ValorBaseCalculoItem] [decimal](20, 2) NULL,
	[cvGeral_ValorICMSDebitadoOperacao] [decimal](20, 2) NULL,
	[cvGeral_AliquotaItem] [decimal](20, 2) NULL,
	[cvGeral_PercentualCreditoOutorgado] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoOutorgado] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoDespesasOperacionais] [decimal](20, 2) NULL,
	[cvGeral_ValorCreditoServicosComunicacoes] [decimal](20, 2) NULL,
	[ccGeral_ComprovacaoOperacao] [varchar](3) NULL,
	[ccGeral_Erro] [varchar](500) NULL,
	[cvGeral_ValorPerdaNormal] [decimal](20, 9) NULL,
	[cvGeral_ValorPISCOFINSDebitadoOperacao] [decimal](20, 9) NULL,
	[cvId_BaseVinculo] [int] NULL,
	[ccPerdaNormalFicha5B] [varchar](3) NULL,
	[cvId_PrefichaExplosao] [int] NULL,
	[cvId_FichaNegativo3B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCAT83_TemplateDeParaCodigoItem]    Script Date: 10/05/2022 11:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAT83_TemplateDeParaCodigoItem](
	[cvIdTemplateDeParaCodigoDoItem] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [int] NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[MES] [int] NOT NULL,
	[ANO] [int] NOT NULL,
	[ccCodAnteriorItem] [varchar](8000) NULL,
	[ccDescricaoAnteriorItem] [varchar](8000) NULL,
	[ccPeriodoInicial] [varchar](8000) NULL,
	[ccPeriodoFinal] [varchar](8000) NULL,
	[ccCodAtualItem] [varchar](8000) NULL,
	[ccDescricaoAtualItem] [varchar](8000) NULL,
	[cvLinha] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvIdTemplateDeParaCodigoDoItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_energia]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_energia] ON [dbo].[tblCAT83_AnaliseBaseEnergia]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_energia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_entrada]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_entrada] ON [dbo].[tblCAT83_AnaliseBaseEntrada]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_entrada]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_entrada] ON [dbo].[tblCAT83_AnaliseBaseEntradaImportacao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_entrada]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_entrada] ON [dbo].[tblCAT83_AnaliseBaseEntradaImpostos]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_estoque]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_estoque] ON [dbo].[tblCAT83_AnaliseBaseEstoque]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_estoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_frete]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_frete] ON [dbo].[tblCAT83_AnaliseBaseFrete]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_frete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_industr]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_industr] ON [dbo].[tblCAT83_AnaliseBaseIndustrializacaoEncomenda]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_industr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_romaneio]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_romaneio] ON [dbo].[tblCAT83_AnaliseBaseRomaneio]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_romaneio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_saida]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_saida] ON [dbo].[tblCAT83_AnaliseBaseSaida]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_saida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_saida]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_saida] ON [dbo].[tblCAT83_AnaliseBaseSaidaExportacao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_saida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_saida]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_saida] ON [dbo].[tblCAT83_AnaliseBaseSaidaImpostos]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_saida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_saldo_inicial]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_saldo_inicial] ON [dbo].[tblCAT83_AnaliseBaseSaldoInicial]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_saldo_inicial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_vinculo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_vinculo] ON [dbo].[tblCAT83_AnaliseBaseVinculo]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_vinculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_previnculo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_previnculo] ON [dbo].[tblCAT83_AnalisePreBaseVinculo]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_previnculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_arvore]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_arvore] ON [dbo].[tblCAT83_BaseArvore]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arvore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_pai_arvore]    Script Date: 29/07/2022 15:10:03 ******/
CREATE NONCLUSTERED INDEX [idx_id_pai_arvore] ON [dbo].[tblCAT83_BaseArvore]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arvore_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item] ON [dbo].[tblCAT83_BaseArvore_RefCircular]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[base] ASC,
	[cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ordem]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ordem] ON [dbo].[tblCAT83_BaseArvore_RefCircular]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[base] ASC,
	[num_order_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_cod_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_cod_item] ON [dbo].[tblCAT83_BaseArvore_RefCircular]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cadeia] ASC,
	[cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_BaseControleProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item] ON [dbo].[tblCAT83_BaseControleProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cod_item_final] ASC,
	[num_item_final] ASC,
	[cod_lote_final] ASC,
	[num_order_prod_final] ASC,
	[num_doc_final] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_preficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_preficha] ON [dbo].[tblCAT83_BaseControleProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_preficha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_linha_nova]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_linha_nova] ON [dbo].[tblCAT83_BaseControleProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[linha_nova_mes] ASC
)
INCLUDE ( 	[ID],
	[id_preficha]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_modulo_2]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_modulo_2] ON [dbo].[tblCAT83_BaseControleProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ficha] ASC
)
INCLUDE ( 	[ANO],
	[MES],
	[cod_item_final],
	[num_item_final],
	[cod_lote_final],
	[num_order_prod_final],
	[num_doc_final],
	[qtd_industr_esperado_periodo],
	[custo_utilizada_periodo],
	[icms_utilizada_periodo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_nfe]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_nfe] ON [dbo].[tblCAT83_BaseEntrada]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arquivo_nfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_sped]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_sped] ON [dbo].[tblCAT83_BaseEntrada]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arquivo_efd] ASC,
	[id_efd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_entrada]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_entrada] ON [dbo].[tblCAT83_BaseEntradaImportacao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item_periodo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item_periodo] ON [dbo].[tblCAT83_BaseEstoque]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[cod_lote] ASC,
	[num_order_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_cod_item_producao]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_cod_item_producao] ON [dbo].[tblCAT83_BaseEstoque]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[num_order_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_explosao_101]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_explosao_101] ON [dbo].[tblCAT83_BaseEstoque]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[considerar] ASC,
	[mvt] ASC,
	[cod_lancamento] ASC
)
INCLUDE ( 	[cod_item],
	[desc_item],
	[num_order_prod],
	[dt_e_s],
	[qtd_atual],
	[uni_atual]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_preencher_preficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_preencher_preficha] ON [dbo].[tblCAT83_BaseEstoque]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[cod_lancamento] ASC
)
INCLUDE ( 	[ID],
	[num_doc],
	[num_order_prod],
	[dt_e_s],
	[qtd_atual],
	[vl_custo_manual],
	[vl_icms_manual],
	[vl_perda_normal],
	[perda_normal_ficha_5b],
	[cod_lote],
	[considerar],
	[historico]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_parametro]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_parametro] ON [dbo].[tblCAT83_BaseEstoqueControleDesindustr]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_controle] ASC,
	[id_parametro_estoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_estoque]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_estoque] ON [dbo].[tblCAT83_BaseEstoqueControleEstorno]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_estoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_parametro]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_parametro] ON [dbo].[tblCAT83_BaseEstoqueControleEstorno]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_controle] ASC,
	[id_parametro_estoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_cod_part]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_cod_part] ON [dbo].[tblCAT83_BaseFicha5C]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_part] ASC,
	[considerar] ASC
)
INCLUDE ( 	[id_cod_cnpj]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_id_cod_part]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_id_cod_part] ON [dbo].[tblCAT83_BaseFicha5C]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_cod_cnpj] ASC,
	[considerar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_cod_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_cod_item] ON [dbo].[tblCAT83_BaseFicha5F]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC
)
INCLUDE ( 	[id_cod_item]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_id_cod_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_id_cod_item] ON [dbo].[tblCAT83_BaseFicha5F]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_id]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_id] ON [dbo].[tblCAT83_BaseFrete]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[nf_id] ASC,
	[nf_origem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_ind_id]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_ind_id] ON [dbo].[tblCAT83_BaseIndustrializacaoEncomenda]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ind_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_lancamento]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_lancamento] ON [dbo].[tblCAT83_BaseLancamentoControle]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ficha] ASC,
	[tipo] ASC
)
INCLUDE ( 	[cod_lancamento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_origem]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_origem] ON [dbo].[tblCAT83_BasePerdaSobra]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_base] ASC,
	[origem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_id_cod_item_final]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_id_cod_item_final] ON [dbo].[tblCAT83_BaseProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[num_order_prod] ASC,
	[num_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item] ON [dbo].[tblCAT83_BaseProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[cod_lote] ASC,
	[num_order_prod] ASC,
	[perce_rateio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item_periodo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item_periodo] ON [dbo].[tblCAT83_BaseProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[cod_lote] ASC,
	[num_order_prod] ASC,
	[dt_e_s] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_producao]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_producao] ON [dbo].[tblCAT83_BaseProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_lote] ASC,
	[num_order_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_producao_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_producao_item] ON [dbo].[tblCAT83_BaseProducao]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[num_order_prod] ASC,
	[cod_lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_importacao]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_importacao] ON [dbo].[tblCAT83_BaseRomaneio]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[considerar] ASC,
	[itca] ASC,
	[cod_lancamento] ASC
)
INCLUDE ( 	[num_order_prod],
	[num_doc],
	[cod_item],
	[dt_e_s],
	[desc_item],
	[qtd_atual],
	[uni_atual],
	[nf_num_doc],
	[nf_num_item]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_importacao_saida]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_importacao_saida] ON [dbo].[tblCAT83_BaseRomaneio]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[considerar] ASC,
	[cod_item] ASC,
	[itca] ASC,
	[nf_num_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_nfe]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_nfe] ON [dbo].[tblCAT83_BaseSaida]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arquivo_nfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_id_sped]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_id_sped] ON [dbo].[tblCAT83_BaseSaida]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[id_arquivo_efd] ASC,
	[id_efd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_importacao]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_importacao] ON [dbo].[tblCAT83_BaseSaida]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[considerar] ASC,
	[cod_lancamento] ASC
)
INCLUDE ( 	[cod_part],
	[ser],
	[num_doc],
	[dt_e_s],
	[num_item],
	[cod_item],
	[desc_item],
	[qtd_atual],
	[uni_atual],
	[vl_item],
	[cfop],
	[vl_bc_icms],
	[aliq_icms],
	[vl_icms],
	[cod_enquadramentolegal],
	[vl_ipi],
	[vl_pis],
	[vl_cofins],
	[vl_creditooutorgado],
	[comprovacaooperacao]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_importacao_romaneio]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_importacao_romaneio] ON [dbo].[tblCAT83_BaseSaida]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[considerar] ASC,
	[num_doc] ASC,
	[cod_item] ASC,
	[cod_lancamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item] ON [dbo].[tblCAT83_BaseSaldoInicial]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[num_item] ASC,
	[cod_lote] ASC,
	[num_order_prod] ASC,
	[num_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_dev_id_origem]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_dev_id_origem] ON [dbo].[tblCAT83_BaseVinculo]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[dev_id] ASC,
	[dev_origem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_ori_id_origem]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_ori_id_origem] ON [dbo].[tblCAT83_BaseVinculo]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ori_id] ASC,
	[ori_origem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_saldo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_saldo] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cccodigo] ASC,
	[cvgeral_numeroordem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_vl_entrada]    Script Date: 29/07/2022 14:24:42 ******/
CREATE NONCLUSTERED INDEX [idx_vl_entrada] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC
)
INCLUDE ( 	[cccodigo],
	[ccgeral_codigolancamento],
	[cventrada_quantidade],
	[cventrada_valorcusto],
	[cventrada_valoricms],
	[desc_erro]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_vl_unitario]    Script Date: 29/07/2022 14:22:59 ******/
CREATE NONCLUSTERED INDEX [idx_vl_unitario] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[ccgeral_codigolancamento] ASC
)
INCLUDE ( 	[cccodigo],
	[cvsaldo_valorunitariocusto],
	[cvsaldo_valorunitarioicms]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_saldo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_saldo] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cccodigo] ASC,
	[cvgeral_numeroordem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1d]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_1e]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_saldo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_saldo] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cccodigo] ASC,
	[cvgeral_numeroordem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_saldo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_saldo] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cccodigo] ASC,
	[cvgeral_numeroordem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2d]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2e]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2f]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_2g]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_vl_unitario]    Script Date: 29/07/2022 14:24:42 ******/
CREATE NONCLUSTERED INDEX [idx_vl_unitario] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[ccgeral_codigolancamento] ASC
)
INCLUDE ( 	[cccodigo],
	[cvsaldo_valorunitariocusto],
	[cvsaldo_valorunitarioicms]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_3c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_4c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item_2g]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item_2g] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cccodigo] ASC
)
INCLUDE ( 	[ccgeral_codigoinsumo],
	[cvgeral_quantidadeinsumoutilizada],
	[cvgeral_custototalinsumoporunidadeproduto],
	[cvgeral_valortotalicmsinsumoporunidadeproduto],
	[cvgeral_perdanormal]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5d]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5f]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5g]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5h]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_5i]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6a]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6b]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6c]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6d]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6e]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6f]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6g]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ficha]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ficha] ON [dbo].[tblCAT83_ECREDAC_ladca_c_ficha_6h]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_insumo]    Script Date: 29/07/2022 14:24:42 ******/
CREATE NONCLUSTERED INDEX [idx_insumo] ON [dbo].[tblCAT83_PreBaseArvore]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[num_order_prod] ASC,
	[cod_lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_produto_acabado]    Script Date: 29/07/2022 14:24:42 ******/
CREATE NONCLUSTERED INDEX [idx_produto_acabado] ON [dbo].[tblCAT83_PreBaseArvore]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cod_item] ASC,
	[cod_lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item_destino_mes]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item_destino_mes] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cvOrdemDTT] ASC,
	[ccCodigoOrigemDestino_CodItem] ASC,
	[ccCodigoOrigemDestino_NumItem] ASC,
	[ccCodigoOrigemDestino_CodLote] ASC,
	[ccCodigoOrigemDestino_NumOrderProd] ASC,
	[ccCodigoOrigemDestino_NumDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_item_mes]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_item_mes] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC,
	[cvOrdemDTT] ASC,
	[ccCodigo_CodItem] ASC,
	[ccCodigo_NumItem] ASC,
	[ccCodigo_CodLote] ASC,
	[ccCodigo_NumOrderProd] ASC,
	[ccCodigo_NumDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ordem_dtt]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ordem_dtt] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cvOrdemDTT] ASC
)
INCLUDE ( 	[ID],
	[cvId_Base],
	[ccOrigem],
	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento],
	[cvGeral_NumeroLancamento],
	[cvQuantidade],
	[cvCusto],
	[cvIcms],
	[cvEntrada_IPI],
	[cvEntrada_OutrosImpostosContribuicoes],
	[ccFlag_CustoIcmsNaoCalculado],
	[cdGeral_Data],
	[ccGeral_Historico],
	[ccGeral_CFOP],
	[ccGeral_TipoDocumento],
	[ccGeral_SerieDocumento],
	[ccGeral_NumeroDocumento],
	[ccGeral_NumeroDIDSI],
	[ccGeral_CodigoRemetenteDestinatario],
	[ccGeral_CodigoLancamento],
	[cvGeral_PercentualRateio2E],
	[cvGeral_PercentualRateioEnergia],
	[cdGeral_DataDocumentoFiscalExportador],
	[ccGeral_SerieDocumentoFiscalExportador],
	[ccGeral_NumeroDocumentoFiscalExportador],
	[ccGeral_NumeroDeclaracaoParaDespachoExportacao],
	[ccGeral_NumeroDeclaracaoParaDespachoExportacaoExportador],
	[ccGeral_ClassificacaoOperacaoGeradora],
	[cvGeral_ValorTotalSaidaItem],
	[cvGeral_ValorBaseCalculoItem],
	[cvGeral_ValorICMSDebitadoOperacao],
	[cvGeral_AliquotaItem],
	[cvGeral_PercentualCreditoOutorgado],
	[cvGeral_ValorCreditoOutorgado],
	[cvGeral_ValorCreditoDespesasOperacionais],
	[cvGeral_ValorCreditoServicosComunicacoes],
	[ccGeral_ComprovacaoOperacao],
	[ccGeral_Erro],
	[cvGeral_ValorPerdaNormal],
	[cvGeral_ValorPISCOFINSDebitadoOperacao],
	[cvId_BaseVinculo],
	[ccPerdaNormalFicha5B],
	[cvId_PrefichaExplosao],
	[cvId_FichaNegativo3B],
	[cvNivelCalculo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ordem_dtt_estorno]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ordem_dtt_estorno] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[MES],
	[ANO],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento],
	[cvOrdemDTT]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_busca_ordem_dtt_estorno_2]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_busca_ordem_dtt_estorno_2] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvOrdemDTT] ASC
)
INCLUDE ( 	[MES],
	[ANO],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento],
	[ccGeral_CodigoLancamento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_custo_icms]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_custo_icms] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cvNivelCalculo] ASC
)
INCLUDE ( 	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento],
	[ccGeral_CodigoLancamento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_calculo_item_flag_icms_nao_calculado]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_calculo_item_flag_icms_nao_calculado] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[ccCodigo_CodItem] ASC,
	[ccCodigo_NumItem] ASC,
	[ccCodigo_CodLote] ASC,
	[ccCodigo_NumOrderProd] ASC,
	[ccCodigo_NumDocumento] ASC
)
INCLUDE ( 	[cvQuantidade],
	[cvCusto],
	[cvIcms],
	[ccFlag_CustoIcmsNaoCalculado],
	[ccGeral_CodigoLancamento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_cod_lancamento_item_origem_destino]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_cod_lancamento_item_origem_destino] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvOrdemDTT] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[MES],
	[ANO],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_codigolancamento_item]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_codigolancamento_item] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_codlancamento_ordemdtt]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_codlancamento_ordemdtt] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento],
	[cvOrdemDTT]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_detalhe]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_detalhe] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC
)
INCLUDE ( 	[MES],
	[ANO],
	[ccGeral_CodigoLancamento],
	[cvQuantidade],
	[cvCusto],
	[cvIcms],
	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_mes_ano]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_mes_ano] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ANO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nivel_calculo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_nivel_calculo] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[cvNivelCalculo] ASC
)
INCLUDE ( 	[ID],
	[cvQuantidade],
	[cvCusto],
	[cvIcms],
	[ccGeral_CodigoLancamento],
	[cvGeral_ValorPerdaNormal]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nivel_calculo_2]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_nivel_calculo_2] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cvNivelCalculo] ASC
)
INCLUDE ( 	[ccCodigo_NumOrderProd],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumDocumento],
	[ccGeral_CodigoLancamento],
	[cvId_BaseVinculo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nivel_calculo_rateio]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_nivel_calculo_rateio] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ccOrigem] ASC,
	[cvId_BaseVinculo] ASC,
	[cvNivelCalculo] ASC
)
INCLUDE ( 	[ID],
	[cvQuantidade],
	[cvCusto],
	[cvIcms],
	[ccGeral_CodigoLancamento],
	[cvGeral_ValorPerdaNormal]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nivel_calculo_vinculo]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_nivel_calculo_vinculo] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cvNivelCalculo] ASC
)
INCLUDE ( 	[ID],
	[cvCusto],
	[cvIcms],
	[ccGeral_CodigoLancamento],
	[cvId_BaseVinculo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_ordem_dtt_codlancamento]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_ordem_dtt_codlancamento] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC,
	[cvOrdemDTT] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[ID],
	[ccCodigo_CodItem],
	[ccCodigo_NumItem],
	[ccCodigo_CodLote],
	[ccCodigo_NumOrderProd],
	[ccCodigo_NumDocumento]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_participante]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_participante] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[MES] ASC,
	[ANO] ASC
)
INCLUDE ( 	[ccGeral_CodigoRemetenteDestinatario]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_rateio]    Script Date: 10/05/2022 11:14:56 ******/
CREATE NONCLUSTERED INDEX [idx_rateio] ON [dbo].[tblCAT83_PreFicha]
(
	[PRO_CODIGO] ASC,
	[CNPJ] ASC,
	[ccGeral_CodigoLancamento] ASC
)
INCLUDE ( 	[MES],
	[ANO],
	[ccCodigoOrigemDestino_CodItem],
	[ccCodigoOrigemDestino_NumItem],
	[ccCodigoOrigemDestino_CodLote],
	[ccCodigoOrigemDestino_NumOrderProd],
	[ccCodigoOrigemDestino_NumDocumento],
	[cvCusto]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
