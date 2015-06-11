<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Alunos
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim NomeLabel1 As System.Windows.Forms.Label
        Dim EnderecoLabel1 As System.Windows.Forms.Label
        Dim CidadeLabel1 As System.Windows.Forms.Label
        Dim EstadoLabel1 As System.Windows.Forms.Label
        Dim TelefoneLabel1 As System.Windows.Forms.Label
        Dim IdadeLabel1 As System.Windows.Forms.Label
        Dim SerieLabel1 As System.Windows.Forms.Label
        Me.procurarAluno = New System.Windows.Forms.Button()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.buscaAluno = New System.Windows.Forms.TextBox()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ErrorProvider1 = New System.Windows.Forms.ErrorProvider(Me.components)
        Me.CadastroDBDataSet1 = New Cadastro.CadastroDBDataSet()
        Me.AlunosBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.AlunosTableAdapter1 = New Cadastro.CadastroDBDataSetTableAdapters.AlunosTableAdapter()
        Me.TableAdapterManager1 = New Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager()
        Me.NomeTextBox = New System.Windows.Forms.TextBox()
        Me.EnderecoTextBox = New System.Windows.Forms.TextBox()
        Me.CidadeTextBox = New System.Windows.Forms.TextBox()
        Me.EstadoTextBox = New System.Windows.Forms.TextBox()
        Me.TelefoneTextBox = New System.Windows.Forms.TextBox()
        Me.IdadeTextBox = New System.Windows.Forms.TextBox()
        Me.SerieTextBox = New System.Windows.Forms.TextBox()
        NomeLabel1 = New System.Windows.Forms.Label()
        EnderecoLabel1 = New System.Windows.Forms.Label()
        CidadeLabel1 = New System.Windows.Forms.Label()
        EstadoLabel1 = New System.Windows.Forms.Label()
        TelefoneLabel1 = New System.Windows.Forms.Label()
        IdadeLabel1 = New System.Windows.Forms.Label()
        SerieLabel1 = New System.Windows.Forms.Label()
        CType(Me.ErrorProvider1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.CadastroDBDataSet1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.AlunosBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'NomeLabel1
        '
        NomeLabel1.AutoSize = True
        NomeLabel1.Location = New System.Drawing.Point(206, 55)
        NomeLabel1.Name = "NomeLabel1"
        NomeLabel1.Size = New System.Drawing.Size(36, 13)
        NomeLabel1.TabIndex = 41
        NomeLabel1.Text = "nome:"
        '
        'EnderecoLabel1
        '
        EnderecoLabel1.AutoSize = True
        EnderecoLabel1.Location = New System.Drawing.Point(206, 81)
        EnderecoLabel1.Name = "EnderecoLabel1"
        EnderecoLabel1.Size = New System.Drawing.Size(55, 13)
        EnderecoLabel1.TabIndex = 43
        EnderecoLabel1.Text = "endereco:"
        '
        'CidadeLabel1
        '
        CidadeLabel1.AutoSize = True
        CidadeLabel1.Location = New System.Drawing.Point(206, 107)
        CidadeLabel1.Name = "CidadeLabel1"
        CidadeLabel1.Size = New System.Drawing.Size(42, 13)
        CidadeLabel1.TabIndex = 45
        CidadeLabel1.Text = "cidade:"
        '
        'EstadoLabel1
        '
        EstadoLabel1.AutoSize = True
        EstadoLabel1.Location = New System.Drawing.Point(206, 133)
        EstadoLabel1.Name = "EstadoLabel1"
        EstadoLabel1.Size = New System.Drawing.Size(42, 13)
        EstadoLabel1.TabIndex = 47
        EstadoLabel1.Text = "estado:"
        '
        'TelefoneLabel1
        '
        TelefoneLabel1.AutoSize = True
        TelefoneLabel1.Location = New System.Drawing.Point(206, 159)
        TelefoneLabel1.Name = "TelefoneLabel1"
        TelefoneLabel1.Size = New System.Drawing.Size(48, 13)
        TelefoneLabel1.TabIndex = 49
        TelefoneLabel1.Text = "telefone:"
        '
        'IdadeLabel1
        '
        IdadeLabel1.AutoSize = True
        IdadeLabel1.Location = New System.Drawing.Point(206, 185)
        IdadeLabel1.Name = "IdadeLabel1"
        IdadeLabel1.Size = New System.Drawing.Size(36, 13)
        IdadeLabel1.TabIndex = 51
        IdadeLabel1.Text = "idade:"
        '
        'SerieLabel1
        '
        SerieLabel1.AutoSize = True
        SerieLabel1.Location = New System.Drawing.Point(206, 211)
        SerieLabel1.Name = "SerieLabel1"
        SerieLabel1.Size = New System.Drawing.Size(32, 13)
        SerieLabel1.TabIndex = 53
        SerieLabel1.Text = "serie:"
        '
        'procurarAluno
        '
        Me.procurarAluno.Location = New System.Drawing.Point(186, 19)
        Me.procurarAluno.Name = "procurarAluno"
        Me.procurarAluno.Size = New System.Drawing.Size(56, 23)
        Me.procurarAluno.TabIndex = 0
        Me.procurarAluno.Text = "Procurar"
        Me.procurarAluno.UseVisualStyleBackColor = True
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(12, 48)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(162, 277)
        Me.ListBox1.TabIndex = 1
        '
        'buscaAluno
        '
        Me.buscaAluno.Location = New System.Drawing.Point(12, 22)
        Me.buscaAluno.Name = "buscaAluno"
        Me.buscaAluno.Size = New System.Drawing.Size(156, 20)
        Me.buscaAluno.TabIndex = 2
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(12, 369)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 20
        Me.Button2.Text = "Incluir"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(103, 369)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 23)
        Me.Button4.TabIndex = 21
        Me.Button4.Text = "Editar"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(191, 369)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 22
        Me.Button3.Text = "Excluir"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(14, 332)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(0, 13)
        Me.Label1.TabIndex = 38
        '
        'ErrorProvider1
        '
        Me.ErrorProvider1.ContainerControl = Me
        '
        'CadastroDBDataSet1
        '
        Me.CadastroDBDataSet1.DataSetName = "CadastroDBDataSet"
        Me.CadastroDBDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'AlunosBindingSource
        '
        Me.AlunosBindingSource.DataMember = "Alunos"
        Me.AlunosBindingSource.DataSource = Me.CadastroDBDataSet1
        '
        'AlunosTableAdapter1
        '
        Me.AlunosTableAdapter1.ClearBeforeFill = True
        '
        'TableAdapterManager1
        '
        Me.TableAdapterManager1.AlunosTableAdapter = Me.AlunosTableAdapter1
        Me.TableAdapterManager1.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager1.DisciplinaTableAdapter = Nothing
        Me.TableAdapterManager1.UpdateOrder = Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        '
        'NomeTextBox
        '
        Me.NomeTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "nome", True))
        Me.NomeTextBox.Location = New System.Drawing.Point(267, 52)
        Me.NomeTextBox.Name = "NomeTextBox"
        Me.NomeTextBox.Size = New System.Drawing.Size(100, 20)
        Me.NomeTextBox.TabIndex = 42
        '
        'EnderecoTextBox
        '
        Me.EnderecoTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "endereco", True))
        Me.EnderecoTextBox.Location = New System.Drawing.Point(267, 78)
        Me.EnderecoTextBox.Name = "EnderecoTextBox"
        Me.EnderecoTextBox.Size = New System.Drawing.Size(100, 20)
        Me.EnderecoTextBox.TabIndex = 44
        '
        'CidadeTextBox
        '
        Me.CidadeTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "cidade", True))
        Me.CidadeTextBox.Location = New System.Drawing.Point(267, 104)
        Me.CidadeTextBox.Name = "CidadeTextBox"
        Me.CidadeTextBox.Size = New System.Drawing.Size(100, 20)
        Me.CidadeTextBox.TabIndex = 46
        '
        'EstadoTextBox
        '
        Me.EstadoTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "estado", True))
        Me.EstadoTextBox.Location = New System.Drawing.Point(267, 130)
        Me.EstadoTextBox.Name = "EstadoTextBox"
        Me.EstadoTextBox.Size = New System.Drawing.Size(100, 20)
        Me.EstadoTextBox.TabIndex = 48
        '
        'TelefoneTextBox
        '
        Me.TelefoneTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "telefone", True))
        Me.TelefoneTextBox.Location = New System.Drawing.Point(267, 156)
        Me.TelefoneTextBox.Name = "TelefoneTextBox"
        Me.TelefoneTextBox.Size = New System.Drawing.Size(100, 20)
        Me.TelefoneTextBox.TabIndex = 50
        '
        'IdadeTextBox
        '
        Me.IdadeTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "idade", True))
        Me.IdadeTextBox.Location = New System.Drawing.Point(267, 182)
        Me.IdadeTextBox.Name = "IdadeTextBox"
        Me.IdadeTextBox.Size = New System.Drawing.Size(100, 20)
        Me.IdadeTextBox.TabIndex = 52
        '
        'SerieTextBox
        '
        Me.SerieTextBox.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.AlunosBindingSource, "serie", True))
        Me.SerieTextBox.Location = New System.Drawing.Point(267, 208)
        Me.SerieTextBox.Name = "SerieTextBox"
        Me.SerieTextBox.Size = New System.Drawing.Size(100, 20)
        Me.SerieTextBox.TabIndex = 54
        '
        'Alunos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(445, 422)
        Me.Controls.Add(NomeLabel1)
        Me.Controls.Add(Me.NomeTextBox)
        Me.Controls.Add(EnderecoLabel1)
        Me.Controls.Add(Me.EnderecoTextBox)
        Me.Controls.Add(CidadeLabel1)
        Me.Controls.Add(Me.CidadeTextBox)
        Me.Controls.Add(EstadoLabel1)
        Me.Controls.Add(Me.EstadoTextBox)
        Me.Controls.Add(TelefoneLabel1)
        Me.Controls.Add(Me.TelefoneTextBox)
        Me.Controls.Add(IdadeLabel1)
        Me.Controls.Add(Me.IdadeTextBox)
        Me.Controls.Add(SerieLabel1)
        Me.Controls.Add(Me.SerieTextBox)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.buscaAluno)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.procurarAluno)
        Me.Name = "Alunos"
        Me.Text = "Alunos"
        CType(Me.ErrorProvider1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.CadastroDBDataSet1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.AlunosBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents procurarAluno As Button
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents buscaAluno As TextBox
    Friend WithEvents AlunosTableAdapter As CadastroDBDataSetTableAdapters.AlunosTableAdapter
    Friend WithEvents Button2 As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents CadastroDBDataSet As CadastroDBDataSet
    Friend WithEvents TableAdapterManager As CadastroDBDataSetTableAdapters.TableAdapterManager
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents ErrorProvider1 As System.Windows.Forms.ErrorProvider
    Friend WithEvents AlunosBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents CadastroDBDataSet1 As Cadastro.CadastroDBDataSet
    Friend WithEvents AlunosTableAdapter1 As Cadastro.CadastroDBDataSetTableAdapters.AlunosTableAdapter
    Friend WithEvents TableAdapterManager1 As Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager
    Friend WithEvents NomeTextBox As System.Windows.Forms.TextBox
    Friend WithEvents EnderecoTextBox As System.Windows.Forms.TextBox
    Friend WithEvents CidadeTextBox As System.Windows.Forms.TextBox
    Friend WithEvents EstadoTextBox As System.Windows.Forms.TextBox
    Friend WithEvents TelefoneTextBox As System.Windows.Forms.TextBox
    Friend WithEvents IdadeTextBox As System.Windows.Forms.TextBox
    Friend WithEvents SerieTextBox As System.Windows.Forms.TextBox
End Class
