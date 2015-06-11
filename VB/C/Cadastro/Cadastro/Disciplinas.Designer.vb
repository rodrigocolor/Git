<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Disciplinas
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim DescricaoLabel As System.Windows.Forms.Label
        Dim TurnoLabel As System.Windows.Forms.Label
        Dim TempoLabel As System.Windows.Forms.Label
        Dim StemestreLabel As System.Windows.Forms.Label
        Me.buscaAluno = New System.Windows.Forms.TextBox()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.procurarAluno = New System.Windows.Forms.Button()
        Me.CadastroDBDataSet = New Cadastro.CadastroDBDataSet()
        Me.DisciplinaBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DisciplinaTableAdapter = New Cadastro.CadastroDBDataSetTableAdapters.DisciplinaTableAdapter()
        Me.TableAdapterManager = New Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.DescricaoTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.TurnoTextEdit = New DevExpress.XtraEditors.TextEdit()
        Me.TempoSpinEdit = New DevExpress.XtraEditors.SpinEdit()
        Me.StemestreSpinEdit = New DevExpress.XtraEditors.SpinEdit()
        DescricaoLabel = New System.Windows.Forms.Label()
        TurnoLabel = New System.Windows.Forms.Label()
        TempoLabel = New System.Windows.Forms.Label()
        StemestreLabel = New System.Windows.Forms.Label()
        CType(Me.CadastroDBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DisciplinaBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DescricaoTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TurnoTextEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TempoSpinEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.StemestreSpinEdit.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'buscaAluno
        '
        Me.buscaAluno.Location = New System.Drawing.Point(12, 9)
        Me.buscaAluno.Name = "buscaAluno"
        Me.buscaAluno.Size = New System.Drawing.Size(156, 20)
        Me.buscaAluno.TabIndex = 5
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(12, 35)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(162, 277)
        Me.ListBox1.TabIndex = 4
        '
        'procurarAluno
        '
        Me.procurarAluno.Location = New System.Drawing.Point(171, 6)
        Me.procurarAluno.Name = "procurarAluno"
        Me.procurarAluno.Size = New System.Drawing.Size(56, 23)
        Me.procurarAluno.TabIndex = 3
        Me.procurarAluno.Text = "Procurar"
        Me.procurarAluno.UseVisualStyleBackColor = True
        '
        'CadastroDBDataSet
        '
        Me.CadastroDBDataSet.DataSetName = "CadastroDBDataSet"
        Me.CadastroDBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'DisciplinaBindingSource
        '
        Me.DisciplinaBindingSource.DataMember = "Disciplina"
        Me.DisciplinaBindingSource.DataSource = Me.CadastroDBDataSet
        '
        'DisciplinaTableAdapter
        '
        Me.DisciplinaTableAdapter.ClearBeforeFill = True
        '
        'TableAdapterManager
        '
        Me.TableAdapterManager.AlunosTableAdapter = Nothing
        Me.TableAdapterManager.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager.DisciplinaTableAdapter = Me.DisciplinaTableAdapter
        Me.TableAdapterManager.UpdateOrder = Cadastro.CadastroDBDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(58, 352)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 25
        Me.Button3.Text = "Excluir"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(102, 323)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 23)
        Me.Button4.TabIndex = 24
        Me.Button4.Text = "Editar"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(11, 323)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 23
        Me.Button2.Text = "Incluir"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'DescricaoLabel
        '
        DescricaoLabel.AutoSize = True
        DescricaoLabel.Location = New System.Drawing.Point(197, 89)
        DescricaoLabel.Name = "DescricaoLabel"
        DescricaoLabel.Size = New System.Drawing.Size(56, 13)
        DescricaoLabel.TabIndex = 27
        DescricaoLabel.Text = "descricao:"
        '
        'DescricaoTextEdit
        '
        Me.DescricaoTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.DisciplinaBindingSource, "descricao", True))
        Me.DescricaoTextEdit.Location = New System.Drawing.Point(270, 86)
        Me.DescricaoTextEdit.Name = "DescricaoTextEdit"
        Me.DescricaoTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.DescricaoTextEdit.TabIndex = 28
        '
        'TurnoLabel
        '
        TurnoLabel.AutoSize = True
        TurnoLabel.Location = New System.Drawing.Point(197, 115)
        TurnoLabel.Name = "TurnoLabel"
        TurnoLabel.Size = New System.Drawing.Size(34, 13)
        TurnoLabel.TabIndex = 29
        TurnoLabel.Text = "turno:"
        '
        'TurnoTextEdit
        '
        Me.TurnoTextEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.DisciplinaBindingSource, "turno", True))
        Me.TurnoTextEdit.Location = New System.Drawing.Point(270, 112)
        Me.TurnoTextEdit.Name = "TurnoTextEdit"
        Me.TurnoTextEdit.Size = New System.Drawing.Size(100, 20)
        Me.TurnoTextEdit.TabIndex = 30
        '
        'TempoLabel
        '
        TempoLabel.AutoSize = True
        TempoLabel.Location = New System.Drawing.Point(197, 141)
        TempoLabel.Name = "TempoLabel"
        TempoLabel.Size = New System.Drawing.Size(39, 13)
        TempoLabel.TabIndex = 31
        TempoLabel.Text = "tempo:"
        '
        'TempoSpinEdit
        '
        Me.TempoSpinEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.DisciplinaBindingSource, "tempo", True))
        Me.TempoSpinEdit.EditValue = New Decimal(New Integer() {0, 0, 0, 0})
        Me.TempoSpinEdit.Location = New System.Drawing.Point(270, 138)
        Me.TempoSpinEdit.Name = "TempoSpinEdit"
        Me.TempoSpinEdit.Properties.Buttons.AddRange(New DevExpress.XtraEditors.Controls.EditorButton() {New DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)})
        Me.TempoSpinEdit.Size = New System.Drawing.Size(100, 20)
        Me.TempoSpinEdit.TabIndex = 32
        '
        'StemestreLabel
        '
        StemestreLabel.AutoSize = True
        StemestreLabel.Location = New System.Drawing.Point(197, 167)
        StemestreLabel.Name = "StemestreLabel"
        StemestreLabel.Size = New System.Drawing.Size(52, 13)
        StemestreLabel.TabIndex = 33
        StemestreLabel.Text = "semestre:"
        '
        'StemestreSpinEdit
        '
        Me.StemestreSpinEdit.DataBindings.Add(New System.Windows.Forms.Binding("EditValue", Me.DisciplinaBindingSource, "stemestre", True))
        Me.StemestreSpinEdit.EditValue = New Decimal(New Integer() {0, 0, 0, 0})
        Me.StemestreSpinEdit.Location = New System.Drawing.Point(270, 164)
        Me.StemestreSpinEdit.Name = "StemestreSpinEdit"
        Me.StemestreSpinEdit.Properties.Buttons.AddRange(New DevExpress.XtraEditors.Controls.EditorButton() {New DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)})
        Me.StemestreSpinEdit.Size = New System.Drawing.Size(100, 20)
        Me.StemestreSpinEdit.TabIndex = 34
        '
        'Disciplinas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(484, 395)
        Me.Controls.Add(DescricaoLabel)
        Me.Controls.Add(Me.DescricaoTextEdit)
        Me.Controls.Add(TurnoLabel)
        Me.Controls.Add(Me.TurnoTextEdit)
        Me.Controls.Add(TempoLabel)
        Me.Controls.Add(Me.TempoSpinEdit)
        Me.Controls.Add(StemestreLabel)
        Me.Controls.Add(Me.StemestreSpinEdit)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.buscaAluno)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.procurarAluno)
        Me.Name = "Disciplinas"
        Me.Text = "Disciplinas"
        CType(Me.CadastroDBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DisciplinaBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DescricaoTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TurnoTextEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TempoSpinEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.StemestreSpinEdit.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents buscaAluno As TextBox
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents procurarAluno As Button
    Friend WithEvents CadastroDBDataSet As CadastroDBDataSet
    Friend WithEvents DisciplinaBindingSource As BindingSource
    Friend WithEvents DisciplinaTableAdapter As CadastroDBDataSetTableAdapters.DisciplinaTableAdapter
    Friend WithEvents TableAdapterManager As CadastroDBDataSetTableAdapters.TableAdapterManager
    Friend WithEvents Button3 As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Button2 As Button
    Friend WithEvents DescricaoTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents TurnoTextEdit As DevExpress.XtraEditors.TextEdit
    Friend WithEvents TempoSpinEdit As DevExpress.XtraEditors.SpinEdit
    Friend WithEvents StemestreSpinEdit As DevExpress.XtraEditors.SpinEdit
End Class
