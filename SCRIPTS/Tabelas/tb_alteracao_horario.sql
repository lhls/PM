USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_alteracao_horario_tblLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_alteracao_horario]'))
ALTER TABLE [dbo].[tb_alteracao_horario] DROP CONSTRAINT [FK_tb_alteracao_horario_tblLogin]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_alteracao_horario]    Script Date: 06/04/2017 22:44:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_alteracao_horario]') AND type in (N'U'))
DROP TABLE [dbo].[tb_alteracao_horario]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_alteracao_horario]    Script Date: 06/04/2017 22:44:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_alteracao_horario](
	[cd_alteracao_horario] [int] IDENTITY(1,1) NOT NULL,
	[cd_login_alteracao] [int] NOT NULL,
	[xml_antes] [xml] NOT NULL,
	[xml_depois] [xml] NOT NULL,
 CONSTRAINT [PK_tb_alteracao_horario] PRIMARY KEY CLUSTERED 
(
	[cd_alteracao_horario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_alteracao_horario]  WITH CHECK ADD  CONSTRAINT [FK_tb_alteracao_horario_tblLogin] FOREIGN KEY([cd_login_alteracao])
REFERENCES [dbo].[tblLogin] ([cd_login])
GO

ALTER TABLE [dbo].[tb_alteracao_horario] CHECK CONSTRAINT [FK_tb_alteracao_horario_tblLogin]
GO


