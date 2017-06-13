USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_periodo]    Script Date: 06/12/2017 23:01:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_periodo]') AND type in (N'U'))
DROP TABLE [dbo].[tb_periodo]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_periodo]    Script Date: 06/12/2017 23:01:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_periodo](
	[cd_periodo] [int] IDENTITY(1,1) NOT NULL,
	[dt_inicio] [datetime] NOT NULL,
	[dt_fim] [datetime] NULL,
	[fg_excluido] [bit] NOT NULL,
	[ind_aprovado] [smallint] NOT NULL,
	[dt_aprovado_inicio] [datetime] NULL,
	[dt_aprovado_fim] [datetime] NULL,
 CONSTRAINT [PK_tb_periodo] PRIMARY KEY CLUSTERED 
(
	[cd_periodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

