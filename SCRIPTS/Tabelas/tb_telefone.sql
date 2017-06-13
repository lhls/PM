USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_telefone_tb_tipo_telefone]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_telefone]'))
ALTER TABLE [dbo].[tb_telefone] DROP CONSTRAINT [FK_tb_telefone_tb_tipo_telefone]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_telefone_nr_DDI]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_telefone] DROP CONSTRAINT [DF_tb_telefone_nr_DDI]
END

GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_telefone]    Script Date: 06/08/2017 22:43:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_telefone]') AND type in (N'U'))
DROP TABLE [dbo].[tb_telefone]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_telefone]    Script Date: 06/08/2017 22:43:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_telefone](
	[cd_telefone] [int] IDENTITY(1,1) NOT NULL,
	[nr_DDI] [char](2) NULL,
	[nr_DDD] [char](2) NULL,
	[nr_telefone] [varchar](9) NOT NULL,
	[cd_tipo_telefone] [int] NOT NULL,
 CONSTRAINT [PK_tb_telefone] PRIMARY KEY CLUSTERED 
(
	[cd_telefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tb_telefone]  WITH CHECK ADD  CONSTRAINT [FK_tb_telefone_tb_tipo_telefone] FOREIGN KEY([cd_tipo_telefone])
REFERENCES [dbo].[tb_tipo_telefone] ([cd_tipo_telefone])
GO

ALTER TABLE [dbo].[tb_telefone] CHECK CONSTRAINT [FK_tb_telefone_tb_tipo_telefone]
GO

ALTER TABLE [dbo].[tb_telefone] ADD  CONSTRAINT [DF_tb_telefone_nr_DDI]  DEFAULT ((55)) FOR [nr_DDI]
GO


