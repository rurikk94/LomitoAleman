Attribute VB_Name = "Module1"
Public Sub crearCarpetas(cantCarpetas As Integer)
    
'MsgBox (Inicializar.cantSucursales)
For i = 1 To cantCarpetas
    strPath = CStr(i)
    If Dir(strPath, vbDirectory) <> "" Then
        MsgBox "El directorio '" & strPath & "' existe"
    Else
        MsgBox "El directorio  '" & strPath & "' no existe"
        MkDir (strPath)
        MkDir (strPath & "/ventas")
    End If
Next
End Sub
