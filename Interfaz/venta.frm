VERSION 5.00
Begin VB.Form venta 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "venta"
   ClientHeight    =   7890
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14145
   LinkTopic       =   "Form1"
   ScaleHeight     =   7890
   ScaleWidth      =   14145
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   375
      Left            =   840
      TabIndex        =   24
      Text            =   "1"
      Top             =   7320
      Width           =   615
   End
   Begin VB.ListBox List8 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   3240
      TabIndex        =   20
      Top             =   5040
      Width           =   855
   End
   Begin VB.ListBox List7 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   1200
      TabIndex        =   19
      Top             =   5040
      Width           =   2055
   End
   Begin VB.ListBox List6 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   600
      TabIndex        =   18
      Top             =   5040
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   7920
      TabIndex        =   9
      Text            =   "0"
      Top             =   3960
      Width           =   975
   End
   Begin VB.ListBox List5 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   7920
      TabIndex        =   8
      Top             =   1800
      Width           =   855
   End
   Begin VB.ListBox List4 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   7080
      TabIndex        =   7
      Top             =   1800
      Width           =   855
   End
   Begin VB.ListBox List3 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   5040
      TabIndex        =   6
      Top             =   1800
      Width           =   2055
   End
   Begin VB.ListBox List2 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   4440
      TabIndex        =   5
      Top             =   1800
      Width           =   615
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1860
      Left            =   3720
      TabIndex        =   4
      Top             =   1800
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   480
      Top             =   480
   End
   Begin VB.Label Label16 
      Caption         =   "Numero Boleta:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   29
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Label Label15 
      Caption         =   "numBoleta"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   840
      TabIndex        =   28
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Label Label14 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Vender"
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
      Height          =   975
      Left            =   6000
      TabIndex        =   27
      Top             =   5880
      Width           =   2415
   End
   Begin VB.Label Label13 
      Appearance      =   0  'Flat
      BackColor       =   &H0080FF80&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Limpiar"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   9240
      TabIndex        =   26
      Top             =   3840
      Width           =   1815
   End
   Begin VB.Label Label12 
      Caption         =   "Cantidad"
      Height          =   255
      Left            =   720
      TabIndex        =   25
      Top             =   7080
      Width           =   735
   End
   Begin VB.Label Label11 
      Caption         =   "Precio"
      Height          =   255
      Left            =   3240
      TabIndex        =   23
      Top             =   4800
      Width           =   735
   End
   Begin VB.Label Label10 
      Caption         =   "Producto"
      Height          =   255
      Left            =   1200
      TabIndex        =   22
      Top             =   4800
      Width           =   1575
   End
   Begin VB.Label Label9 
      Caption         =   "cod"
      Height          =   255
      Left            =   600
      TabIndex        =   21
      Top             =   4800
      Width           =   855
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "eliminar"
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
      Height          =   495
      Left            =   4440
      TabIndex        =   17
      Top             =   3960
      Width           =   2055
   End
   Begin VB.Label Label7 
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Agregar"
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
      Height          =   615
      Left            =   1800
      TabIndex        =   16
      Top             =   7080
      Width           =   2055
   End
   Begin VB.Label Label6 
      Caption         =   "Total"
      Height          =   255
      Left            =   7440
      TabIndex        =   15
      Top             =   4080
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "Cantidad"
      Height          =   255
      Left            =   3720
      TabIndex        =   14
      Top             =   1560
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Total"
      Height          =   255
      Left            =   8040
      TabIndex        =   13
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "Precio"
      Height          =   255
      Left            =   7080
      TabIndex        =   12
      Top             =   1560
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Producto"
      Height          =   255
      Left            =   5040
      TabIndex        =   11
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "cod"
      Height          =   255
      Left            =   4440
      TabIndex        =   10
      Top             =   1560
      Width           =   855
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
      Left            =   9960
      TabIndex        =   2
      Top             =   6240
      Width           =   1455
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
      Left            =   4560
      TabIndex        =   1
      Top             =   240
      Width           =   1845
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
      Left            =   8640
      TabIndex        =   0
      Top             =   360
      Width           =   2520
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   0
      Picture         =   "venta.frx":0000
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
      Left            =   9840
      TabIndex        =   3
      Top             =   6000
      Width           =   1695
   End
End
Attribute VB_Name = "venta"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
cargarProductos sucursalSeleccionada
Label15.Caption = numUltimaVenta
End Sub

Private Sub cargarProductos(i As Integer)
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
                List6.AddItem (Linea)
            Line Input #1, Linea
                List7.AddItem (Linea)
            Line Input #1, Linea
                List8.AddItem (Linea)
    Loop
    Close #1
    
    'MsgBox (cant)
    Exit Sub

