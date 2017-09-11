<<<<<<< HEAD
VERSION 5.00
Begin VB.Form Inicio 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Cash Register Restaurant System - Inicializando..."
   ClientHeight    =   8235
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12090
   Icon            =   "Inici.frx":0000
   LinkTopic       =   "CRRS"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8235
   ScaleWidth      =   12090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      Caption         =   "Reiniciar"
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
      Height          =   345
      Left            =   10665
      TabIndex        =   4
      Top             =   5880
      Width           =   1020
   End
   Begin VB.Label Label4 
      Caption         =   "Label4"
      Height          =   855
      Left            =   3960
      TabIndex        =   3
      Top             =   5880
      Width           =   5175
   End
   Begin VB.Label Index 
      Caption         =   "Index"
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
      BackColor       =   &H000000FF&
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
   Begin VB.Label lbl_cargando 
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
   Begin VB.Image logoGrande 
      Height          =   4665
      Left            =   240
      Picture         =   "Inici.frx":3146
      Top             =   120
      Width           =   11520
   End
End
Attribute VB_Name = "inicio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim sMsg As String
On Error GoTo ErrHandler

' ...code here...
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

    Exit Sub

ErrHandler:
    CrearEmpresa.Show
    Error.Show
    Me.Hide
'sMsg = "Error #" & Err.Number & ": '" & Err.Description & "' from '" & Err.Source & "'"
'MsgBox Err.Description, , "Error"

End Sub

Private Sub Label3_Click()
    Form2.Show
    Me.Hide
End Sub

Private Sub Label1_Click()
    CrearEmpresa.Show
    Error.Show
    Me.Hide
End Sub

Private Sub Label2_Click()
   End
End Sub
=======
VERSION 5.00
Begin VB.Form Inicio 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Cash Register Restaurant System - Inicializando..."
   ClientHeight    =   8235
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12090
   Icon            =   "Inici.frx":0000
   LinkTopic       =   "CRRS"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8235
   ScaleWidth      =   12090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      Caption         =   "Reiniciar"
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
      Height          =   345
      Left            =   10665
      TabIndex        =   4
      Top             =   5880
      Width           =   1020
   End
   Begin VB.Label Label4 
      Caption         =   "Label4"
      Height          =   855
      Left            =   3960
      TabIndex        =   3
      Top             =   5880
      Width           =   5175
   End
   Begin VB.Label Index 
      Caption         =   "Index"
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
      BackColor       =   &H000000FF&
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
   Begin VB.Label lbl_cargando 
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
   Begin VB.Image logoGrande 
      Height          =   4665
      Left            =   240
      Picture         =   "Inici.frx":3146
      Top             =   120
      Width           =   11520
   End
End
Attribute VB_Name = "inicio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim sMsg As String
On Error GoTo ErrHandler

' ...code here...
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

    Exit Sub

ErrHandler:
    CrearEmpresa.Show
    Error.Show
    Me.Hide
'sMsg = "Error #" & Err.Number & ": '" & Err.Description & "' from '" & Err.Source & "'"
'MsgBox Err.Description, , "Error"

End Sub

Private Sub Label3_Click()
    Form2.Show
    Me.Hide
End Sub

Private Sub Label1_Click()
    CrearEmpresa.Show
    Error.Show
    Me.Hide
End Sub

Private Sub Label2_Click()
   End
End Sub
>>>>>>> bd455ee94f4edfdeb8e4cbd70fc82f2db78e19fc
