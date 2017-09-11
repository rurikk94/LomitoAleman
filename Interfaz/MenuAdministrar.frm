<<<<<<< HEAD
VERSION 5.00
Begin VB.Form MenuAdministrar 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Cash Register Restaurant System - Menu Principal"
   ClientHeight    =   6420
   ClientLeft      =   225
   ClientTop       =   570
   ClientWidth     =   5760
   Icon            =   "MenuAdministrar.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   6420
   ScaleWidth      =   5760
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Administrar"
      BeginProperty Font 
         Name            =   "Amplitude-Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   500
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   360
      TabIndex        =   2
      Top             =   1680
      Width           =   5295
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00C000C0&
         Caption         =   "Promociones"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Left            =   500
         TabIndex        =   5
         Top             =   2160
         Width           =   4200
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H000080FF&
         Caption         =   "Productos"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Left            =   500
         TabIndex        =   4
         Top             =   1200
         Width           =   4200
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFF00&
         Caption         =   "Sucursales"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Index           =   0
         Left            =   500
         TabIndex        =   3
         Top             =   360
         Width           =   4200
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H0000FF00&
      Caption         =   "Vender"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Index           =   0
      Left            =   3720
      MousePointer    =   3  'I-Beam
      TabIndex        =   0
      Top             =   240
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   120
      Picture         =   "MenuAdministrar.frx":3146
      Top             =   120
      Width           =   3690
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "Ayuda"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Index           =   3
      Left            =   1080
      TabIndex        =   6
      Top             =   5280
      Width           =   1500
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      Caption         =   "Cerrar"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Index           =   1
      Left            =   3720
      TabIndex        =   1
      Top             =   5280
      Width           =   1500
   End
End
Attribute VB_Name = "MenuAdministrar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Resize()
If Me.WindowState <> vbMinimized Then '// si no te da error al minimizar
    If Me.Width < 6000 Then
        Me.Width = 6000
    End If
    If Me.Width > 6000 Then
        Me.Width = 6000
    End If
    If Me.Height < 7000 Then
        Me.Height = 7000
    End If
    If Me.Height > 7000 Then
        Me.Height = 7000
    End If
End If
End Sub

Private Sub Label1_Click(Index As Integer)
   End
End Sub
=======
VERSION 5.00
Begin VB.Form MenuAdministrar 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Cash Register Restaurant System - Menu Principal"
   ClientHeight    =   6420
   ClientLeft      =   225
   ClientTop       =   570
   ClientWidth     =   5760
   Icon            =   "MenuAdministrar.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   6420
   ScaleWidth      =   5760
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Administrar"
      BeginProperty Font 
         Name            =   "Amplitude-Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   500
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   360
      TabIndex        =   2
      Top             =   1680
      Width           =   5295
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00C000C0&
         Caption         =   "Promociones"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Left            =   500
         TabIndex        =   5
         Top             =   2160
         Width           =   4200
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H000080FF&
         Caption         =   "Productos"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Left            =   500
         TabIndex        =   4
         Top             =   1200
         Width           =   4200
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFF00&
         Caption         =   "Sucursales"
         BeginProperty Font 
            Name            =   "Xolonium"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   700
         Index           =   0
         Left            =   500
         TabIndex        =   3
         Top             =   360
         Width           =   4200
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H0000FF00&
      Caption         =   "Vender"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Index           =   0
      Left            =   3720
      MousePointer    =   3  'I-Beam
      TabIndex        =   0
      Top             =   240
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   1500
      Left            =   120
      Picture         =   "MenuAdministrar.frx":3146
      Top             =   120
      Width           =   3690
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "Ayuda"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Index           =   3
      Left            =   1080
      TabIndex        =   6
      Top             =   5280
      Width           =   1500
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      Caption         =   "Cerrar"
      BeginProperty Font 
         Name            =   "Xolonium"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Index           =   1
      Left            =   3720
      TabIndex        =   1
      Top             =   5280
      Width           =   1500
   End
End
Attribute VB_Name = "MenuAdministrar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Resize()
If Me.WindowState <> vbMinimized Then '// si no te da error al minimizar
    If Me.Width < 6000 Then
        Me.Width = 6000
    End If
    If Me.Width > 6000 Then
        Me.Width = 6000
    End If
    If Me.Height < 7000 Then
        Me.Height = 7000
    End If
    If Me.Height > 7000 Then
        Me.Height = 7000
    End If
End If
End Sub

Private Sub Label1_Click(Index As Integer)
   End
End Sub
>>>>>>> bd455ee94f4edfdeb8e4cbd70fc82f2db78e19fc
