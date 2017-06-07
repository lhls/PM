USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_estado]    Script Date: 06/06/2017 23:07:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_estado]') AND type in (N'U'))
DROP TABLE [dbo].[tb_estado]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tb_estado]    Script Date: 06/06/2017 23:07:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tb_estado](
	[cd_estado] [int] NOT NULL,
	[ds_estado] [varchar](100) NOT NULL,
	[ds_sigla] [char](2) NOT NULL,
 CONSTRAINT [PK_tb_estado] PRIMARY KEY CLUSTERED 
(
	[cd_estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


