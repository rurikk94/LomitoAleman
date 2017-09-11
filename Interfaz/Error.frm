VERSION 5.00
Begin VB.Form Error 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Error"
   ClientHeight    =   1395
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6105
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1395
   ScaleWidth      =   6105
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   1
      Left            =   3840
      TabIndex        =   3
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label lbl_error 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Archivos No Encontrados"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   5010
   End
   Begin VB.Image Image1 
      Height          =   825
      Left            =   0
      Picture         =   "Error.frx":0000
      Top             =   0
      Width           =   825
   End
   Begin VB.Label lblBtn1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      Caption         =   "Aceptar"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   0
      Left            =   1320
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label lblBtn1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   735
      Index           =   1
      Left            =   1200
      TabIndex        =   2
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   735
      Index           =   0
      Left            =   3720
      TabIndex        =   4
      Top             =   600
      Width           =   1695
   End
End
Attribute VB_Name = "Error"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub lblBtn1_Click(Index As Integer)
 Me.Hide
 Unload Me
End Sub

Private Sub lblBtn2_Click(Index As Integer)
End
End Sub
