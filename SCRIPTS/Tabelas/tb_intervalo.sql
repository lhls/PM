USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_intervalo_tb_periodo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_intervalo]'))
ALTER TABLE [dbo].[tb_intervalo] DROP CONSTRAINT [FK_tb_intervalo_tb_periodo]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_intervalo_tb_tipo_intervalo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_intervalo]'))
ALTER TABLE [dbo].[tb_intervalo] DROP CONSTRAINT [FK_tb_intervalo_tb_tipo_intervalo]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_intervalo]    Script Date: 06/12/2017 23:01:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_intervalo]') AND type in (N'U'))
DROP TABLE [dbo].[tb_intervalo]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_intervalo]    Script Date: 06/12/2017 23:01:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_intervalo](
	[cd_intervalo] [int] IDENTITY(1,1) NOT NULL,
	[dt_intervalo_inicio] [datetime] NOT NULL,
	[dt_intervalo_fim] [datetime] NULL,
	[cd_tipo_intervalo] [int] NOT NULL,
	[cd_periodo] [int] NOT NULL,
 CONSTRAINT [PK_tb_intervalo] PRIMARY KEY CLUSTERED 
(
	[cd_intervalo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_intervalo]  WITH CHECK ADD  CONSTRAINT [FK_tb_intervalo_tb_periodo] FOREIGN KEY([cd_periodo])
REFERENCES [dbo].[tb_periodo] ([cd_periodo])
GO

ALTER TABLE [dbo].[tb_intervalo] CHECK CONSTRAINT [FK_tb_intervalo_tb_periodo]
GO

ALTER TABLE [dbo].[tb_intervalo]  WITH CHECK ADD  CONSTRAINT [FK_tb_intervalo_tb_tipo_intervalo] FOREIGN KEY([cd_tipo_intervalo])
REFERENCES [dbo].[tb_tipo_intervalo] ([cd_tipo_intervalo])
GO

ALTER TABLE [dbo].[tb_intervalo] CHECK CONSTRAINT [FK_tb_intervalo_tb_tipo_intervalo]
GO

