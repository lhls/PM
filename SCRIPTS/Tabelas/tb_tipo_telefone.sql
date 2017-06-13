USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_telefone]    Script Date: 06/08/2017 22:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_tipo_telefone]') AND type in (N'U'))
DROP TABLE [dbo].[tb_tipo_telefone]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_telefone]    Script Date: 06/08/2017 22:43:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_tipo_telefone](
	[cd_tipo_telefone] [int] NOT NULL,
	[ds_tipo_telefone] [int] NOT NULL,
 CONSTRAINT [PK_tb_tipo_telefone] PRIMARY KEY CLUSTERED 
(
	[cd_tipo_telefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


