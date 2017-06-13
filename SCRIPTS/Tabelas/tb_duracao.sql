USE [DbTcc]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tb_duracao_tb_duracao]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_duracao]'))
ALTER TABLE [dbo].[tb_duracao] DROP CONSTRAINT [FK_tb_duracao_tb_duracao]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_duracao]    Script Date: 06/12/2017 23:05:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_duracao]') AND type in (N'U'))
DROP TABLE [dbo].[tb_duracao]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_duracao]    Script Date: 06/12/2017 23:05:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_duracao](
	[cd_duracao] [int] IDENTITY(1,1) NOT NULL,
	[nr_duracao] [int] NOT NULL,
	[nr_duracao_extra] [int] NULL,
	[nr_duracao_aprovada] [int] NULL,
	[cd_periodo] [int] NOT NULL,
 CONSTRAINT [PK_tb_duracao] PRIMARY KEY CLUSTERED 
(
	[cd_duracao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_duracao]  WITH CHECK ADD  CONSTRAINT [FK_tb_duracao_tb_duracao] FOREIGN KEY([cd_periodo])
REFERENCES [dbo].[tb_periodo] ([cd_periodo])
GO

ALTER TABLE [dbo].[tb_duracao] CHECK CONSTRAINT [FK_tb_duracao_tb_duracao]
GO

