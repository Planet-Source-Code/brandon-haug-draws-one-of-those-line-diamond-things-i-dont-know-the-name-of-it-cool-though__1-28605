VERSION 5.00
Begin VB.Form frmGraph 
   BackColor       =   &H000000C0&
   Caption         =   "The Amazin' Graph"
   ClientHeight    =   7095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7380
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   100
   ScaleMode       =   0  'User
   ScaleWidth      =   100
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Quadrant3 
      Interval        =   1
      Left            =   6120
      Top             =   4920
   End
   Begin VB.Timer Quadrant4 
      Interval        =   1
      Left            =   6120
      Top             =   1080
   End
   Begin VB.Timer Quadrant2 
      Interval        =   1
      Left            =   1440
      Top             =   4800
   End
   Begin VB.Timer Quadrant1 
      Interval        =   1
      Left            =   1440
      Top             =   1080
   End
End
Attribute VB_Name = "frmGraph"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Q1x1 As Integer
Private Q1y1 As Integer
Private Q1x2 As Integer
Private Q1y2 As Integer
Private Q2x1 As Integer
Private Q2y1 As Integer
Private Q2x2 As Integer
Private Q2y2 As Integer
Private Q3x1 As Integer
Private Q3y1 As Integer
Private Q3x2 As Integer
Private Q3y2 As Integer
Private Q4x1 As Integer
Private Q4y1 As Integer
Private Q4x2 As Integer
Private Q4y2 As Integer
Private Sub Form_Activate()
Me.DrawWidth = 0.6
B = Int((255 - 1 + 1) * Rnd + 1)
Q1x1 = ScaleWidth / 2
Q1y1 = 0
Q1x2 = ScaleWidth / 2
Q1y2 = ScaleHeight / 2
Me.Line (Q1x1, Q1y1)-(Q1x2, Q1y2), RGB(r, g, B)
Q2x1 = 0
Q2y1 = ScaleHeight / 2
Q2x2 = ScaleWidth / 2
Q2y2 = ScaleHeight / 2
Me.Line (Q2x1, Q2y1)-(Q2x2, Q2y2), RGB(r, g, B)
Q3x1 = ScaleWidth / 2
Q3y1 = ScaleHeight
Q3x2 = ScaleWidth / 2
Q3y2 = ScaleHeight / 2
Me.Line (Q3x1, Q3y1)-(Q3x2, Q3y2), RGB(r, g, B)
Q4x1 = ScaleWidth
Q4y1 = ScaleHeight / 2
Q4x2 = ScaleWidth / 2
Q4y2 = ScaleHeight / 2
Me.Line (Q4x1, Q4y1)-(Q4x2, Q4y2), RGB(r, g, B)
End Sub

Private Sub Form_Load()
Me.Height = Screen.Height
Me.Width = Me.Height

End Sub

Private Sub quadrant1_Timer()


B = Int((255 - 1 + 1) * Rnd + 1)
Q1x1 = Q1x1
Q1y1 = Q1y1 + 1
Q1x2 = Q1x2 - 1
Q1y2 = Q1y2
Me.Line (Q1x1, Q1y1)-(Q1x2, Q1y2), RGB(r, g, B)
If Q1y1 > (ScaleHeight / 2) Then
Quadrant1.Enabled = False
End If
End Sub

Private Sub Quadrant2_Timer()


B = Int((255 - 1 + 1) * Rnd + 1)
Q2x1 = Q2x1 + 1
Q2y1 = Q2y1
Q2x2 = Q2x2
Q2y2 = Q2y2 + 1
Me.Line (Q2x1, Q2y1)-(Q2x2, Q2y2), RGB(r, g, B)
If Q2x1 > (ScaleWidth / 2) Then
Quadrant2.Enabled = False
End If
End Sub

Private Sub Quadrant3_Timer()

B = Int((255 - 1 + 1) * Rnd + 1)
Q3x1 = Q3x1
Q3y1 = Q3y1 - 1
Q3x2 = Q3x2 + 1
Q3y2 = Q3y2
Me.Line (Q3x1, Q3y1)-(Q3x2, Q3y2), RGB(r, g, B)
If Q3y1 < (ScaleHeight / 2) Then
Quadrant3.Enabled = False
End If
End Sub

Private Sub Quadrant4_Timer()

B = Int((255 - 1 + 1) * Rnd + 1)
Q4x1 = Q4x1 - 1
Q4y1 = Q4y1
Q4x2 = Q4x2
Q4y2 = Q4y2 - 1
Me.Line (Q4x1, Q4y1)-(Q4x2, Q4y2), RGB(r, g, B)
If Q4x1 < (ScaleWidth / 2) Then
Quadrant4.Enabled = False
End If
End Sub
