VERSION 5.00
Begin VB.Form AdministrarPromociones 
   Caption         =   "Administrar Promociones"
   ClientHeight    =   11385
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   15945
   LinkTopic       =   "Form1"
   ScaleHeight     =   11385
   ScaleWidth      =   15945
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List6 
      Height          =   2205
      Left            =   14160
      TabIndex        =   50
      Top             =   6960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.ListBox List5 
      Height          =   2205
      Left            =   13200
      TabIndex        =   49
      Top             =   6960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.ListBox List4 
      Height          =   2205
      Left            =   12120
      TabIndex        =   48
      Top             =   6960
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ListBox List23 
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
      Height          =   1980
      Left            =   10560
      TabIndex        =   40
      Top             =   6600
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.ListBox List22 
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
      Height          =   1980
      Left            =   9720
      TabIndex        =   39
      Top             =   6600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ListBox List21 
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
      Height          =   1980
      Left            =   8040
      TabIndex        =   38
      Top             =   6600
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.ListBox List20 
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
      Height          =   1980
      Left            =   7320
      TabIndex        =   37
      Top             =   6600
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Tipo"
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   5040
      TabIndex        =   33
      Top             =   6600
      Visible         =   0   'False
      Width           =   1575
      Begin VB.OptionButton Option2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Consumible"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   240
         TabIndex        =   35
         Top             =   720
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Bebestible"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   34
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.ListBox List2 
      Appearance      =   0  'Flat
      Height          =   1980
      Left            =   11640
      TabIndex        =   31
      Top             =   4440
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.ListBox List1 
      Appearance      =   0  'Flat
      Height          =   1980
      Left            =   10920
      TabIndex        =   30
      Top             =   4440
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.ListBox List13 
      Height          =   2205
      Left            =   13440
      TabIndex        =   28
      Top             =   1320
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.ListBox List12 
      Height          =   2205
      Left            =   12000
      TabIndex        =   27
      Top             =   1320
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.ListBox List11 
      Height          =   2205
      Left            =   10560
      TabIndex        =   26
      Top             =   1320
      Visible         =   0   'False
      Width           =   1455
   End
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
      Height          =   1980
      Left            =   12240
      TabIndex        =   24
      Top             =   4440
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.ListBox List9 
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
      Height          =   1980
      Left            =   3840
      TabIndex        =   23
      Top             =   6600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ListBox List8 
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
      Height          =   1980
      Left            =   2640
      TabIndex        =   21
      Top             =   6600
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.ListBox List7 
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
      Height          =   1980
      Left            =   1920
      TabIndex        =   20
      Top             =   6600
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.ListBox List106 
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
      Height          =   1980
      Left            =   7800
      TabIndex        =   19
      Top             =   2160
      Width           =   855
   End
   Begin VB.ListBox List105 
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
      Height          =   1980
      Left            =   6240
      TabIndex        =   18
      Top             =   2160
      Width           =   1335
   End
   Begin VB.ListBox List104 
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
      Height          =   1980
      Left            =   5520
      TabIndex        =   15
      Top             =   2160
      Width           =   735
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Promociones"
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
      TabIndex        =   0
      Top             =   1440
      Width           =   8415
      Begin VB.ListBox List107 
         Appearance      =   0  'Flat
         Height          =   1980
         Left            =   6600
         TabIndex        =   29
         Top             =   720
         Width           =   975
      End
      Begin VB.ListBox List102 
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
         Height          =   1980
         Left            =   960
         TabIndex        =   3
         Top             =   720
         Width           =   1335
      End
      Begin VB.ListBox List101 
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
         Height          =   1980
         Left            =   360
         TabIndex        =   2
         Top             =   720
         Width           =   615
      End
      Begin VB.ListBox List103 
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
         Height          =   1980
         Left            =   2280
         TabIndex        =   1
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Consumibles"
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
         Index           =   4
         Left            =   5880
         TabIndex        =   17
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
         TabIndex        =   6
         Top             =   360
         Width           =   1335
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
         Index           =   1
         Left            =   2040
         TabIndex        =   5
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Bebestibles"
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
         Left            =   3480
         TabIndex        =   4
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Label Label11 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Eliminar Producto"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   9720
      TabIndex        =   47
      Top             =   8760
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Eliminar Producto"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   7440
      TabIndex        =   46
      Top             =   8760
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label9 
      Caption         =   "Label9"
      Height          =   375
      Left            =   3840
      TabIndex        =   45
      Top             =   840
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Cancelar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   5040
      TabIndex        =   44
      Top             =   9120
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label7 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Guardar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   5040
      TabIndex        =   43
      Top             =   8520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "Consumibles"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   9600
      TabIndex        =   42
      Top             =   6360
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label5 
      Caption         =   "Bebestibles"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7440
      TabIndex        =   41
      Top             =   6360
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H0000C000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Agregar a la promocion"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   5040
      TabIndex        =   36
      Top             =   7920
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Label2"
      Height          =   495
      Left            =   7320
      TabIndex        =   32
      Top             =   840
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Promociones"
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
      Index           =   6
      Left            =   10680
      TabIndex        =   25
      Top             =   4200
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Productos"
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
      Index           =   5
      Left            =   1920
      TabIndex        =   22
      Top             =   6360
      Visible         =   0   'False
      Width           =   1575
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
      Index           =   3
      Left            =   7680
      TabIndex        =   16
      Top             =   1800
      Width           =   2415
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
      TabIndex        =   13
      Top             =   0
      Width           =   1845
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   0
      Picture         =   "AdministrarPromociones.frx":0000
      Top             =   0
      Width           =   3690
   End
   Begin VB.Label lblTitulo 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Administrar Promociones"
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
      TabIndex        =   12
      Top             =   0
      Width           =   4965
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
      TabIndex        =   11
      Top             =   5400
      Width           =   1455
   End
   Begin VB.Label lblBtnAgregar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Agregar Promocion"
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
      TabIndex        =   10
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label lblBtnModificar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Modificar Promocion"
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
      TabIndex        =   9
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label lblBtnEliminar 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Eliminar Promocion"
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
      TabIndex        =   8
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   5280
      TabIndex        =   7
      Top             =   840
      Visible         =   0   'False
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
      Left            =   9000
      TabIndex        =   14
      Top             =   5160
      Width           =   1695
   End
