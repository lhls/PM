USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_cargo_tb_setor]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_cargo]'))
ALTER TABLE [dbo].[tb_cargo] DROP CONSTRAINT [FK_tb_cargo_tb_setor]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_cargo]    Script Date: 06/08/2017 23:11:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_cargo]') AND type in (N'U'))
DROP TABLE [dbo].[tb_cargo]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_cargo]    Script Date: 06/08/2017 23:11:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_cargo](
	[cd_cargo] [int] IDENTITY(1,1) NOT NULL,
	[ds_cargo] [varchar](255) NOT NULL,
	[vlr_salario] [numeric](12, 2) NOT NULL,
	[nr_carga_horaria] [int] NOT NULL,
	[cd_setor] [int] NOT NULL,
	[fg_excluido] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cargo] PRIMARY KEY CLUSTERED 
(
	[cd_cargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_cargo]  WITH CHECK ADD  CONSTRAINT [FK_tb_cargo_tb_setor] FOREIGN KEY([cd_setor])
REFERENCES [dbo].[tb_setor] ([cd_setor])
GO

ALTER TABLE [dbo].[tb_cargo] CHECK CONSTRAINT [FK_tb_cargo_tb_setor]
GO

