VERSION 5.00
Begin VB.Form AdministrarProductos 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Administrar Productos"
   ClientHeight    =   6390
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12615
   LinkTopic       =   "Form1"
   ScaleHeight     =   6390
   ScaleWidth      =   12615
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Productos"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   3255
      Left            =   2040
      TabIndex        =   7
      Top             =   1440
      Width           =   8415
      Begin VB.ListBox List3 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1395
         Left            =   5280
         TabIndex        =   14
         Top             =   720
         Width           =   2415
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1395
         Left            =   360
         TabIndex        =   13
         Top             =   720
         Width           =   1575
      End
      Begin VB.ListBox List2 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1395
         Left            =   1920
         TabIndex        =   12
         Top             =   720
         Width           =   3375
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Precio"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   2
         Left            =   5280
         TabIndex        =   10
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Nombre"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   1
         Left            =   2040
         TabIndex        =   9
         Top             =   360
         Width           =   3255
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Codigo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   0
         Left            =   720
         TabIndex        =   8
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   5280
      TabIndex        =   11
      Top             =   840
      Width           =   1695
   End
   Begin VB.Label lblBtnEliminar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Eliminar Producto"
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
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   6120
      TabIndex        =   6
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label lblBtnModificar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Modificar Producto"
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
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   3240
      TabIndex        =   5
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label lblBtnAgregar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Agregar Producto"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   840
      TabIndex        =   4
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label lblBtn2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "Volver"
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
      Left            =   9120
      TabIndex        =   2
      Top             =   5400
      Width           =   1455
   End
   Begin VB.Label lblTitulo 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Administrar Productos"
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
      Left            =   3600
      TabIndex        =   1
      Top             =   0
      Width           =   4440
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   0
      Picture         =   "AdministrarProductos.frx":0000
      Top             =   0
      Width           =   3690
   End
   Begin VB.Label lbl_sucursal 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sucursal:"
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
      Left            =   9480
      TabIndex        =   0
      Top             =   0
      Width           =   1845
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
      Left            =   9000
      TabIndex        =   3
      Top             =   5160
      Width           =   1695
   End
End
Attribute VB_Name = "AdministrarProductos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    lbl_sucursal.Caption = lbl_sucursal.Caption & sucursalSeleccionada
    cargarProductos sucursalSeleccionada
End Sub
Private Sub limpiarListas()
    List1.Clear
    List2.Clear
    List3.Clear
End Sub


Private Sub cargarProductos(i As Integer)
    limpiarListas
    Dim nombreArchivo As String
    Dim Linea As String
    Dim cant As Integer
    cant = 0
    
    On Error GoTo ErrHandler
    
    nombreArchivo = i & "/productos.txt"
    'MsgBox ("'" & nombreArchivo & "'")
    Label2.Caption = nombreArchivo
    
    Open nombreArchivo For Input As #1
    Do Until EOF(1)
        Line Input #1, Linea
        List1.AddItem (Linea)
        Line Input #1, Linea
        List2.AddItem (Linea)
        Line Input #1, Linea
        List3.AddItem (Linea)
        cant = cant + 1
    Loop
    Close #1
    
    'MsgBox (cant)
    Exit Sub

ErrHandler:
    mostrarError ("No existe producto")
    Error.Show
    'Me.Hide

End Sub

Private Sub lblBtn_caja_Click(Index As Integer)

End Sub

Private Sub lblBtn2_Click(Index As Integer)
    Me.Hide
    Unload Me
    Load MenuSucursal
    MenuSucursal.Show
End Sub

Private Sub lblBtnAgregar_Click()
    Dim codigo, nombre, precio As String
    Dim opcion As Boolean
    
    Me.Hide
    Unload Me
    
        opcion = (MsgBox("¿Es una Promoción?", vbYesNo) = vbYes)
        
        If opcion = True Then
            Do
                codigo = InputBox("Introdusca el CODIGO de la promocion")
            Loop Until CInt(codigo) > 0 And CInt(codigo) < 100
        Else
            Do
                codigo = InputBox("Introdusca el CODIGO del producto ")
            Loop Until CInt(codigo) > 99 And CInt(codigo) < 1000
        End If
        
        Do
            nombre = InputBox("Introdusca el NOMBRE")
        Loop Until nombre <> ""
        
        Do
            precio = InputBox("Introdusca  el PRECIO")
        Loop Until CInt(codigo) > 0
        
    f.agregarProductoTxt sucursalSeleccionada, codigo, nombre, precio
    If opcion = True Then
        guardarPromocionTxt sucursalSeleccionada, codigo, "", ""
    End If

    Load Me
    Me.Show
End Sub

Private Sub lblBtnEliminar_Click()
    
    List2.RemoveItem (List1.ListIndex)
    List3.RemoveItem (List1.ListIndex)
    List1.RemoveItem (List1.ListIndex)
    
    f.inicializarProductoTxt sucursalSeleccionada
    For i = 0 To List1.ListCount - 1
        f.agregarProductoTxt sucursalSeleccionada, List1.List(i), List2.List(i), List3.List(i)
    Next
    
    Me.Hide
    Unload Me
    
    Load Me
    Me.Show
End Sub

Private Sub lblBtnModificar_Click()
    Dim direccion, nombreAdmin, rutAdmin, precio As String
    Dim i As Integer
    
        Do
            codigo = InputBox("Introdusca el CODIGO del producto ", , List1.List(List1.ListIndex))
        Loop Until CInt(codigo) > 50 And CInt(codigo) < 999
        
        Do
            nombre = InputBox("Introdusca el NOMBRE del producto", , List2.List(List1.ListIndex))
        Loop Until nombre <> ""
        
        Do
            precio = InputBox("Introdusca  el PRECIO del producto", , List3.List(List1.ListIndex))
        Loop Until CInt(codigo) > 0
        
    List1.List(List1.ListIndex) = codigo
    List2.List(List1.ListIndex) = nombre
    List3.List(List1.ListIndex) = precio
    
    
    f.inicializarProductoTxt sucursalSeleccionada
    For i = 0 To List1.ListCount - 1
        f.agregarProductoTxt sucursalSeleccionada, List1.List(i), List2.List(i), List3.List(i)
    Next
    
    Me.Hide
    Unload Me
    
    Load Me
    Me.Show

End Sub

Private Sub List1_Click()
Label2.Caption = List1.ListIndex
List2.Selected(List1.ListIndex) = True
List3.Selected(List1.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True

End Sub
Private Sub List2_Click()
List1.Selected(List2.ListIndex) = True
List3.Selected(List2.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True
End Sub
Private Sub List3_Click()
List2.Selected(List3.ListIndex) = True
List1.Selected(List3.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True
End Sub