End
Attribute VB_Name = "AdministrarPromociones"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    lbl_sucursal.Caption = lbl_sucursal.Caption & sucursalSeleccionada
    limpiarListas
    limpiarSubListas
    cargarPromocionesTemp sucursalSeleccionada
    cargarProductosTemp sucursalSeleccionada
    cargarPromociones

End Sub
Private Sub cargarPromociones()
Dim i As Integer
For i = 0 To List1.ListCount - 1
    List101.AddItem (List1.List(i))
    List102.AddItem (List2.List(i))
    List103.AddItem (List3.List(i))
Next
End Sub
Private Sub limpiarListas()
    List101.Clear
    List102.Clear
    List103.Clear
End Sub
Private Sub limpiarSubListas()
    List104.Clear
    List105.Clear
    List106.Clear
    List107.Clear
    List20.Clear
    List21.Clear
    List22.Clear
    List23.Clear
End Sub

Private Sub cargarProductosTemp(i As Integer)
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
            List4.AddItem (Linea)
        
        If Linea > 99 Then
            List7.AddItem (Linea)
            Line Input #1, Linea
            List8.AddItem (Linea)
            List5.AddItem (Linea)
            Line Input #1, Linea
            List9.AddItem (Linea)
            List6.AddItem (Linea)
        Else
            List1.AddItem (Linea)
            Line Input #1, Linea
            List2.AddItem (Linea)
            List5.AddItem (Linea)
            Line Input #1, Linea
            List3.AddItem (Linea)
            List6.AddItem (Linea)
        End If
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

Private Sub cargarPromocionesTemp(i As Integer)
    Dim nombreArchivo As String
    Dim Linea As String
    Dim cant As Integer
    cant = 0
    
    On Error GoTo ErrHandler
    
    nombreArchivo = i & "/promociones.txt"
    'MsgBox ("'" & nombreArchivo & "'")
    Label2.Caption = nombreArchivo
    
    Open nombreArchivo For Input As #1
    Do Until EOF(1)
        Line Input #1, Linea
        List11.AddItem (Linea)
        Line Input #1, Linea
        List12.AddItem (Linea)
        Line Input #1, Linea
        List13.AddItem (Linea)
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

Private Sub Label10_Click()
    List20.RemoveItem (List20.ListIndex)
    List21.RemoveItem (List21.ListIndex)
    Label10.Enabled = False
End Sub

