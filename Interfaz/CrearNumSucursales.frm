VERSION 5.00
Begin VB.Form CrearNumSucursales 
   Caption         =   "Crear Sucursales"
   ClientHeight    =   4320
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5985
   LinkTopic       =   "Form1"
   ScaleHeight     =   4320
   ScaleWidth      =   5985
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   22538
         SubFormatType   =   1
      EndProperty
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   3240
      MaxLength       =   2
      TabIndex        =   0
      Text            =   "0"
      Top             =   1680
      Width           =   2415
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
      Top             =   2520
      Width           =   1455
   End
   Begin VB.Image logo 
      Height          =   1500
      Left            =   0
      Picture         =   "CrearNumSucursales.frx":0000
      Top             =   0
      Width           =   3690
   End
   Begin VB.Label lbl_cantSucursales 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Caption         =   "Cantidad de Sucursales"
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
      Height          =   345
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   1680
      Width           =   2730
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
      TabIndex        =   1
      Top             =   2520
      Width           =   1455
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
      Top             =   2280
      Width           =   1695
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
      Top             =   2280
      Width           =   1695
   End
End
Attribute VB_Name = "CrearNumSucursales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ancho As Integer
Dim alto As Integer
Dim i As Integer
Private Sub lblBtn1_Click(Index As Integer)
    If validar("numSucursales", Text1.Text) = 1 Then
        GuardarNumSucursales
        mostrarError ("Sucursales Creadas")
        Me.Hide
        Unload Inicializar
        Inicializar.Show
        Unload Me
        'Error.Show
    End If
End Sub
Private Sub GuardarNumSucursales()
    f.cantSucursales = Text1.Text
    crearArchivo ("sucursales.txt")
    crearCarpetas (f.cantSucursales)
    f.agregarNumSucursalAArchivo ("sucursales.txt")
    crearCadaSucursal (f.cantSucursales)
End Sub
Private Sub crearCadaSucursal(cantSucursales As Integer)
    Dim i As Integer
    Dim direccion, nombreAdmin, rutAdmin As String
    For i = 1 To cantSucursales
        
        direccion = InputBox("Introdusca la direccion de la sucursal " & i & ": ")
        nombreAdmin = InputBox("Introdusca la nombre Admin de la sucursal " & i & ": ")
        rutAdmin = InputBox("Introdusca la rut Admin de la sucursal " & i & ": ")
        f.guardarDatosSucursal i, direccion, nombreAdmin, rutAdmin
    
    Next
End Sub
Private Sub Form_Load()
ancho = 6225
alto = 4905

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
