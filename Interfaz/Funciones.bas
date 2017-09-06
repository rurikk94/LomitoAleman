Attribute VB_Name = "f"
Public cantSucursales As Integer
Public sucursalSeleccionada As Integer
Public estadoCaja As String
Public nombreadministrador As String

Public Sub crearCarpetas(cantCarpetas As Integer)
    
For i = 1 To cantCarpetas
    strPath = CStr(i)
    If Dir(strPath, vbDirectory) <> "" Then
        'MsgBox "El directorio '" & strPath & "' existe"
    Else
        'MsgBox "El directorio  '" & strPath & "' no existe"
        MkDir (strPath)
        MkDir (strPath & "/ventas")
    crearArchivo (strPath & "/productos.txt")
    crearArchivo (strPath & "/sucursal.txt")
    crearArchivo (strPath & "/promociones.txt")
    crearArchivo (strPath & "/ventas/fechas.txt")
    End If
Next
End Sub
Public Sub crearArchivo(nombreArchivo As String)
    Open nombreArchivo For Output As #1
    Close #1
End Sub
Function validar(tipoValidacion As String, dato As String) As Integer
    Dim num As Integer
    validar = 0
    
    On Error GoTo ErrHandler
    
    If tipoValidacion = "numSucursales" Then
        num = CInt(dato)
        If num > 0 Then
            validar = 1
            Exit Function
        End If
    End If
    
ErrHandler:
    If tipoValidacion = "numSucursales" Then
        mostrarError ("Valor Invalido")
    End If
End Function

Public Sub mostrarError(textoAMostrar As String)
        Error.lbl_error.Caption = textoAMostrar
        Error.Show
End Sub

Public Sub agregarNumSucursalAArchivo(nombreArchivo As String)
    Dim i As Integer
    For i = 1 To f.cantSucursales
        Open nombreArchivo For Append As #1
            Print #1, i
        Close #1
    Next
End Sub
Public Sub guardarDatosSucursal(i As Integer, direccion, nombreAdmin, rutAdmin As String)
    Dim nombreArchivo As String
    nombreArchivo = i & "/sucursal.txt"
    Open nombreArchivo For Append As #1
        Print #1, CStr(i)
        Print #1, direccion
        Print #1, nombreAdmin
        Print #1, rutAdmin
    Close #1
End Sub
