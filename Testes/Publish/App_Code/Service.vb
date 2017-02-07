Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class Service
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <System.Web.Services.WebMethod()> _
    Public Function FahrenheitToCelsius(ByVal Fahrenheit As Double) _
        As Boolean
        Return ((Fahrenheit - 32) * 5) / 9
    End Function

    <WebMethod()> _
    Public Function validaUsuario(ByVal usuario As String, ByVal senha As String) As Boolean
        Dim DAO As New Connect
        Dim SqlParms(1) As SqlClient.SqlParameter

        SqlParms(0) = New SqlClient.SqlParameter("@USU_LOGIN", SqlDbType.VarChar, 10)
        SqlParms(0).Value = usuario

        SqlParms(1) = New SqlClient.SqlParameter("@USU_SENHA", SqlDbType.VarChar, 10)
        SqlParms(1).Value = senha

        Return DAO.ExecuteReader(CommandType.StoredProcedure, "VALIDA_USUARIO", SqlParms).HasRows
    End Function

End Class
