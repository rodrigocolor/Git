Imports System.Data.SqlClient

Public Class Disciplinas
    Private Sub DisciplinaBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs)
        Me.Validate()
        Me.DisciplinaBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.CadastroDBDataSet)

    End Sub

    Private Sub Disciplinas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'CadastroDBDataSet.Disciplina' table. You can move, or remove it, as needed.
        Me.DisciplinaTableAdapter.Fill(Me.CadastroDBDataSet.Disciplina)
        'TODO: This line of code loads data into the 'CadastroDBDataSet.Disciplina' table. You can move, or remove it, as needed.
        Me.DisciplinaTableAdapter.Fill(Me.CadastroDBDataSet.Disciplina)

    End Sub


    Private Sub limpacampos()
        DescricaoTextEdit.Text = ""
        TurnoTextEdit.Text = ""
        TempoSpinEdit.Text = ""
        StemestreSpinEdit.Text = ""
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim msg As String = ""
        Dim sql As String = ""
        Dim strConn As String = My.Settings.CadastroDBConnectionString.ToString()
        If Button2.Text = "Incluir" Then
            Button2.Text = "Salvar"
            ListBox1.Enabled = False
            limpacampos()
            DescricaoTextEdit.Focus()
        ElseIf Button2.Text = "Salvar" Then
            sql = "INSERT INTO Disiplina (descricao, turno, temp, stemestre) VALUES('" _
                                            + DescricaoTextEdit.Text + "','" _
                                            + TurnoTextEdit.Text + "','" _
                                            + TempoSpinEdit.Text + "','" _
                                            + StemestreSpinEdit.Text + "')"

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