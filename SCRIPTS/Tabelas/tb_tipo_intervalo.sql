USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_intervalo]    Script Date: 06/12/2017 23:01:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_tipo_intervalo]') AND type in (N'U'))
DROP TABLE [dbo].[tb_tipo_intervalo]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_intervalo]    Script Date: 06/12/2017 23:01:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_tipo_intervalo](
	[cd_tipo_intervalo] [int] NOT NULL,
	[ds_tipo_intervalo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_tipo_intervalo] PRIMARY KEY CLUSTERED 
(
	[cd_tipo_intervalo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

