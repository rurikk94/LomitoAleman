VERSION 5.00
Begin VB.Form CrearEmpresa 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Crear Empresa"
   ClientHeight    =   4560
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5940
   LinkTopic       =   "Form3"
   ScaleHeight     =   4560
   ScaleWidth      =   5940
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2640
      MaxLength       =   30
      TabIndex        =   7
      Top             =   2280
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2640
      MaxLength       =   30
      TabIndex        =   6
      Top             =   1680
      Width           =   3015
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
      Left            =   720
      TabIndex        =   2
      Top             =   3480
      Width           =   1455
   End
   Begin VB.Label lbl_nombreDueno 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Caption         =   "Nombre Dueño:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   1
      Left            =   480
      TabIndex        =   1
      Top             =   2280
      Width           =   1935
   End
   Begin VB.Label lbl_nombreEmpresa 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Caption         =   "Nombre Empresa:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Image logo 
      Height          =   1500
      Left            =   0
      Picture         =   "CrearEmpresa.frx":0000
      Top             =   0
      Width           =   3690
   End
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "Cancelar"
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
      Left            =   3600
      TabIndex        =   3
      Top             =   3480
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
      Left            =   600
      TabIndex        =   4
      Top             =   3240
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
      Left            =   3480
      TabIndex        =   5
      Top             =   3240
      Width           =   1695
   End
End
Attribute VB_Name = "CrearEmpresa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ancho As Integer
Dim alto As Integer
Dim texto1 As String
Dim texto2 As String

Private Sub Label1_Click()

End Sub
Private Sub guardar()
    Open "empresa.txt" For Output As #1
    'texto1 = InputBox("Enter nombre empresa :")
    'texto2 = InputBox("Enter nombre dueño :")
    'Text1.Text = texto1
    'Text2.Text = texto2
    Print #1, Text1.Text
    Print #1, Text2.Text
    Close #1
End Sub
Private Sub Form_Load()
ancho = 6180
alto = 5145

End Sub

Private Sub lblBtn1_Click(Index As Integer)
    guardar
    Error.lbl_error.Caption = "Empresa Creada"
    Error.Caption = "Empresa Creada"
    Me.Hide
    Unload Inicializar
    Inicializar.Show
    Unload Me
    Error.Show
End Sub

Private Sub lblBtn2_Click(Index As Integer)
End
End Sub

Private Sub Form_Resize()
If Me.WindowState <> vbMinimized Then '// si no te da error al minimizar
    If Me.Width < ancho Then
        Me.Width = ancho
    End If
    If Me.Width > ancho Then
        Me.Width = ancho
    End If
    If Me.Height < alto Then
        Me.Height = alto
    End If
    If Me.Height > alto Then
        Me.Height = alto
    End If
End If
End Sub
