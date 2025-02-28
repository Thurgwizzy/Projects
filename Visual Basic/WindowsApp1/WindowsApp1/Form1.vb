Imports System.Windows.Forms
Imports System.IO
Public Class Form1
    ' Définir un mot de passe correct
    Private correctPassword As String = "Dynastydod04" ' À personnaliser
    Private communicationFile As String = "C:\Temp\dialogue.txt" ' Fichier pour la communication

    ' Chargement du formulaire
    Private Sub LockScreen_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Configuration du formulaire
        Me.FormBorderStyle = FormBorderStyle.None
        Me.WindowState = FormWindowState.Maximized
        Me.TopMost = True

        ' Création du fichier de communication si nécessaire
        If Not Directory.Exists("C:\Temp") Then
            Directory.CreateDirectory("C:\Temp")
        End If

        If Not File.Exists(communicationFile) Then
            File.WriteAllText(communicationFile, "Bienvenue ! Vous pouvez commencer à communiquer ici.")
        End If

        ' Démarrer le Timer
        Timer1.Interval = 1000 ' Intervalle d'une seconde
        Timer1.Start()
    End Sub

    ' Bloquer la fermeture avec Alt+F4
    Protected Overrides Sub WndProc(ByRef m As Message)
        Const WM_SYSCOMMAND As Integer = &H112
        Const SC_CLOSE As Integer = &HF060

        If m.Msg = WM_SYSCOMMAND AndAlso m.WParam.ToInt32() = SC_CLOSE Then
            Return ' Bloque la fermeture
        End If

        MyBase.WndProc(m)
    End Sub

    ' Gestion du bouton Déverrouiller
    Private Sub BtnUnlock_Click_1(sender As Object, e As EventArgs) Handles BtnUnlock.Click
        If TxtPassword.Text = correctPassword Then
            MessageBox.Show("Accès autorisé, écran déverrouillé.")
            Me.Close()
        Else
            MessageBox.Show("Mot de passe incorrect. Veuillez réessayer.")
        End If
    End Sub

    ' Gestion du bouton Envoyer
    Private Sub BtnSend_Click(sender As Object, e As EventArgs) Handles BtnSend.Click
        Dim userMessage As String = TxtUserMessage.Text
        If Not String.IsNullOrEmpty(userMessage) Then
            File.AppendAllText(communicationFile, Environment.NewLine & "Utilisateur : " & userMessage)
            TxtUserMessage.Clear()
        End If
    End Sub

    ' Lecture des messages via Timer
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If File.Exists(communicationFile) Then
            Dim messages As String = File.ReadAllText(communicationFile)
            TxtDialogue.Text = messages
        End If
    End Sub

    Private Sub TxtDialogue_TextChanged(sender As Object, e As EventArgs) Handles TxtDialogue.TextChanged

    End Sub
End Class
