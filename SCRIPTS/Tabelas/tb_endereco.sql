USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_endereco]    Script Date: 06/06/2017 22:41:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_endereco]') AND type in (N'U'))
DROP TABLE [dbo].[tb_endereco]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_endereco]    Script Date: 06/06/2017 22:41:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_endereco](
	[cd_endereco] [int] IDENTITY(1,1) NOT NULL,
	[ds_logradouro] [varchar](255) NOT NULL,
	[nr_numero] [int] NOT NULL,
	[ds_bairro] [varchar](255) NOT NULL,
	[ds_complemento] [varchar](100) NULL,
	[nr_cep] [char](8) NOT NULL,
	[cd_municipio] [int] NOT NULL,
	[cd_uf] [int] NOT NULL,
 CONSTRAINT [PK_tb_endereco] PRIMARY KEY CLUSTERED 
(
	[cd_endereco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


