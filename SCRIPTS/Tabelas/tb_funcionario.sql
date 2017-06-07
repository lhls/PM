USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_funcionario_tb_endereco]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_funcionario]'))
ALTER TABLE [dbo].[tb_funcionario] DROP CONSTRAINT [FK_tb_funcionario_tb_endereco]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_funcionario]    Script Date: 06/06/2017 22:41:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_funcionario]') AND type in (N'U'))
DROP TABLE [dbo].[tb_funcionario]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_funcionario]    Script Date: 06/06/2017 22:41:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_funcionario](
	[cd_funcionario] [int] IDENTITY(1,1) NOT NULL,
	[ds_nome] [varchar](255) NOT NULL,
	[nr_cpf] [char](11) NOT NULL,
	[ds_rg] [varchar](10) NULL,
	[cd_endereco] [int] NOT NULL,
	[cd_cargo] [int] NOT NULL,
	[cd_telefone] [int] NULL,
	[cd_celular] [int] NULL,
 CONSTRAINT [PK_tb_funcionario] PRIMARY KEY CLUSTERED 
(
	[cd_funcionario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_funcionario]  WITH CHECK ADD  CONSTRAINT [FK_tb_funcionario_tb_endereco] FOREIGN KEY([cd_endereco])
REFERENCES [dbo].[tb_endereco] ([cd_endereco])
GO

ALTER TABLE [dbo].[tb_funcionario] CHECK CONSTRAINT [FK_tb_funcionario_tb_endereco]
GO


