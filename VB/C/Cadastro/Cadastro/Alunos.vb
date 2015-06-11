Imports System.Data.SqlClient

Public Class Alunos
    Private Sub calculaNumeroRegistros()
        Dim strConn As String = My.Settings.CadastroDBConnectionString.ToString()
        Dim strSQL As String = "Select Count(*) From Alunos"
        'define objeto connection e command
        Dim con As New SqlConnection(strConn)
        Dim cmd As New SqlCommand(strSQL, con)
        con.Open()
        Try
            Label1.Text = "Alunos Cadastrados: " & cmd.ExecuteScalar.ToString
        Catch ex As Exception
            MsgBox("Erro ao calcular numero de registros. Erro : " & ex.Message)
        Finally
            con.Close()
        End Try
    End Sub

    Private Sub Alunos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        calculaNumeroRegistros()
    End Sub
    Private Sub limpacampos()
        NomeTextBox.Text = ""
        EnderecoTextBox.Text = ""
        CidadeTextBox.Text = ""
        TelefoneTextBox.Text = ""
        IdadeTextBox.Text = ""
        SerieTextBox.Text = ""
        EstadoTextBox.Text = ""

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim msg As String = ""
        Dim sql As String = ""
        Dim strConn As String = My.Settings.CadastroDBConnectionString.ToString()
        If Button2.Text = "Incluir" Then
            Button2.Text = "Salvar"
            ListBox1.Enabled = False
            limpacampos()
            NomeTextBox.Focus()
        ElseIf Button2.Text = "Salvar" Then
            sql = "INSERT INTO Alunos (nome, endereco, cidade, estado,telefone, idade, serie) VALUES('" _
                                            + NomeTextBox.Text + "','" _
                                            + EnderecoTextBox.Text + "','" _
                                            + CidadeTextBox.Text + "','" _
                                            + EstadoTextBox.Text + "','" _
                                            + TelefoneTextBox.Text + "','" _
                                            + IdadeTextBox.Text + "','" _
                                            + SerieTextBox.Text + "')"

            Dim con As New SqlConnection(strConn)
            Dim cmd As New SqlCommand(sql, con)
            Try
                con.Open()
                cmd.ExecuteNonQuery()
                MsgBox("Aluno incluido com sucesso.")
                calculaNumeroRegistros()
                Button2.Text = "Incluir"
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            ListBox1.Enabled = True
        End If



    End Sub

    Private Sub procurarAluno_Click(sender As Object, e As EventArgs) Handles procurarAluno.Click
        If buscaAluno.Text.Trim.Length > 1 Then
            ErrorProvider1.SetError(buscaAluno, "")
            Dim da As CadastroDBDataSetTableAdapters.AlunosTableAdapter = New CadastroDBDataSetTableAdapters.AlunosTableAdapter
            ListBox1.DataSource = da.GetDataByNome("%" & buscaAluno.Text & "%")
            ListBox1.DisplayMember = "nome"
            ListBox1.ValueMember = "idAluno"
            ListBox1.Refresh()
        Else
            ErrorProvider1.SetError(buscaAluno, "Informe o nome do aluno com no mínimo 2 caracteres...")
        End If

    End Sub
    Private Sub carregaAlunos(ByVal idAluno As Integer)

        Dim strConn As String = My.Settings.CadastroDBConnectionString.ToString()
        Dim strSQL As String = "Select * from alunos Where idAluno = " & idAluno
        Dim dr As SqlDataReader

        'define objeto connection e command
        Dim con As New SqlConnection(strConn)
        Dim cmd As New SqlCommand(strSQL, con)
        Try
            con.Open()

            dr = cmd.ExecuteReader

            If (dr.HasRows) Then
                dr.Read()


                NomeTextBox.Text = dr("nome").ToString
                EnderecoTextBox.Text = dr("endereco").ToString
                CidadeTextBox.Text = dr("cidade").ToString
                EstadoTextBox.Text = dr("estado").ToString
                TelefoneTextBox.Text = dr("telefone").ToString
                SerieTextBox.Text = dr("idade").ToString
                IdadeTextBox.Text = dr("serie").ToString


            End If
        Catch ex As Exception
            MsgBox("Erro ao obter dados dos clientes. Erro : " & ex.Message)
        Finally
            con.Close()
        End Try

    End Sub

   
    Private Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged
        If (ListBox1.SelectedValue.ToString() <> "System.Data.DataRowView") Then
            carregaAlunos(CInt(Me.ListBox1.SelectedValue))
        End If
    End Sub

    Private Sub AlunosBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs)
        Me.Validate()
        Me.AlunosBindingSource.EndEdit()
        Me.TableAdapterManager1.UpdateAll(Me.CadastroDBDataSet1)

    End Sub
End Class