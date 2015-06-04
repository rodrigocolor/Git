Imports System.Data.SqlClient

Public Class Alunos
    Private Sub Alunos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'CadastroDBDataSet.Alunos' table. You can move, or remove it, as needed.
        Me.AlunosTableAdapter.Fill(Me.CadastroDBDataSet.Alunos)

    End Sub
    Private Sub limpacampos()
        NomeTextEdit.Text = ""
        EnderecoTextEdit.Text = ""
        CidadeTextEdit.Text = ""
        TelefoneTextEdit.Text = ""
        IdadeSpinEdit.Text = ""
        SerieSpinEdit.Text = ""

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim msg As String = ""
        Dim sql As String = ""
        Dim strConn As String = My.Settings.CadastroDBConnectionString.ToString()
        If Button2.Text = "Incluir" Then
            Button2.Text = "Salvar"
            ListBox1.Enabled = False
            limpacampos()
            NomeTextEdit.Focus()
        ElseIf Button2.Text = "Salvar" Then
            sql = "INSERT INTO Alunos (nome, endereco, cidade, estado,telefone, idade, serie) VALUES('" _
                                            + NomeTextEdit.Text + "','" _
                                            + EnderecoTextEdit.Text + "','" _
                                            + CidadeTextEdit.Text + "','" _
                                            + EstadoTextEdit.Text + "','" _
                                            + TelefoneTextEdit.Text + "','" _
                                            + IdadeSpinEdit.Text + "','" _
                                            + SerieSpinEdit.Text + "')"

            Dim con As New SqlConnection(strConn)
            Dim cmd As New SqlCommand(sql, con)
            Try
                con.Open()
                cmd.ExecuteNonQuery()
                MsgBox("Aluno incluido com sucesso.")
                Button2.Text = "Incluir"
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            ListBox1.Enabled = True
        End If



    End Sub
End Class