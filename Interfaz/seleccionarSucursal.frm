VERSION 5.00
Begin VB.Form seleccionarSucursal 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Seleccionar Sucursal"
   ClientHeight    =   4650
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5460
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   5460
   StartUpPosition =   1  'CenterOwner
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "seleccionarSucursal.frx":0000
      Left            =   240
      List            =   "seleccionarSucursal.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   2280
      Width           =   4455
   End
   Begin VB.ListBox List1 
      Height          =   255
      Left            =   2400
      TabIndex        =   7
      Top             =   120
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "&Eliminar Sucusal"
      Enabled         =   0   'False
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
      Height          =   615
      Index           =   2
      Left            =   3720
      TabIndex        =   12
      Top             =   720
      Width           =   1575
   End
   Begin VB.Label lblBtn3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Agregar Sucursal"
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
      Height          =   615
      Index           =   2
      Left            =   3720
      TabIndex        =   11
      Top             =   0
      Width           =   1575
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "datos Admin"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2880
      TabIndex        =   10
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Administrador:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   1
      Left            =   2880
      TabIndex        =   9
      Top             =   2640
      Width           =   1740
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Dirección:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   0
      Left            =   240
      TabIndex        =   8
      Top             =   2640
      Width           =   1155
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "datos sucursal"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   240
      TabIndex        =   6
      Top             =   3000
      Width           =   1665
   End
   Begin VB.Label lblBtn1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      Caption         =   "&Aceptar"
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
      Left            =   480
      TabIndex        =   3
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "&Salir"
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
      Left            =   3000
      TabIndex        =   2
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Label lbl_error 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Seleccione Sucursal"
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
      Left            =   120
      TabIndex        =   0
      Top             =   1680
      Width           =   3990
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   0
      Picture         =   "seleccionarSucursal.frx":0004
      Top             =   0
      Width           =   3690
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
      Left            =   2880
      TabIndex        =   5
      Top             =   3480
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
      Left            =   360
      TabIndex        =   4
      Top             =   3480
      Width           =   1695
   End
End
Attribute VB_Name = "seleccionarSucursal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cargarSucursales()
    Dim sMsg As String
    Dim cantLineas As Integer
    Dim Linea As String, Total As String
    On Error GoTo ErrHandler

' ...code here...
    Open "sucursales.txt" For Input As #1
    ' Luego tienes que leerlo con...
    cantLineas = 0
    Combo1.AddItem "Seleccione una Sucursal", 0
    Combo1.ListIndex = 0
    Do Until EOF(1)
        Line Input #1, Linea
        Combo1.AddItem (Linea)
    Loop
    Close #1
    'MsgBox (cantSucursales)
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    Exit Sub

ErrHandler:
    mostrarError ("No hay Sucursales")
    Combo1.AddItem "No hay Sucursales", 0
    Error.Show
    Me.Hide
'sMsg = "Error #" & Err.Number & ": '" & Err.Description & "' from '" & Err.Source & "'"
'MsgBox Err.Description, , "Error"

End Sub
Private Sub cargarDatosSucursal(i As Integer)
    List1.Clear
    Dim nombreArchivo As String
    Dim Linea As String
    
    On Error GoTo ErrHandler
    nombreArchivo = i & "/sucursal.txt"
    Label1.Caption = nombreArchivo
    Open nombreArchivo For Input As #1
    Do Until EOF(1)
        Line Input #1, Linea
        List1.AddItem (Linea)
    Loop
    Close #1
    'MsgBox (cantSucursales)
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    Exit Sub

ErrHandler:
    mostrarError ("No existe la sucursal")
    Error.Show
    'Me.Hide

End Sub

Private Sub Combo1_Change()
    lblBtn1(0).Enabled = True
    lblBtn1(1).Enabled = True
    If Combo1.ListIndex > 0 Then
        Dim numSucursal As String
        numSucursal = Combo1.List(Combo1.ListIndex)
        Label1.Caption = numSucursal
        cargarDatosSucursal (numSucursal)
        Label1.Caption = List1.List(1)
        Label3.Caption = List1.List(2)
    Else
        lblBtn1(0).Enabled = False
        lblBtn1(1).Enabled = False
        Label1.Caption = ""
        Label3.Caption = ""
    End If
End Sub

Private Sub Combo1_Click()
    Combo1_Change
End Sub

Private Sub Form_Click()
    Label1.Caption = Combo1.List(Combo1.ListIndex)

End Sub

Private Sub Form_Load()
    cargarSucursales
End Sub

Private Sub lblBtn1_Click(Index As Integer)
    sucursalSeleccionada = Combo1.List(Combo1.ListIndex)
    nombreadministrador = Label3.Caption
    Me.Hide
    Unload Me
    MenuSucursal.Show
End Sub

Private Sub lblBtn2_Click(Index As Integer)
Me.Hide
Inicializar.Show
Unload Me
End Sub

Private Sub lblBtn3_Click(Index As Integer)
    f.cantSucursales = f.cantSucursales + 1
    MsgBox (f.cantSucursales)
    f.crearArchivo ("sucursales.txt")
    f.agregarNumSucursalAArchivo "sucursales.txt"
    f.crearCarpetas (f.cantSucursales)
    direccion = InputBox("Introdusca la direccion de la sucursal " & f.cantSucursales & ": ")
    nombreAdmin = InputBox("Introdusca la nombre Admin de la sucursal " & f.cantSucursales & ": ")
    rutAdmin = InputBox("Introdusca la rut Admin de la sucursal " & f.cantSucursales & ": ")
    f.guardarDatosSucursal (f.cantSucursales), (direccion), (nombreAdmin), (rutAdmin)
    
    
End Sub
