VERSION 5.00
Begin VB.Form MenuSucursal 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Sucursal"
   ClientHeight    =   6330
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17355
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   17355
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   480
      Top             =   480
   End
   Begin VB.Label lblBtnBuscarBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0E0FF&
      Caption         =   "Buscar Boleta"
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
      Index           =   4
      Left            =   7560
      TabIndex        =   22
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblBtnUltimaBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFC0C0&
      Caption         =   "Imprimir Ultima Boleta"
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
      Height          =   855
      Index           =   2
      Left            =   4800
      TabIndex        =   20
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label lblBtnNuevaBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
      Caption         =   "Nueva Boleta"
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
      Index           =   0
      Left            =   2520
      TabIndex        =   18
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Modificar:"
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
      Left            =   6120
      TabIndex        =   17
      Top             =   4440
      Width           =   1980
   End
   Begin VB.Label lblBtnSucursal 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
      Caption         =   "Sucursal"
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
      Index           =   8
      Left            =   4440
      TabIndex        =   16
      Top             =   5280
      Width           =   1455
   End
   Begin VB.Line Line8 
      X1              =   4080
      X2              =   10440
      Y1              =   4680
      Y2              =   4680
   End
   Begin VB.Line Line7 
      X1              =   4080
      X2              =   4080
      Y1              =   4680
      Y2              =   6120
   End
   Begin VB.Line Line6 
      X1              =   4080
      X2              =   10440
      Y1              =   6120
      Y2              =   6120
   End
   Begin VB.Line Line5 
      X1              =   10440
      X2              =   10440
      Y1              =   4680
      Y2              =   6120
   End
   Begin VB.Label lblBtnProductos 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FF80FF&
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
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   4
      Left            =   6360
      TabIndex        =   12
      Top             =   5280
      Width           =   1455
   End
   Begin VB.Label lblBtnPromos 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000C0C0&
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
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   0
      Left            =   8520
      TabIndex        =   10
      Top             =   5280
      Width           =   1695
   End
   Begin VB.Label lbl_adminitrador 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Adminitrador:"
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
      Left            =   360
      TabIndex        =   9
      Top             =   5760
      Width           =   2670
   End
   Begin VB.Label lblBtnResumen 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      Caption         =   "Resumen Ventas"
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
      Left            =   11280
      TabIndex        =   7
      Top             =   5160
      Width           =   1455
   End
   Begin VB.Line Line4 
      X1              =   16200
      X2              =   16200
      Y1              =   120
      Y2              =   1560
   End
   Begin VB.Line Line3 
      X1              =   12480
      X2              =   16200
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line2 
      X1              =   12480
      X2              =   12480
      Y1              =   120
      Y2              =   1560
   End
   Begin VB.Line Line1 
      X1              =   12480
      X2              =   16200
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Label lblBtn_caja 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      Caption         =   "Abrir Caja"
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
      Left            =   13560
      TabIndex        =   4
      Top             =   960
      Width           =   1455
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
      Left            =   13440
      TabIndex        =   3
      Top             =   5280
      Width           =   1455
   End
   Begin VB.Label lbl_fecha 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "dd/mm/anno"
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
      Left            =   7800
      TabIndex        =   2
      Top             =   240
      Width           =   2520
   End
   Begin VB.Label lbl_caja 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Caja: "
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
      Left            =   12840
      TabIndex        =   1
      Top             =   240
      Width           =   1095
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
      Left            =   3720
      TabIndex        =   0
      Top             =   120
      Width           =   1845
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   0
      Picture         =   "MenuSucursal.frx":0000
      Top             =   0
      Width           =   3690
   End
   Begin VB.Label lblBtn_caja 
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
      Left            =   13440
      TabIndex        =   5
      Top             =   720
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
      Left            =   13320
      TabIndex        =   6
      Top             =   5040
      Width           =   1695
   End
   Begin VB.Label lblBtnResumen 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
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
      Height          =   855
      Index           =   3
      Left            =   11160
      TabIndex        =   8
      Top             =   5040
      Width           =   1695
   End
   Begin VB.Label lblBtnPromos 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000C0C0&
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
      Height          =   855
      Index           =   1
      Left            =   8400
      TabIndex        =   11
      Top             =   5040
      Width           =   1935
   End
   Begin VB.Label lblBtnProductos 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FF80FF&
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
      Height          =   855
      Index           =   5
      Left            =   6240
      TabIndex        =   13
      Top             =   5040
      Width           =   1695
   End
   Begin VB.Label lblBtnSucursal 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
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
      Height          =   855
      Index           =   7
      Left            =   4320
      TabIndex        =   15
      Top             =   5040
      Width           =   1695
   End
   Begin VB.Label lblBtn3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
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
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   6
      Left            =   4440
      TabIndex        =   14
      Top             =   5280
      Width           =   1455
   End
   Begin VB.Label lblBtnBuscarBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0E0FF&
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
      Height          =   855
      Index           =   5
      Left            =   7440
      TabIndex        =   23
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label lblBtnUltimaBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFC0C0&
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
      Height          =   1095
      Index           =   3
      Left            =   4680
      TabIndex        =   21
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label lblBtnNuevaBoleta 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFC0&
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
      Height          =   855
      Index           =   1
      Left            =   2400
      TabIndex        =   19
      Top             =   2160
      Width           =   1695
   End
End
Attribute VB_Name = "MenuSucursal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim dia, mes, anno, hora, min, sec As Integer



Private Sub Form_Load()
    lbl_fecha.Caption = DateTime.Now
    lbl_caja.Caption = lbl_caja.Caption & estadoCaja
    lbl_adminitrador.Caption = lbl_adminitrador.Caption & nombreadministrador
    lbl_sucursal.Caption = lbl_sucursal.Caption & sucursalSeleccionada
    'lbl_fecha.Text = dia & "/" & mes & "/" & anno & " " & hora & ":" & min & ":" & sec
End Sub

Private Sub lblBtn_caja_Click(Index As Integer)
    cambiarColorBtn
    habilitarOpciones
End Sub

Private habilitarOpciones()
lblBtnNuevaBoleta
End Sub


Private cambiarColorBtn()

    If lblBtn_caja(0).Caption = "Abrir Caja" Then
        lblBtn_caja(0).Caption = "Cerrar Caja"
        lblBtn_caja(0).BackColor = &HFF&
        lblBtn_caja(1).BackColor = &HFF&
        Exit Sub
    End If
    If lblBtn_caja(0).Caption = "Cerrar Caja" Then
        lblBtn_caja(0).Caption = "Abrir Caja"
        lblBtn_caja(0).BackColor = &HFF00&
        lblBtn_caja(1).BackColor = &HFF00&
        Exit Sub
    End If
End Sub

Private Sub lblBtn2_Click(Index As Integer)
    seleccionarSucursal.Show
    Me.Hide
    Unload Me
End Sub



Private Sub Timer1_Timer()
    lbl_fecha.Caption = DateTime.Now
End Sub