Private Sub Label11_Click()
    List22.RemoveItem (List22.ListIndex)
    List23.RemoveItem (List23.ListIndex)
    Label11.Enabled = False

End Sub

Private Sub Label4_Click()
If Option1.Value = True Then
    List20.AddItem (List7.List(List7.ListIndex))
    List21.AddItem (List8.List(List8.ListIndex))
End If
If Option2.Value = True Then
    List22.AddItem (List7.List(List7.ListIndex))
    List23.AddItem (List8.List(List8.ListIndex))
End If
End Sub

Private Sub Label7_Click()
Dim i As Integer
    Label2.Caption = ""
    Label3.Caption = ""
    
    For i = 0 To List20.ListCount - 1
        Label2.Caption = Label2.Caption & List20.List(i)
        If i <> List20.ListCount - 1 Then
            Label2.Caption = Label2.Caption & ";"
        End If
    Next
    
    For i = 0 To List22.ListCount - 1
        Label3.Caption = Label3.Caption & List22.List(i)
        If i <> List22.ListCount - 1 Then
            Label3.Caption = Label3.Caption & ";"
        End If
    Next
    
    For i = 0 To List11.ListCount - 1
        If List11.List(i) = Label9.Caption Then
                List12.List(i) = Label2.Caption
                List13.List(i) = Label3.Caption
            Exit For
        End If
    Next
    inicializarPromocionesTxt sucursalSeleccionada
    For i = 0 To List11.ListCount - 1
        guardarPromocionTxt sucursalSeleccionada, List11.List(i), List12.List(i), List13.List(i)
    Next
    
    ocultarweas
MsgBox ("Promo Modificada")
    
End Sub
Private Sub ocultarweas()
Label1(5).Visible = False
List7.Visible = False
List8.Visible = False
List9.Visible = False
Frame2.Visible = False
Label4.Visible = False
Label7.Visible = False
Label8.Visible = False
Label5.Visible = False
Label6.Visible = False
List20.Visible = False
List21.Visible = False
List22.Visible = False
List23.Visible = False
Label10.Visible = False
Label11.Visible = False
End Sub

Private Sub lblBtn2_Click(Index As Integer)
    Me.Hide
    Unload Me
    Load MenuSucursal
    MenuSucursal.Show
End Sub

Private Sub lblBtnAgregar_Click()

    Dim codigo, nombre, precio As String
    
    
        Do
            codigo = InputBox("Introdusca el CODIGO de la promocion")
        Loop Until CInt(codigo) > 0 And CInt(codigo) < 100
        
        Do
            nombre = InputBox("Introdusca el NOMBRE de la promocion")
        Loop Until nombre <> ""
        
        Do
            precio = InputBox("Introdusca  el PRECIO de la promocion")
        Loop Until CInt(codigo) > 0
        
    f.agregarProductoTxt sucursalSeleccionada, codigo, nombre, precio
        guardarPromocionTxt sucursalSeleccionada, codigo, "", ""

    Me.Hide
    Unload Me
    Load Me
    Me.Show
End Sub
Private Sub cargaProductosDePromo(id As Integer)
Dim i, j As Integer
Dim buffer As String

limpiarSubListas

    Label9.Caption = List101.List(List101.ListIndex)
    
    'rellena el buffer de producotos de la promo
    For i = 0 To List11.ListCount - 1
        If List101.List(List101.ListIndex) = List11.List(i) Then
            Label2.Caption = List12.List(i)
            Label3.Caption = List13.List(i)
            Exit For
        End If
    Next
    buffer = List12.List(i)
    'llena la lista de producotos A con datos del buffer
    Do While buffer <> ""
        If InStr(buffer, ";") <> 0 Then
            List104.AddItem (Left(buffer, InStr(buffer, ";") - 1))
            buffer = Mid(buffer, InStr(buffer, ";") + 1)
            'MsgBox (buffer)
            Else
            List104.AddItem (buffer)
            buffer = ""
        End If
    Loop
    'llena la lista de producotos B con datos del buffer
    buffer = List13.List(i)
    Do While buffer <> ""
        If InStr(buffer, ";") <> 0 Then
            List106.AddItem (Left(buffer, InStr(buffer, ";") - 1))
            buffer = Mid(buffer, InStr(buffer, ";") + 1)
            'MsgBox (buffer)
            Else
            List106.AddItem (buffer)
            buffer = ""
        End If
    Loop
    
    'llena los nombres de la lista104 productosA
    For i = 0 To List104.ListCount - 1
        For j = 0 To List7.ListCount
            If List7.List(j) = List104.List(i) Then
                List105.AddItem (List8.List(j))
                Exit For
            End If
        Next
    Next
    
    'llena los nombres de la lista107 productosA
    For i = 0 To List106.ListCount - 1
        For j = 0 To List7.ListCount
            If List7.List(j) = List106.List(i) Then
                List107.AddItem (List8.List(j))
                Exit For
            End If
        Next
    Next
