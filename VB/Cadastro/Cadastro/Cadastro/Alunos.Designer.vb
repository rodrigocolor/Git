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
        Dim NomeLabel As System.Windows.Forms.Label
        Dim EnderecoLabel As System.Windows.Forms.Label
        Dim CidadeLabel As System.Windows.Forms.Label
        Dim EstadoLabel As System.Windows.Forms.Label
        Dim TelefoneLabel As System.Windows.Forms.Label
        Dim IdadeLabel As System.Windows.Forms.Label
        Dim SerieLabel As System.Windows.Forms.Label
        Me.EntityInstantFeedbackSource1 = New DevExpress.Data.Linq.EntityInstantFeedbackSource()
        Me.procurarAluno = New System.Windows.Forms.Button()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.buscaAluno = New System.Windows.Forms.TextBox()
        Me.AlunosTableAdapter = New Cadastro.CadastroDBDataSetTableAdapters.AlunosTableAdapter()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.CadastroDBDataSet = New Cadastro.CadastroDBDataSet()
        Me.AlunosBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.TableAdapterManager = New Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager()
        Me.NomeTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.EnderecoTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.CidadeTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.EstadoTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.TelefoneTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.IdadeSpinEdit = New DevExpress.XtraEditors.SpinEdit()
        Me.SerieSpinEdit = New DevExpress.XtraEditors.SpinEdit()
        NomeLabel = New System.Windows.Forms.Label()
        EnderecoLabel = New System.Windows.Forms.Label()
        CidadeLabel = New System.Windows.Forms.Label()
        EstadoLabel = New System.Windows.Forms.Label()
        TelefoneLabel = New System.Windows.Forms.Label()
        IdadeLabel = New System.Windows.Forms.Label()
        SerieLabel = New System.Windows.Forms.Label()
        CType(Me.CadastroDBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.AlunosBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.NomeTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EnderecoTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.CidadeTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EstadoTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TelefoneTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.IdadeSpinEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SerieSpinEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'procurarAluno
        '
        Me.procurarAluno.Location = New System.Drawing.Point(171, 19)
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
        'AlunosTableAdapter
        '
        Me.AlunosTableAdapter.ClearBeforeFill = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(12, 344)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 20
        Me.Button2.Text = "Incluir"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(103, 344)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 23)
        Me.Button4.TabIndex = 21
        Me.Button4.Text = "Editar"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(59, 373)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 22
        Me.Button3.Text = "Excluir"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'CadastroDBDataSet
        '
        Me.CadastroDBDataSet.DataSetName = "CadastroDBDataSet"
        Me.CadastroDBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'AlunosBindingSource
        '
        Me.AlunosBindingSource.DataMember = "Alunos"
        Me.AlunosBindingSource.DataSource = Me.CadastroDBDataSet
        '
        'TableAdapterManager
        '
        Me.TableAdapterManager.AlunosTableAdapter = Me.AlunosTableAdapter
        Me.TableAdapterManager.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager.DisciplinaTableAdapter = Nothing
        Me.TableAdapterManager.UpdateOrder = Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        '
        'NomeLabel
        '
        NomeLabel.AutoSize = True
        NomeLabel.Location = New System.Drawing.Point(204, 100)
        NomeLabel.Name = "NomeLabel"
        NomeLabel.Size = New System.Drawing.Size(36, 13)
        NomeLabel.TabIndex = 24
        NomeLabel.Text = "nome:"
        '
        'NomeTextEdit
        '
        Me.NomeTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "nome", True))
        Me.NomeTextEdit.Location = New System.Drawing.Point(265, 97)
        Me.NomeTextEdit.Name = "NomeTextEdit"
        Me.NomeTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.NomeTextEdit.TabIndex = 25
        '
        'EnderecoLabel
        '
        EnderecoLabel.AutoSize = True
        EnderecoLabel.Location = New System.Drawing.Point(204, 126)
        EnderecoLabel.Name = "EnderecoLabel"
        EnderecoLabel.Size = New System.Drawing.Size(55, 13)
        EnderecoLabel.TabIndex = 26
        EnderecoLabel.Text = "endereco:"
        '
        'EnderecoTextEdit
        '
        Me.EnderecoTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "endereco", True))
        Me.EnderecoTextEdit.Location = New System.Drawing.Point(265, 123)
        Me.EnderecoTextEdit.Name = "EnderecoTextEdit"
        Me.EnderecoTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.EnderecoTextEdit.TabIndex = 27
        '
        'CidadeLabel
        '
        CidadeLabel.AutoSize = True
        CidadeLabel.Location = New System.Drawing.Point(204, 152)
        CidadeLabel.Name = "CidadeLabel"
        CidadeLabel.Size = New System.Drawing.Size(42, 13)
        CidadeLabel.TabIndex = 28
        CidadeLabel.Text = "cidade:"
        '
        'CidadeTextEdit
        '
        Me.CidadeTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "cidade", True))
        Me.CidadeTextEdit.Location = New System.Drawing.Point(265, 149)
        Me.CidadeTextEdit.Name = "CidadeTextEdit"
        Me.CidadeTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.CidadeTextEdit.TabIndex = 29
        '
        'EstadoLabel
        '
        EstadoLabel.AutoSize = True
        EstadoLabel.Location = New System.Drawing.Point(204, 178)
        EstadoLabel.Name = "EstadoLabel"
        EstadoLabel.Size = New System.Drawing.Size(42, 13)
        EstadoLabel.TabIndex = 30
        EstadoLabel.Text = "estado:"
        '
        'EstadoTextEdit
        '
        Me.EstadoTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "estado", True))
        Me.EstadoTextEdit.Location = New System.Drawing.Point(265, 175)
        Me.EstadoTextEdit.Name = "EstadoTextEdit"
        Me.EstadoTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.EstadoTextEdit.TabIndex = 31
        '
        'TelefoneLabel
        '
        TelefoneLabel.AutoSize = True
        TelefoneLabel.Location = New System.Drawing.Point(204, 204)
        TelefoneLabel.Name = "TelefoneLabel"
        TelefoneLabel.Size = New System.Drawing.Size(48, 13)
        TelefoneLabel.TabIndex = 32
        TelefoneLabel.Text = "telefone:"
        '
        'TelefoneTextEdit
        '
        Me.TelefoneTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "telefone", True))
        Me.TelefoneTextEdit.Location = New System.Drawing.Point(265, 201)
        Me.TelefoneTextEdit.Name = "TelefoneTextEdit"
        Me.TelefoneTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.TelefoneTextEdit.TabIndex = 33
        '
        'IdadeLabel
        '
        IdadeLabel.AutoSize = True
        IdadeLabel.Location = New System.Drawing.Point(204, 230)
        IdadeLabel.Name = "IdadeLabel"
        IdadeLabel.Size = New System.Drawing.Size(36, 13)
        IdadeLabel.TabIndex = 34
        IdadeLabel.Text = "idade:"
        '
        'IdadeSpinEdit
        '
        Me.IdadeSpinEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "idade", True))
        Me.IdadeSpinEdit.EditValue = New Decimal(New Integer() {0, 0, 0, 0})
        Me.IdadeSpinEdit.Location = New System.Drawing.Point(265, 227)
        Me.IdadeSpinEdit.Name = "IdadeSpinEdit"
        Me.IdadeSpinEdit.Properties.Buttons.AddRange(New DevExpress.XtraEditors.Controls.EditorButton() {New DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)})
        Me.IdadeSpinEdit.Size = New System.Drawing.Size(100, 20)
        Me.IdadeSpinEdit.TabIndex = 35
        '
        'SerieLabel
        '
        SerieLabel.AutoSize = True
        SerieLabel.Location = New System.Drawing.Point(204, 256)
        SerieLabel.Name = "SerieLabel"
        SerieLabel.Size = New System.Drawing.Size(32, 13)
        SerieLabel.TabIndex = 36
        SerieLabel.Text = "serie:"
        '
        'SerieSpinEdit
        '
        Me.SerieSpinEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.AlunosBindingSource, "serie", True))
        Me.SerieSpinEdit.EditValue = New Decimal(New Integer() {0, 0, 0, 0})
        Me.SerieSpinEdit.Location = New System.Drawing.Point(265, 253)
        Me.SerieSpinEdit.Name = "SerieSpinEdit"
        Me.SerieSpinEdit.Properties.Buttons.AddRange(New DevExpress.XtraEditors.Controls.EditorButton() {New DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)})
        Me.SerieSpinEdit.Size = New System.Drawing.Size(100, 20)
        Me.SerieSpinEdit.TabIndex = 37
        '
        'Alunos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(486, 416)
        Me.Controls.Add(NomeLabel)
        Me.Controls.Add(Me.NomeTextEdit)
        Me.Controls.Add(EnderecoLabel)
        Me.Controls.Add(Me.EnderecoTextEdit)
        Me.Controls.Add(CidadeLabel)
        Me.Controls.Add(Me.CidadeTextEdit)
        Me.Controls.Add(EstadoLabel)
        Me.Controls.Add(Me.EstadoTextEdit)
        Me.Controls.Add(TelefoneLabel)
        Me.Controls.Add(Me.TelefoneTextEdit)
        Me.Controls.Add(IdadeLabel)
        Me.Controls.Add(Me.IdadeSpinEdit)
        Me.Controls.Add(SerieLabel)
        Me.Controls.Add(Me.SerieSpinEdit)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.buscaAluno)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.procurarAluno)
        Me.Name = "Alunos"
        Me.Text = "Alunos"
        CType(Me.CadastroDBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.AlunosBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.NomeTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EnderecoTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.CidadeTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EstadoTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TelefoneTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.IdadeSpinEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SerieSpinEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents EntityInstantFeedbackSource1 As DevExpress.Data.Linq.EntityInstantFeedbackSource
    Friend WithEvents procurarAluno As Button
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents buscaAluno As TextBox
    Friend WithEvents AlunosTableAdapter As CadastroDBDataSetTableAdapters.AlunosTableAdapter
    Friend WithEvents Button2 As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents CadastroDBDataSet As CadastroDBDataSet
    Friend WithEvents AlunosBindingSource As BindingSource
    Friend WithEvents TableAdapterManager As CadastroDBDataSetTableAdapters.TableAdapterManager
    Friend WithEvents NomeTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents EnderecoTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents CidadeTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents EstadoTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents TelefoneTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents IdadeSpinEdit As DevExpress.XtraEditors.SpinEdit
    Friend WithEvents SerieSpinEdit As DevExpress.XtraEditors.SpinEdit
End Class
