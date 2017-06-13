USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_setor]    Script Date: 06/08/2017 23:10:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_setor]') AND type in (N'U'))
DROP TABLE [dbo].[tb_setor]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_setor]    Script Date: 06/08/2017 23:10:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_setor](
	[cd_setor] [int] NOT NULL,
	[ds_setor] [varchar](255) NOT NULL,
	[fg_excluido] [bit] NOT NULL,
 CONSTRAINT [PK_tb_setor] PRIMARY KEY CLUSTERED 
(
	[cd_setor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