End Sub

Private Sub lblBtnEliminar_Click()

    
    For i = 0 To List11.ListCount - 1
        If List11.List(i) = Label9.Caption Then
                List11.RemoveItem (i)
                List12.RemoveItem (i)
                List13.RemoveItem (i)
            Exit For
        End If
    Next
    For i = 0 To List1.ListCount - 1
        If List1.List(i) = Label9.Caption Then
                List1.RemoveItem (i)
                List2.RemoveItem (i)
                List3.RemoveItem (i)
            Exit For
        End If
    Next
    inicializarPromocionesTxt sucursalSeleccionada
    For i = 0 To List11.ListCount - 1
        guardarPromocionTxt sucursalSeleccionada, List11.List(i), List12.List(i), List13.List(i)
    Next
    
    
    For i = 0 To List4.ListCount - 1
        If List4.List(i) = Label9.Caption Then
                List4.RemoveItem (i)
                List5.RemoveItem (i)
                List6.RemoveItem (i)
            Exit For
        End If
    Next
    inicializarProductoTxt sucursalSeleccionada
    For i = 0 To List4.ListCount - 1
        agregarProductoTxt sucursalSeleccionada, List4.List(i), List5.List(i), List6.List(i)
    Next
    
    Me.Hide
    Unload Me
     Load Me
     Me.Show
     
End Sub

Private Sub lblBtnModificar_Click()
copiaListas
mostrarWeas

End Sub
Private Sub mostrarWeas()
Label1(5).Visible = True
List7.Visible = True
List8.Visible = True
List9.Visible = True
Frame2.Visible = True
Label4.Visible = True
Label7.Visible = True
Label8.Visible = True
Label5.Visible = True
Label6.Visible = True
List20.Visible = True
List21.Visible = True
List22.Visible = True
List23.Visible = True
Label10.Visible = True
Label11.Visible = True

End Sub
Private Sub copiaUnaLista(listaOrigen As Object, listaDestino As Object)
Dim i As Integer
For i = 0 To listaOrigen.ListCount - 1
    listaDestino.AddItem (listaOrigen.List(i))
Next
End Sub
Private Sub copiaListas()
    copiaUnaLista List104, List20
    copiaUnaLista List105, List21
    copiaUnaLista List106, List22
    copiaUnaLista List107, List23

End Sub


Private Sub List101_Click()
List102.Selected(List101.ListIndex) = True
List103.Selected(List101.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True
cargaProductosDePromo List1.ListIndex

End Sub

Private Sub List102_Click()
List101.Selected(List102.ListIndex) = True
List103.Selected(List102.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True

End Sub

Private Sub List103_Click()
List101.Selected(List103.ListIndex) = True
List102.Selected(List103.ListIndex) = True
lblBtnModificar.Enabled = True
lblBtnEliminar.Enabled = True
End Sub

Private Sub List20_Click()
List21.Selected(List20.ListIndex) = True
Label10.Enabled = True

End Sub

Private Sub List21_Click()
List20.Selected(List21.ListIndex) = True
Label10.Enabled = True

End Sub

Private Sub List22_Click()
List23.Selected(List22.ListIndex) = True
Label11.Enabled = True

End Sub

Private Sub List23_Click()
List22.Selected(List23.ListIndex) = True
Label11.Enabled = True

End Sub

Private Sub List7_Click()

List8.Selected(List7.ListIndex) = True
List9.Selected(List7.ListIndex) = True
Label4.Enabled = True
End Sub

Private Sub List8_Click()
List7.Selected(List8.ListIndex) = True
List9.Selected(List8.ListIndex) = True
Label4.Enabled = True

End Sub

Private Sub List9_Click()
List8.Selected(List9.ListIndex) = True
List7.Selected(List9.ListIndex) = True
Label4.Enabled = True

End Sub

