<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form remplace la méthode Dispose pour nettoyer la liste des composants.
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

    'Requise par le Concepteur Windows Form
    Private components As System.ComponentModel.IContainer

    'REMARQUE : la procédure suivante est requise par le Concepteur Windows Form
    'Elle peut être modifiée à l'aide du Concepteur Windows Form.  
    'Ne la modifiez pas à l'aide de l'éditeur de code.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.TxtPassword = New System.Windows.Forms.TextBox()
        Me.BtnSubmit = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.BtnUnlock = New System.Windows.Forms.Button()
        Me.BtnSend = New System.Windows.Forms.Button()
        Me.TxtUserMessage = New System.Windows.Forms.TextBox()
        Me.TxtDialogue = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'TxtPassword
        '
        Me.TxtPassword.Location = New System.Drawing.Point(332, 403)
        Me.TxtPassword.Multiline = True
        Me.TxtPassword.Name = "TxtPassword"
        Me.TxtPassword.Size = New System.Drawing.Size(135, 35)
        Me.TxtPassword.TabIndex = 0
        '
        'BtnSubmit
        '
        Me.BtnSubmit.Location = New System.Drawing.Point(654, 242)
        Me.BtnSubmit.Name = "BtnSubmit"
        Me.BtnSubmit.Size = New System.Drawing.Size(75, 23)
        Me.BtnSubmit.TabIndex = 1
        Me.BtnSubmit.Text = "Valider"
        Me.BtnSubmit.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 1000
        '
        'BtnUnlock
        '
        Me.BtnUnlock.Location = New System.Drawing.Point(486, 409)
        Me.BtnUnlock.Name = "BtnUnlock"
        Me.BtnUnlock.Size = New System.Drawing.Size(75, 23)
        Me.BtnUnlock.TabIndex = 2
        Me.BtnUnlock.Text = "Unlock"
        Me.BtnUnlock.UseVisualStyleBackColor = True
        '
        'BtnSend
        '
        Me.BtnSend.Location = New System.Drawing.Point(608, 74)
        Me.BtnSend.Name = "BtnSend"
        Me.BtnSend.Size = New System.Drawing.Size(75, 23)
        Me.BtnSend.TabIndex = 3
        Me.BtnSend.Text = "Send"
        Me.BtnSend.UseVisualStyleBackColor = True
        '
        'TxtUserMessage
        '
        Me.TxtUserMessage.Location = New System.Drawing.Point(222, 51)
        Me.TxtUserMessage.Multiline = True
        Me.TxtUserMessage.Name = "TxtUserMessage"
        Me.TxtUserMessage.Size = New System.Drawing.Size(371, 76)
        Me.TxtUserMessage.TabIndex = 4
        '
        'TxtDialogue
        '
        Me.TxtDialogue.Location = New System.Drawing.Point(181, 133)
        Me.TxtDialogue.Multiline = True
        Me.TxtDialogue.Name = "TxtDialogue"
        Me.TxtDialogue.Size = New System.Drawing.Size(461, 264)
        Me.TxtDialogue.TabIndex = 5
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 453)
        Me.Controls.Add(Me.TxtDialogue)
        Me.Controls.Add(Me.TxtUserMessage)
        Me.Controls.Add(Me.BtnSend)
        Me.Controls.Add(Me.BtnUnlock)
        Me.Controls.Add(Me.BtnSubmit)
        Me.Controls.Add(Me.TxtPassword)
        Me.Name = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents TxtPassword As TextBox
    Friend WithEvents BtnSubmit As Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents BtnUnlock As Button
    Friend WithEvents BtnSend As Button
    Friend WithEvents TxtUserMessage As TextBox
    Friend WithEvents TxtDialogue As TextBox
End Class
