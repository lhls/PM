USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_usuario]    Script Date: 06/04/2017 22:18:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_tipo_usuario]') AND type in (N'U'))
DROP TABLE [dbo].[tb_tipo_usuario]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_tipo_usuario]    Script Date: 06/04/2017 22:18:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_tipo_usuario](
	[cd_tipo_usuario] [int] NOT NULL,
	[ds_tipo_usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_tipo_usuario] PRIMARY KEY CLUSTERED 
(
	[cd_tipo_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