ErrHandler:
    mostrarError ("No existe producto")
    Error.Show
    'Me.Hide



End Sub

Private Sub Label13_Click()
    List1.Clear
    List2.Clear
    List3.Clear
    List4.Clear
    List5.Clear
    Text1.Text = 0
        Label14.Enabled = False
End Sub

Private Sub Label14_Click()
    guardarUnaVenta sucursalSeleccionada, numUltimaVenta, Replace(Text1.Text, " ", "")
    MsgBox ("Venta Realizada" & vbNewLine & "Numero Boleta: " & numUltimaVenta & vbNewLine & "Total: " & Text1.Text & vbNewLine & "Propina Sugerida (10%): " & Text1.Text / 10)
    numUltimaVenta = numUltimaVenta + 1
    Unload Me
    Load Me
    Me.Show
End Sub

Private Sub Label7_Click()

    List1.AddItem (Text2.Text)
    List2.AddItem (List6.List(List6.ListIndex))
    List3.AddItem (List7.List(List7.ListIndex))
    List4.AddItem (List8.List(List8.ListIndex))
    List5.AddItem (CInt(Text2.Text) * List8.List(List8.ListIndex))
    
    Text1.Text = Text1.Text + Text2.Text * List8.List(List8.ListIndex)
    Label14.Enabled = True
    

End Sub

Private Sub Label8_Click()
    
    List1.RemoveItem (List1.ListIndex)
    List2.RemoveItem (List2.ListIndex)
    List3.RemoveItem (List3.ListIndex)
    List4.RemoveItem (List4.ListIndex)
    List5.RemoveItem (List5.ListIndex)
    Label8.Enabled = False
    If List1.ListCount > 0 Then
        Label14.Enabled = True
        Else
        
        Label14.Enabled = False
    End If
    
End Sub

Private Sub lblBtn2_Click(Index As Integer)
Me.Hide
Unload Me
MenuSucursal.Show
End Sub


Private Sub List1_Click()
    List2.Selected(List1.ListIndex) = True
    List3.Selected(List1.ListIndex) = True
    List4.Selected(List1.ListIndex) = True
    List5.Selected(List1.ListIndex) = True
    
    If List1.Selected(List1.ListIndex) = True Then
        Label8.Enabled = True
    End If

End Sub

Private Sub List2_Click()
    List1.Selected(List2.ListIndex) = True
    List3.Selected(List2.ListIndex) = True
    List4.Selected(List2.ListIndex) = True
    List5.Selected(List2.ListIndex) = True

End Sub

Private Sub List3_Click()
    List1.Selected(List3.ListIndex) = True
    List2.Selected(List3.ListIndex) = True
    List4.Selected(List3.ListIndex) = True
    List5.Selected(List3.ListIndex) = True

End Sub

Private Sub List4_Click()
    List1.Selected(List4.ListIndex) = True
    List3.Selected(List4.ListIndex) = True
    List2.Selected(List4.ListIndex) = True
    List5.Selected(List4.ListIndex) = True

End Sub

Private Sub List5_Click()
    List1.Selected(List5.ListIndex) = True
    List3.Selected(List5.ListIndex) = True
    List4.Selected(List5.ListIndex) = True
    List2.Selected(List5.ListIndex) = True

End Sub

Private Sub List6_Click()
    List7.Selected(List6.ListIndex) = True
    List8.Selected(List6.ListIndex) = True
    Text2.Enabled = True
If CInt(Text2.Text) < 1 Then
    Label7.Enabled = False
    Else
    Label7.Enabled = True
End If
End Sub

Private Sub List7_Click()

    List6.Selected(List7.ListIndex) = True
    List8.Selected(List7.ListIndex) = True
    Text2.Enabled = True
If CInt(Text2.Text) < 1 Then
    Label7.Enabled = False
    Else
    Label7.Enabled = True
End If
End Sub

Private Sub List8_Click()

    List7.Selected(List8.ListIndex) = True
    List6.Selected(List8.ListIndex) = True
    Text2.Enabled = True
If CInt(Text2.Text) < 1 Then
    Label7.Enabled = False
    Else
    Label7.Enabled = True
End If
End Sub

Private Sub Text2_Change()
If CInt(Text2.Text) < 1 Then
    Label7.Enabled = False
    Else
    Label7.Enabled = True
End If
End Sub

Private Sub Timer1_Timer()

    lbl_fecha.Caption = DateTime.Now
    actualizarfecha
End Sub
