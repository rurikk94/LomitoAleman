<<<<<<< HEAD
VERSION 5.00
Begin VB.Form Inicializar 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cash Register Restaurant System - Inicializando..."
   ClientHeight    =   8235
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12090
   Icon            =   "Inicio.frx":0000
   LinkTopic       =   "CRRS"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8235
   ScaleWidth      =   12090
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   1560
      Top             =   1680
   End
   Begin VB.Label lbl_fecha 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "1/12/9999 00:11:33"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   4320
      Width           =   3765
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Caption         =   "Registrado a"
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   720
      TabIndex        =   3
      Top             =   6240
      Width           =   900
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
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
      Height          =   495
      Left            =   10170
      TabIndex        =   2
      ToolTipText     =   "Reinicia la Base de Datos"
      Top             =   5880
      Width           =   1290
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3960
      TabIndex        =   1
      Top             =   5160
      Width           =   5175
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
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
      Height          =   495
      Left            =   10170
      TabIndex        =   0
      Top             =   5160
      Width           =   1245
   End
   Begin VB.Image logoGrande 
      Height          =   4665
      Left            =   240
      Picture         =   "Inicio.frx":3146
      Top             =   120
      Width           =   11520
   End
End
Attribute VB_Name = "Inicializar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    comprobarEmpresa
    comprobarSucursales
    estadoCaja = "Cerrada"
    lbl_fecha.Caption = DateTime.Now
    actualizarfecha
Exit Sub
End Sub
Private Sub comprobarSucursales()
    Dim sMsg As String
    Dim cantLineas As Integer
    Dim Linea As String, total As String
    On Error GoTo ErrHandler

' ...code here...
    Open "sucursales.txt" For Input As #1
    
    ' Luego tienes que leerlo con...
    cantLineas = 0
    Label3.Caption = Label3.Caption & ", con "
    
    Do Until EOF(1)
        Line Input #1, Linea
        Label4.Caption = Linea
        total = total + Linea + vbCrLf
        cantLineas = cantLineas + 1
    Loop
    Label3.Caption = Label3.Caption & Linea & " sucursales"
    Close #1
    cantSucursales = cantLineas
    'MsgBox (cantSucursales)
    
    Label4.Caption = total
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    If cantLineas = 0 Then
        GoTo ErrHandler
    End If
    If cantLineas > 0 Then
        Label4.BackColor = &HFF00&
        Label4.Caption = "Iniciar"
    End If
    Exit Sub

ErrHandler:
    CrearNumSucursales.Show
    Me.Hide
    Error.lbl_error.Caption = "Sucursales no Encontradas"
    Error.Show
    Me.Hide
'sMsg = "Error #" & Err.Number & ": '" & Err.Description & "' from '" & Err.Source & "'"
'MsgBox Err.Description, , "Error"

End Sub
Private Sub comprobarEmpresa()
    Dim sMsg As String
    Dim cantLineas As Integer
    Dim Linea As String, total As String
    On Error GoTo ErrHandler

' ...code here...
    Open "empresa.txt" For Input As #1
    
    ' Luego tienes que leerlo con...
    cantLineas = 0
    Do Until EOF(1)
        Line Input #1, Linea
        Label4.Caption = Linea
        total = total + Linea + vbCrLf
        Label3.Caption = Label3.Caption & ", " & Linea
        cantLineas = cantLineas + 1
    Loop
    Close #1
    
    Label4.Caption = total
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    If cantLineas <> 2 Then
        GoTo ErrHandler
    End If
    If cantLineas = 2 Then
        Label4.BackColor = &HFF00&
        Label4.Caption = "Iniciar"
    End If
    Exit Sub

ErrHandler:
    Error.lbl_error.Caption = "Empresa no Encontrada"
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
    If EstadoDeArchivo("empresa.txt") Then
        Kill ("empresa.txt")
    End If
    If EstadoDeArchivo("sucursales.txt") Then
        Kill ("sucursales.txt")
    End If
    CrearEmpresa.Show
    Error.Show
    Me.Hide
    Unload Me
End Sub

Private Sub Label2_Click()
   End
End Sub

Private Sub Label4_Click()

    'MenuAdministrar.Show
    seleccionarSucursal.Show
    Me.Hide
    Unload Me
End Sub
Public Function EstadoDeArchivo(ByVal archivo As String) As Boolean
Dim fso

Set fso = CreateObject("Scripting.FileSystemObject")

