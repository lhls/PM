USE [DbTcc]
GO

/****** Object:  Table [dbo].[tblLogin]    Script Date: 06/04/2017 21:58:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLogin]') AND type in (N'U'))
DROP TABLE [dbo].[tblLogin]
GO

USE [DbTcc]
GO

/****** Object:  Table [dbo].[tblLogin]    Script Date: 06/04/2017 21:58:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblLogin](
	[idLogin] [int] IDENTITY(1,1) NOT NULL,
	[strLogin] [varchar](50) NOT NULL,
	[strSenha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[idLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


