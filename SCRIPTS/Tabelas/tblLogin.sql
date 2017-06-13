USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblLogin_tb_tipo_usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLogin]'))
ALTER TABLE [dbo].[tblLogin] DROP CONSTRAINT [FK_tblLogin_tb_tipo_usuario]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tblLogin]    Script Date: 06/08/2017 23:06:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLogin]') AND type in (N'U'))
DROP TABLE [dbo].[tblLogin]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tblLogin]    Script Date: 06/08/2017 23:06:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblLogin](
	[cd_login] [int] IDENTITY(1,1) NOT NULL,
	[ds_login] [varchar](50) NOT NULL,
	[ds_Senha] [varchar](50) NOT NULL,
	[cd_tipo_usuario] [int] NOT NULL,
	[fg_excluido] [bit] NOT NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[cd_login] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tblLogin]  WITH CHECK ADD  CONSTRAINT [FK_tblLogin_tb_tipo_usuario] FOREIGN KEY([cd_tipo_usuario])
REFERENCES [dbo].[tb_tipo_usuario] ([cd_tipo_usuario])
GO

ALTER TABLE [dbo].[tblLogin] CHECK CONSTRAINT [FK_tblLogin_tb_tipo_usuario]
GO

