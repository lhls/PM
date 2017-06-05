USE [DbTcc]
GO

/****** Object:  StoredProcedure [dbo].[pr_login]    Script Date: 06/04/2017 22:06:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pr_login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pr_login]
GO

USE [DbTcc]
GO

/****** Object:  StoredProcedure [dbo].[pr_login]    Script Date: 06/04/2017 22:06:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luiz Lira>
-- Create date: <2017-05-24 20:38:43.840>
-- Description:	<Procedure que faz o login>
-- =============================================
CREATE PROCEDURE [dbo].[pr_login] 
	-- Add the parameters for the stored procedure here
	@login varchar(50),
	@senha varchar(50)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT cd_login,
			'Sucesso' as ds_msg
	from tblLogin
	where ds_login = @login
	and ds_senha = @senha
	
	union
	
	SELECT isnull(cd_login, 0) as cd_login,
			'Senha Inválida' as ds_msg
	from tblLogin
	where ds_login = @login
	and ds_senha <> @senha
	
	union
	
	SELECT isnull(cd_login, 0) as cd_login,
			'Login Inválido' as ds_msg
	from tblLogin
	where ds_login <> @login
	
END

GO


