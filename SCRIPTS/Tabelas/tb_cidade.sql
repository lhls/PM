USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_cidade_tb_estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_cidade]'))
ALTER TABLE [dbo].[tb_cidade] DROP CONSTRAINT [FK_tb_cidade_tb_estado]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_cidade]    Script Date: 06/06/2017 23:07:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_cidade]') AND type in (N'U'))
DROP TABLE [dbo].[tb_cidade]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_cidade]    Script Date: 06/06/2017 23:07:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_cidade](
	[cd_cidade] [int] NOT NULL,
	[ds_cidade] [varchar](255) NOT NULL,
	[codigo_ibge] [int] NULL,
	[cd_estado] [int] NOT NULL,
	[populacao_2010] [int] NULL,
	[densidade_demo] [numeric](10, 2) NULL,
	[gentilico] [varchar](255) NULL,
	[area] [numeric](12, 3) NULL,
 CONSTRAINT [PK_tb_cidade] PRIMARY KEY CLUSTERED 
(
	[cd_cidade] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_cidade]  WITH CHECK ADD  CONSTRAINT [FK_tb_cidade_tb_estado] FOREIGN KEY([cd_estado])
REFERENCES [dbo].[tb_estado] ([cd_estado])
GO

ALTER TABLE [dbo].[tb_cidade] CHECK CONSTRAINT [FK_tb_cidade_tb_estado]
GO


