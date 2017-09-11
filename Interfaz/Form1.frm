VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Cash Register Restaurant System - Inicializando..."
   ClientHeight    =   8235
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12090
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "CRRS"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8235
   ScaleWidth      =   12090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label4 
      Caption         =   "Label4"
      Height          =   855
      Left            =   3960
      TabIndex        =   3
      Top             =   6600
      Visible         =   0   'False
      Width           =   5175
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   975
      Left            =   1200
      TabIndex        =   2
      Top             =   5040
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H000000C0&
      Caption         =   "Cerrar"
      BeginProperty Font 
         Name            =   "Lexia Readable"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   435
      Left            =   10785
      TabIndex        =   1
      Top             =   5160
      Width           =   990
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "INICIALIZANDO..."
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4080
      TabIndex        =   0
      Top             =   4920
      Width           =   5415
   End
   Begin VB.Image Image1 
      Height          =   4665
      Left            =   240
      Picture         =   "Form1.frx":3146
      Top             =   120
      Width           =   11520
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

Open "empresa.txt" For Input As #1

' Luego tienes que leerlo con...

Dim Linea As String, Total As String
Do Until EOF(1)
Line Input #1, Linea

Label4.Caption = Linea
Total = Total + Linea + vbCrLf
Loop
Close #1

Label4.Caption = Total
'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().



End Sub

Private Sub Label3_Click()
    Form2.Show
    Me.Hide
End Sub

Private Sub Label2_Click()
   End
End Sub

