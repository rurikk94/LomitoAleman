#include "funciones.h"

int main (){
    struct Empresa *empresa=NULL;
    struct Producto *producto;
    struct Sucursal *sucursal;
    //struct Sucursal *sucursales;
    int respuesta;
    int sucursalId;
    int opcion=1;

    while(opcion){//!=0
        if (empresa==NULL){
            empresa=crearEmpresa(ingresarChar("ingrese nombre de la empresa"),ingresarChar("ingrese nombre del dueno"));
            if (empresa!=NULL){
                printf("\n Empresa creada con exito");
            }
            else{
                printf("\n La Empresa no se pudo crear");
            }
        }
        else{
            //sucursales=empresa->sucursales;
            printf("\nMenu Principal:\n\nIngrese una opcion:\n");
            printf("\n\nRegistros:\n\n");
            printf("1.-Registrar sucursal\n");
            printf("2.-Registrar producto\n");
            printf("3.-Registrar promocion\n");
            printf("\n\nEdiciones:\n\n");
            printf("4.-Editar sucursal\n");
            printf("5.-Editar producto\n");
            printf("6.-Editar promocion\n");
            printf("7.-Ventas\n\n");
            printf("0.-Salir\n");
            printf("\nOpcion: ");
            scanf("%d",&opcion);

            switch(opcion){
                case 0:
                    printf("\n\nEl programa se cerrara\n\nIntrodusca un 0 para confirmar");
                    scanf("%d",&opcion);
                    break;
                case 1:
                    respuesta=agregarSucursal(empresa,ingresarChar("ingrese direccion"),ingresarChar("ingrese administrador"),ingresarChar("ingrese rut administrador"), ingresarInt("ingrese una ID"));//busca la sucursar e ingresa producto
                    if(respuesta==0){
                        printf("Error en registro");
                    }
                    if(respuesta==1){
                        printf("registo completado");
                    }
                    break;
                case 2:
                    printf("\n\nSeleccione Sucursal:\n\n");
                    imprimirSucursales(empresa->sucursales);
                    printf("\n\n ingrese ID: ");
                    scanf ("%d",&sucursalId);
                    respuesta=agregarProducto(ingresarInt("ingrese codigo del producto"),ingresarChar("ingrese nombre producto"), ingresarInt("ingrese precio"),buscarSucursal(empresa->sucursales,sucursalId)->productos);//ingresa producto en la sucursal
                    if(respuesta==0){
                        printf("Error en registro");
                    }
                    if(respuesta==1){
                        printf("registo completado");
                    }
                    break;
                case 3:
                    printf("\n\nSeleccione Sucursal:\n\n");
                    imprimirSucursales(empresa->sucursales);
                    printf("\n\n ingrese ID: ");
                    scanf ("%d",&sucursalId);
                    sucursal=buscarSucursal(empresa->sucursales,sucursalId);
                    respuesta=agregarPromocion(ingresarInt("ingrese codigo de promocion"), ingresarChar("ingrese nombre promocion"), ingresarInt("ingrese precio"), crearArregloProductos("consumo",sucursal), crearArregloProductos("liquido",sucursal), sucursal);//ingresa promocion en la sucursal
                    if(respuesta==0){
                        printf("Error en registro");
                    }
                    if(respuesta==1){
                        printf("registo completado");
                    }
                    break;
                case 4:
                    do{
                        printf("\n\nSeleccione Sucursal:\n\n");
                        imprimirSucursales (empresa -> sucursales);
                        printf("\n\n ingrese ID: ");
                        scanf ("%d",&sucursalId);
                        sucursal=buscarSucursal(empresa->sucursales,sucursalId);
                        printf("\n\nUd Editara esta Sucursal:\n\n");
                        mostrarSucursal(sucursal);
                        printf("\n\nElija una opcion:\n\n");
                        printf("1.-Eliminar sucursal\n");
                        printf("2.-Cambiar administrador\n");
                        printf("3.-Cambiar direccion\n");
                        printf("0.-Regresar\n");
                        printf("\nOpcion: ");
                        scanf("%d",&opcion);
                        switch(opcion){
                            case 0:
                                break;
                            case 1:
                                respuesta=eliminarSucursal(empresa,sucursal);
                                if(respuesta==0){
                                printf("Error al Eliminar");
                                }
                                if(respuesta==1){
                                printf("Eliminado correctamente");
                                }
                                break;
                            case 2:
                                mostrarSucursal(modificarSucursal(sucursal->direccion, ingresarChar("nombre nuevo administrador"), ingresarChar("rut nuevo administrador"), sucursal));
                                break;
                            case 3:
                                mostrarSucursal(modificarSucursal(ingresarChar("nueva direccion"), sucursal->administrador, sucursal->rutAdministrador, sucursal));
                                break;
                            default:
                                break;
                        }
                    }while(opcion);//!=0 
                    opcion=1;//para no cerrar el programa
                    break;
                case 5:
                    do{
                        printf("\n\nSeleccione Sucursal:\n\n");
                        imprimirSucursales(empresa->sucursales);
                        printf("\n\n ingrese ID: ");
                        scanf ("%d",&sucursalId);
                        sucursal=buscarSucursal(empresa->sucursales,sucursalId);
                        printf("\n\nUd Editara esta Sucursal:\n\n");
                        mostrarSucursal(sucursal);
                        printf("\n\nElija una opcion:\n\n");
                        printf("1.-Eliminar Producto\n");
                        printf("2.-Cambiar precio\n");
                        printf("3.-Cambiar nombre\n");
                        printf("4.-Cambiar codigo\n");
                        printf("0.-Regresar\n");
                        printf("\nOpcion: ");
                        scanf("%d",&opcion);
                        switch(opcion){
                            case 0:
                                break;
                            case 1:
                                respuesta=eliminarProducto(ingresarInt("ingrese codigo del producto"), sucursal);
                                if(respuesta==0){
                                printf("Error al Eliminar");
                                }
                                if(respuesta==1){
                                printf("Eliminado correctamente");
                                }
                                break;
                            case 2:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                modificarProducto(producto->codigo, producto->nombre, ingresarInt("ingrese nuevo precio"), sucursal);
                                break;
                            case 3:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                modificarProducto(producto->codigo, ingresarChar("ingrese nuevo nombre"), producto->precio, sucursal);
                                break;
                            case 4:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                agregarProducto(ingresarInt("ingrese nuevo codigo del producto"), producto->nombre, producto->precio, sucursal->productos);
                                eliminarProducto(producto->codigo, sucursal);
                                break;
                            default:
                                break;
                        }                       
                    }while(opcion);//!=0
                    opcion=1;//para no cerrar el programa
                    break;
                case 6:
                    do{
                        printf("\n\nSeleccione Sucursal:\n\n");
                        imprimirSucursales(empresa->sucursales);
                        printf("\n\n ingrese ID: ");
                        scanf ("%d",&sucursalId);
                        sucursal=buscarSucursal(empresa->sucursales,sucursalId);
                        printf("\n\nUd Editara esta Sucursal:\n\n");
                        mostrarSucursal(sucursal);
                        printf("\n\nElija una opcion:\n\n");
                        printf("1.-Eliminar Promocion\n");
                        printf("2.-Cambiar precio\n");
                        printf("3.-Cambiar nombre\n");
                        printf("4.-Cambiar codigo\n");
                        printf("0.-Regresar\n");
                        printf("\nOpcion: ");
                        scanf("%d",&opcion);
                        switch(opcion){
                            case 0:
                                break;
                            case 1:
                                respuesta=eliminarPromocion(ingresarInt("ingrese codigo del producto"), sucursal);
                                if(respuesta==0){
                                printf("Error al Eliminar");
                                }
                                if(respuesta==1){
                                printf("Eliminado correctamente");
                                }
                                break;
                            case 2:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                modificarPromocion(producto->codigo, producto->nombre, ingresarInt("ingrese nuevo precio"), sucursal->promociones[producto->codigo]->consumo, sucursal->promociones[producto->codigo]->liquido, sucursal);
                                break;
                            case 3:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                modificarPromocion(producto->codigo, ingresarChar("ingrese nuevo nombre"), producto->precio, sucursal->promociones[producto->codigo]->consumo, sucursal->promociones[producto->codigo]->liquido, sucursal);
                                break;
                            case 4:
                                producto=sucursal->productos[ingresarInt("ingrese codigo del producto")];
                                agregarPromocion(ingresarInt("ingrese nuevo codigo de promocion"), producto->nombre, producto->precio, sucursal->promociones[producto->codigo]->consumo, sucursal->promociones[producto->codigo]->liquido, sucursal);
                                eliminarPromocion(producto->codigo, sucursal);
                                break;
                            default:
                                break;
                        }                       
                    }while(opcion);//!=0
                    opcion=1;//para no cerrar el programa
                    break;
                case 7:
                    do{
                        printf("\n\nSeleccione Sucursal:\n\n");
                        imprimirSucursales(empresa->sucursales);
                        printf("\n\n ingrese ID: ");
                        scanf ("%d",&sucursalId);
                        sucursal=buscarSucursal(empresa->sucursales,sucursalId);
                        printf("\n\nVentas de Sucursal:\n\n");
                        mostrarSucursal(sucursal);
                        printf("\n\nElija una opcion:\n\n");
                        if (sucursal->cajaAbierta){//!=NULL
                            printf("1.-Cerrar caja\n");
                            printf("2.-Nueva Venta\n");
                        }
                        else{
                            printf("1.-Abrir caja\n");
                        }                       
                        printf("3.-Reimprimir boleta\n");
                        printf("4.-Resumen de ventas\n");
                        printf("0.-Regresar\n");
                        printf("\nOpcion: ");
                        scanf("%d",&opcion);
                        switch(opcion){
                            case 0:
                                break;
                            case 1:
                                abrirCerrarCaja(sucursal);
                                break;
                            case 2:
                                nuevaBoleta((sucursal->ultimaBoleta->numeroBoleta)+1, crearArregloProductos("consumo",sucursal),sucursal);//¿el "+1" se puede realizar aqui? ¿es mejor dentro de la funcion?
                                imprimirBoleta(sucursal->ultimaBoleta);
                                break;
                            case 3:
                                imprimirBoleta(buscarBoletaEnVentas(ingresarInt("ingrese numero de boleta"), sucursal->ventas));
                                break;
                            case 4:
                                printf("%d",resumenVentas(ingresarInt("ingrese dia"), ingresarInt("ingrese mes"), ingresarInt("ingrese ano"), sucursal->ventas));
                                break;
                            default:
                                break;
                        }                       
                    }while(opcion);//!=0
                    opcion=1;//para no cerrar el programa
                    break;
                default:
                    break;
            }
        }
    }
    return 1;
}