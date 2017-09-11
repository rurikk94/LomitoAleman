<<<<<<< HEAD
Attribute VB_Name = "f"
Public cantSucursales As Integer
Public numUltimaVenta As Integer
Public sucursalSeleccionada As Integer
Public fecha, dia, mes, anno, hora, minuto, segundo As String
Public estadoCaja As String
Public nombreadministrador As String

Public Sub actualizarfecha()
    dia = extraerFecha("dia", DateTime.Date$)
    mes = extraerFecha("mes", DateTime.Date$)
    anno = extraerFecha("anno", DateTime.Date$)
    
    hora = extraerFecha("hora", DateTime.Time$) 'hh:mm:ss
    minuto = extraerFecha("minuto", DateTime.Time$) 'hh:mm:ss
    segundo = extraerFecha("segundo", DateTime.Time$) 'hh:mm:ss

End Sub
Public Sub guardarUnaVenta(i, idBoleta As Integer, precioTotal As String)

Dim nombreArchivo As String
    nombreArchivo = i & "/ventas/" & fecha & ".txt"
    'inicializarPromocionesTxt i
    Open nombreArchivo For Append As #1
        Print #1, idBoleta
        Print #1, precioTotal
    Close #1
End Sub

Public Sub cargarUltimaNumBoleta(i As Integer)
    Dim nombreArchivo, penultima, ultima As String
    nombreArchivo = i & "/ventas/" & fecha & ".txt"
    'MsgBox (nombreArchivo)
    
    Open nombreArchivo For Input As #1
    Do Until EOF(1)
        Line Input #1, penultima
        Line Input #1, ultima
    Loop
    Close #1
    numUltimaVenta = CInt(penultima) + 1

End Sub
Public Function buscarBoleta(numUltimaVenta As Integer) As String
    If numUltimaVenta < 1 Then
        buscarBoleta = "NoExiste NoExiste"
    Else
        
        Dim nombreArchivo, penultima, ultima As String
        Dim i As Integer
        i = sucursalSeleccionada
        nombreArchivo = i & "/ventas/" & fecha & ".txt"
        
        Open nombreArchivo For Input As #1
        Do Until EOF(1)
            Line Input #1, penultima
            Line Input #1, ultima
        Loop
        Close #1
        buscarBoleta = penultima & " " & ultima
    End If
End Function

Public Sub imprimirBoleta(boleta As String)
    MsgBox ("Boleta Numero  /  Total " & vbNewLine & boleta)
End Sub
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
Public Sub guardarPromocionTxt(i As Integer, id, productosA, productosB As String)
    Dim nombreArchivo As String
    nombreArchivo = i & "/promociones.txt"
    'inicializarPromocionesTxt i
    Open nombreArchivo For Append As #1
        Print #1, id
        Print #1, productosA
        Print #1, productosB
    Close #1
End Sub
Public Sub agregarProductoTxt(i As Integer, codigo, nombre, precio As String)
    Dim nombreArchivo As String
    nombreArchivo = i & "/productos.txt"
    'MsgBox (nombreArchivo)
    Open nombreArchivo For Append As #1
        Print #1, codigo
        Print #1, nombre
        Print #1, precio
    Close #1
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
Public Sub inicializarSucursalTxt(i As Integer)
    Dim nombreArchivo As String
    nombreArchivo = i & "/sucursal.txt"
    'MsgBox (nombreArchivo)
    Open nombreArchivo For Output As #1
    Close #1
End Sub
Public Sub inicializarProductoTxt(i As Integer)
    Dim nombreArchivo As String
    nombreArchivo = i & "/productos.txt"
    'MsgBox (nombreArchivo)
    Open nombreArchivo For Output As #1
    Close #1
End Sub
Public Sub inicializarPromocionesTxt(i As Integer)
    Dim nombreArchivo As String
    nombreArchivo = i & "/promociones.txt"
    'MsgBox (nombreArchivo)
    Open nombreArchivo For Output As #1
    Close #1
End Sub

Function extraerFecha(tipoFecha As String, fecha As String) As String
    If tipoFecha = "dia" Then
        extraerFecha = Mid(fecha, 4, 2)
        Exit Function
    End If
    If tipoFecha = "mes" Then
        extraerFecha = Left(fecha, 2)
        Exit Function
    End If
    If tipoFecha = "anno" Then
        extraerFecha = Right(fecha, 4)
        Exit Function
    End If
    If tipoFecha = "hora" Then
        extraerFecha = Left(fecha, 2)
        Exit Function
    End If
    If tipoFecha = "minuto" Then
        extraerFecha = Mid(fecha, 4, 2)
        Exit Function
    End If
    If tipoFecha = "segundo" Then
        extraerFecha = Right(fecha, 2)
        Exit Function
    End If
End Function
=======
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
>>>>>>> bd455ee94f4edfdeb8e4cbd70fc82f2db78e19fc
