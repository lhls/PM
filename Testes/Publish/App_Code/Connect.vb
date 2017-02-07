Imports System
Imports System.Configuration
Imports System.Collections
Imports System.Data.SqlClient
Imports System.Data


Public Class Connect
    Private strCon As String = "Password=sofisa1612;Persist Security Info=True;User ID=admin;Initial Catalog=DbTcc;Data Source=dbtccinstance.cmdackog8otk.sa-east-1.rds.amazonaws.com"
    Private conn As SqlConnection

    ''' <summary>
    ''' Construtor
    ''' </summary>
    ''' <remarks>Monta a conexão</remarks>
    Public Sub New()
        conn = New SqlConnection(strCon)
    End Sub

    ''' <summary>
    ''' Faz a consulta no banco e recorda um DataReader(Tabela com os dados)
    ''' </summary>
    ''' <param name="cmdType">Tipo de comando(CommandType) ex.: StoredProcedure</param>
    ''' <param name="cmdText">Texto à ser executado no Sql</param>
    ''' <param name="cmdParms">Array com os parametros à serem passados</param>
    ''' <returns>DataReader</returns>
    ''' <remarks></remarks>
    Public Function ExecuteReader(ByVal cmdType As CommandType, ByVal cmdText As String, Optional ByVal cmdParms As SqlParameter() = Nothing) As SqlDataReader
        Dim cmd As SqlCommand = New SqlCommand
        Try
            PrepareCommand(cmd, cmdType, cmdText, cmdParms)

            If Not conn.State = ConnectionState.Open Then
                'Abre a conexão caso ela esteja fechada
                conn.Open()
            End If

            Return cmd.ExecuteReader()

            cmd = Nothing
            conn.Close()

        Catch ex As Exception
            Throw New Exception("ExecuteReader(): " & ex.Message, ex)
        End Try
    End Function

    ''' <summary>
    ''' Função para configurar o comando que será executado
    ''' </summary>
    ''' <param name="cmd">Classe com comando a ser executado</param>
    ''' <param name="cmdType">Tipo de comando(CommandType) ex.: StoredProcedure</param>
    ''' <param name="cmdText">Texto à ser executado no Sql</param>
    ''' <param name="cmdParms">Array com os parametros à serem passados</param>
    ''' <remarks></remarks>
    Public Sub PrepareCommand(ByRef cmd As SqlCommand, ByRef cmdType As CommandType, ByRef cmdText As String, ByRef cmdParms As SqlParameter())
        Try
            cmd.Connection = conn
            cmd.CommandText = cmdText
            cmd.CommandType = cmdType
            If Not (IsNothing(cmdParms)) Then
                For Each parm As SqlParameter In cmdParms
                    cmd.Parameters.Add(parm)
                Next
            End If
        Catch ex As Exception
            Throw New Exception("PrepareCommand(): " & ex.Message, ex)
        End Try
    End Sub

End Class