﻿Public Class unMAin
    Private Sub AlunosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AlunosToolStripMenuItem.Click
        Alunos.ShowDialog()
    End Sub

    Private Sub DisciplinasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DisciplinasToolStripMenuItem.Click
        Disciplinas.ShowDialog()
    End Sub
End Class