If (fso.FileExists(archivo)) Then
EstadoDeArchivo = True
Else
EstadoDeArchivo = False
End If
End Function

Private Sub Timer1_Timer()
    lbl_fecha.Caption = DateTime.Now
    actualizarfecha
End Sub
=======
VERSION 5.00
Begin VB.Form Inicializar 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cash Register Restaurant System - Inicializando..."
   ClientHeight    =   8235
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12090
   Icon            =   "Inicio.frx":0000
   LinkTopic       =   "CRRS"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8235
   ScaleWidth      =   12090
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      Caption         =   "Registrado a"
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   720
      TabIndex        =   4
      Top             =   7320
      Width           =   900
   End
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
      TabIndex        =   3
      Top             =   5880
      Width           =   1020
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3960
      TabIndex        =   2
      Top             =   5880
      Width           =   5175
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
      Picture         =   "Inicio.frx":3146
      Top             =   120
      Width           =   11520
   End
End
Attribute VB_Name = "Inicializar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    comprobarEmpresa
    comprobarSucursales
    estadoCaja = "Cerrada"
Exit Sub
End Sub
Private Sub comprobarSucursales()
    Dim sMsg As String
    Dim cantLineas As Integer
    Dim Linea As String, Total As String
    On Error GoTo ErrHandler

' ...code here...
    Open "sucursales.txt" For Input As #1
    
    ' Luego tienes que leerlo con...
    cantLineas = 0
    Label3.Caption = Label3.Caption & ", con "
    
    Do Until EOF(1)
        Line Input #1, Linea
        Label4.Caption = Linea
        Total = Total + Linea + vbCrLf
        cantLineas = cantLineas + 1
    Loop
    Label3.Caption = Label3.Caption & Linea & " sucursales"
    Close #1
    cantSucursales = cantLineas
    'MsgBox (cantSucursales)
    
    Label4.Caption = Total
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    If cantLineas = 0 Then
        GoTo ErrHandler
    End If
    If cantLineas > 0 Then
        Label4.BackColor = &HFF00&
        Label4.Caption = "Iniciar"
    End If
    Exit Sub

ErrHandler:
    CrearNumSucursales.Show
    Me.Hide
    Error.lbl_error.Caption = "Sucursales no Encontradas"
    Error.Show
    Me.Hide
'sMsg = "Error #" & Err.Number & ": '" & Err.Description & "' from '" & Err.Source & "'"
'MsgBox Err.Description, , "Error"

End Sub
Private Sub comprobarEmpresa()
    Dim sMsg As String
    Dim cantLineas As Integer
    Dim Linea As String, Total As String
    On Error GoTo ErrHandler

' ...code here...
    Open "empresa.txt" For Input As #1
    
    ' Luego tienes que leerlo con...
    cantLineas = 0
    Do Until EOF(1)
        Line Input #1, Linea
        Label4.Caption = Linea
        Total = Total + Linea + vbCrLf
        Label3.Caption = Label3.Caption & ", " & Linea
        cantLineas = cantLineas + 1
    Loop
    Close #1
    
    Label4.Caption = Total
    'Entonces en la variable Total tienes todas las líneas del archivo de texto y para buscar en ellas utiliza el método InStr().
    'MsgBox (cantLineas)
    If cantLineas <> 2 Then
        GoTo ErrHandler
    End If
    If cantLineas = 2 Then
        Label4.BackColor = &HFF00&
        Label4.Caption = "Iniciar"
    End If
    Exit Sub

ErrHandler:
    Error.lbl_error.Caption = "Empresa no Encontrada"
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
    If EstadoDeArchivo("empresa.txt") Then
        Kill ("empresa.txt")
    End If
    If EstadoDeArchivo("sucursales.txt") Then
        Kill ("sucursales.txt")
    End If
    CrearEmpresa.Show
    Error.Show
    Me.Hide
    Unload Me
End Sub

Private Sub Label2_Click()
   End
End Sub

Private Sub Label4_Click()

    'MenuAdministrar.Show
    seleccionarSucursal.Show
    Me.Hide
    Unload Me
End Sub
Public Function EstadoDeArchivo(ByVal archivo As String) As Boolean
Dim fso

Set fso = CreateObject("Scripting.FileSystemObject")

If (fso.FileExists(archivo)) Then
EstadoDeArchivo = True
Else
EstadoDeArchivo = False
End If
End Function
>>>>>>> bd455ee94f4edfdeb8e4cbd70fc82f2db78e19fc
