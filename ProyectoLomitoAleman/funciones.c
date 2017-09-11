#include "funciones.h"

struct Empresa *crearEmpresa(char *nombre,char *dueno){
    struct Empresa *nuevo;
    
    nuevo=(struct Empresa*)malloc(sizeof(struct Empresa));
    
    nuevo -> nombre = nombre;
    nuevo -> dueno = dueno;
    
    nuevo -> sucursales = NULL;
    
    return nuevo;
}

char *ingresarChar(const char *mensaje){ // devuelve un char que se ingresa
                                    // ejmplo, "ingrese el nombre de dueno"   o "ingrese el nombre de un usuario"
    char *retorno;
    char buffer[50];
    int largo;

    printf("\n%s\n",mensaje);
    scanf("%s",buffer);
    largo=strlen(buffer);
    retorno=(char*)malloc(largo*sizeof(char));
    strcpy(retorno,buffer);

    return retorno;
}

int ingresarInt(const char *mensaje){ // devuelve un Int que se ingresa
    int num;

    printf("\n%s\n",mensaje);
    scanf("%d",&num);

    return num;
}

struct Producto *verificarDosProductosParaPromocion(struct Producto *productoConsumo, struct Producto *productoLiquido, struct Promocion **promociones){
    int i;

    if(productoConsumo != NULL && productoLiquido != NULL){
        for( i = 1 ; i < MAXPROMOCIONES ; i++){
            if(buscarConsumo(productoConsumo, promociones[i] -> consumo) && buscarLiquido(productoLiquido, promociones[i] -> liquido)){
                return promociones[i] -> dato;
            }
        }
    }
    return NULL;
}

struct Producto *buscarConsumo (struct Producto *pConsumo, struct Producto **consumos){
    int i;

    if(pConsumo != NULL){
        for( i = 0 ; consumos[i] != NULL; i++){
            if(pConsumo == consumos[i]){
                return pConsumo;
            }
        }
    }
    return NULL;
}

struct Producto *buscarLiquido (struct Producto *pLiquido, struct Producto **liquidos){
    int i;

    if(pLiquido != NULL){
        for( i = 0 ; liquidos[i] != NULL ; i++){
            if(pLiquido == liquidos[i]){
                return pLiquido;
            }
        }
    }
    return NULL;
}

void imprimirSucursales(struct Sucursal *head){
    struct Sucursal *rec;
    
    if(head != NULL){
        rec = head;
        while(rec != NULL){
            printf("\n\nID de Sucursal: %d",rec -> id);
            printf("\nDireccion: %s",rec -> direccion);
            printf("\nAdministrador: %s",rec -> administrador);
            printf("\nRut Administrador: %s",rec -> rutAdministrador);
            printf("\n-----------");
            rec = rec -> sig;
        }
    }
}

struct Sucursal *buscarSucursal(struct Sucursal *head, int id){
    struct Sucursal *rec;
    
    if(head != NULL){
        rec = head;
        while(rec != NULL){
            if(rec -> id == id){
                return rec;
            }
            rec = rec -> sig;
        }
    }
    return NULL;
}

int agregarProducto (int codigo, char *nombre, int precio, struct Producto **productos){
    struct Producto *nuevo;
    
    if(!buscarProducto(codigo, productos)){
        nuevo = crearProducto(codigo, nombre, precio);
        productos[codigo] = nuevo;
        return 1;
    }
    return 0;
}

struct Producto * buscarProducto (int codigo, struct Producto **productos){
    if(productos[codigo] != NULL){
        return productos[codigo];
    }
    return 0;
}

struct Producto * crearProducto (int codigoIngresado,char *nombreIngresado, int precioIngresado){
    struct Producto *nuevo;

    nuevo = (struct Producto *) malloc (sizeof(struct Producto));

    nuevo -> nombre = (char *) malloc (sizeof(char) * strlen(nombreIngresado));
    strcpy(nuevo -> nombre, nombreIngresado);

    nuevo -> codigo = codigoIngresado;
    nuevo -> precio = precioIngresado;

    return nuevo;
}

struct NodoBoleta * crearNodoBoleta (int numBoleta, int totalComprado){
    struct NodoBoleta *nuevo;

    nuevo = (struct NodoBoleta*) malloc (sizeof(struct NodoBoleta));
    
    nuevo -> numeroBoleta = numBoleta;
    nuevo -> total = totalComprado;

    nuevo -> sig = NULL;

    return nuevo;
}

struct Promocion * crearPromocion (struct Producto *product, struct Producto **consumos, struct Producto **liquidos){
    struct Promocion *nuevo;

    nuevo = (struct Promocion*) malloc (sizeof(struct Promocion));

    nuevo -> consumo = consumos;
    nuevo -> liquido = liquidos;
    nuevo -> dato = product;

    return nuevo;
}

int agregarPromocion (int codigo, char *nombre, int precio,struct Producto ** consumo, struct Producto **liquido, struct Sucursal *tienda){
    if(!buscarProducto (codigo, tienda -> productos)){
        tienda -> promociones[codigo] = crearPromocion(crearProducto(codigo, nombre, precio), consumo, liquido);
        tienda -> productos[codigo] = tienda -> promociones[codigo] -> dato;
    }
    return 0;
}

int modificarProducto(int codigoIngresado, char *nombreIngresado, int precioIngresado, struct Sucursal *tienda)
{
    struct Producto * modificacion;
    int codigo;
    
    if(buscarProducto (codigoIngresado, tienda -> productos)){
        codigo = buscarProducto (codigoIngresado, tienda -> productos) -> codigo;
        modificacion = crearProducto (codigoIngresado, nombreIngresado, precioIngresado);
        tienda -> productos[codigo] = modificacion;
        return 1;
    }
    return 0;
}

struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada, struct Sucursal *sucursal){
    return NULL;
}

/*
struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada, struct Sucursal *sucursal){
    struct Sucursal *modificacion;
    
    modificacion = (struct Sucursal *)malloc (sizeof(struct Sucursal));

    modificacion -> direccion = (char*) malloc (sizeof(char) * strlen(direccionIngresada));
    modificacion -> direccion = direccionIngresada;

    modificacion -> administrador = NULL;
    modificacion -> administrador = (char*) malloc (sizeof(char) * strlen(administradorIngresada));
    modificacion -> administrador = administradorIngresada;
 
    modificacion -> rutAdministrador = NULL;
    modificacion -> rutAdministrador = (char*) malloc (sizeof(char) * strlen(rutAdministradorIngresada));
    modificacion -> rutAdministrador = rutAdministradorIngresada;
    
    modificacion -> id =sucursal -> id;
    modificacion -> promociones = sucursal -> promociones;
    modificacion -> productos = sucursal -> productos;
    modificacion -> ultimaBoleta = sucursal -> ultimaBoleta;
    modificacion -> cajaAbierta = sucursal -> cajaAbierta;
    modificacion -> ventas = sucursal -> ventas;
    modificacion -> sig = sucursal -> sig;
    modificacion -> ant = sucursal -> ant;
    
    sucursal -> sig -> ant = modificacion;
    sucursal -> ant -> sig = modificacion;
    
    free(sucursal);

    return modificacion;
}
*/

struct Sucursal * crearSucursal (char *direccionIngresada, char * administradorIngresado, char *rutAdministradorIngresado, int idIngresada){
    struct Sucursal *nuevo;

    nuevo = (struct Sucursal*) malloc (sizeof(struct Sucursal));
    
    nuevo -> id = idIngresada;

    nuevo -> direccion = (char *) malloc (sizeof(char) * strlen(direccionIngresada));
    strcpy(nuevo -> direccion, direccionIngresada);

    nuevo -> administrador = (char *) malloc (sizeof(char) * strlen(administradorIngresado));
    strcpy(nuevo -> administrador, administradorIngresado);

    nuevo -> rutAdministrador = (char *) malloc (sizeof(char) * strlen(rutAdministradorIngresado));
    strcpy(nuevo -> rutAdministrador, rutAdministradorIngresado);

    nuevo -> ultimaBoleta = NULL;
    nuevo -> cajaAbierta = NULL;
    nuevo -> ventas = NULL;
    
    nuevo -> sig = NULL;
    nuevo -> ant = NULL;

    return nuevo;
}

struct NodoVentas * crearNodoVentas (){
    struct NodoVentas *nuevo;

    nuevo = (struct NodoVentas *) malloc (sizeof(struct NodoVentas));

    nuevo -> datos = NULL;
    nuevo -> sig = NULL;
    nuevo -> ant = NULL;

    return nuevo;
}

struct Ventas * crearVentas (int diaIngresado, int mesIngresado, int anoIngresado){
    struct Ventas *nuevo;
    
    nuevo = (struct Ventas*) malloc (sizeof(struct Ventas));
    
    nuevo -> dia = diaIngresado;
    nuevo -> mes = mesIngresado;
    nuevo -> ano = anoIngresado;
    
    nuevo -> head = crearNodoBoleta(0,0);
    nuevo -> tail = nuevo -> head;
    
    return nuevo;
}
void imprimirBoleta (struct NodoBoleta *boleta){
    if(boleta != NULL){
        printf("\n\nNumero de Boleta: $d",boleta -> numeroBoleta);
        printf("\nConsumo: %d",boleta -> total);
        printf("\nPropina Sugerida: %d",(boleta -> total)/10);
        printf("\nMonto Total: $d",boleta -> total + (boleta -> total)/10);
    }
    else{
        printf("\nNo Existe Boleta");
    }
}

void mostrarSucursal (struct Sucursal *sucursal){
    if(sucursal != NULL){
        printf("\n\nID de Sucursal: %d",sucursal -> id);
        printf("\nDirección: %s",sucursal -> direccion);
        printf("\nAdministrador: %s",sucursal -> administrador);
        printf("\nRut Administrador: %s",sucursal -> rutAdministrador);
    }
    else{
        printf("No Existe Sucursal");
    }
}

struct NodoBoleta * buscarBoletaEnVentas (int numeroBoleta, struct NodoVentas *ventas){
    struct NodoVentas *rec;
    
    if(ventas != NULL){
        rec = ventas;
        while(rec != NULL){
            if(buscarBoletaEnBoletas(numeroBoleta, rec -> datos -> head) != NULL){
                return buscarBoletaEnBoletas(numeroBoleta, rec -> datos -> head);
            }
            rec = rec -> sig;
        }
    }
    return NULL;
}

struct NodoBoleta * buscarBoletaEnBoletas(int numeroBoleta, struct NodoBoleta *boleta){
    struct NodoBoleta *rec;
    
    if(boleta -> sig != NULL){
        rec = boleta;
        while(rec != NULL){
            if(rec -> numeroBoleta == numeroBoleta){
                return rec;
            }
            rec = rec -> sig;
        }
    }
    return NULL;
}

struct Empresa * modificarDueno(char *nombreIngresado, struct Empresa *empresa){
    if(empresa != NULL){
        empresa -> dueno = NULL;
        empresa -> dueno = (char*) malloc (sizeof(char) * strlen(nombreIngresado));
        strcpy(empresa -> dueno, nombreIngresado);
        
        return empresa;
    }
    return NULL;
}

int eliminarSucursal(struct Empresa *empresa,struct Sucursal *sucursal){
    struct Sucursal *rec = empresa -> sucursales;
    
    if(sucursal = empresa -> sucursales){
        empresa -> sucursales = empresa -> sucursales -> sig;
        free(sucursal);
        sucursal -> sig = NULL;
        sucursal = NULL;
        return 1;
    }
    else{
        while(rec != NULL){
            if(sucursal == rec){
                rec -> ant -> sig = rec -> sig;
                rec -> sig -> ant = rec -> ant;
                free(sucursal);
                sucursal -> sig = NULL;
                sucursal -> ant = NULL;
                sucursal = NULL;
                return 1;
            }
            rec = rec -> sig;
        }
    }
    return 0;
}

int agregarSucursal(struct Empresa* empresa, char *direccion, char *administrador, char *rutAdministrador, int id){
    struct Sucursal *nuevo;
    struct Sucursal *rec ;
    
    if(empresa -> sucursales != NULL){
        if(!buscarSucursal(empresa -> sucursales, id)){
            rec = empresa -> sucursales;
            nuevo = crearSucursal (direccion, administrador, rutAdministrador, id);
            while(rec -> sig != NULL){
                rec = rec -> sig;
            }
            rec -> sig = nuevo;
            return 1;
        }
    }
    else{
        empresa -> sucursales = crearSucursal (direccion, administrador, rutAdministrador, id);
        return 1;
    }
    return 0;
}

struct Producto ** crearArregloProductos(const char *mensaje, struct Sucursal *sucursal){
    struct Producto *buffer[100];
    struct Producto **retorno;
    int opcion=1,i=0;
    
    while(opcion){
        printf("\nAgregue %s (0 para dejar de agregar)\n", mensaje);
        scanf("%d", &opcion);
        if (opcion){
            buffer[i]=sucursal->productos[opcion];
            i++;
        }
    }
    if (i){
        retorno= (struct Producto **) malloc (sizeof(struct Producto*) * i);
        while(i){
            retorno[i-1]=buffer[i-1];
            i--;
        }
        return retorno;
    }
    return NULL;
}

int resumenVentas(int diaBuscado, int mesBuscado, int anoBuscado, struct NodoVentas *ventas){
    struct NodoVentas *rec;
    if(diaBuscado > 0 && mesBuscado > 0 && anoBuscado > 0){
        rec = ventas;
        while(rec != NULL){
            if(rec -> datos -> dia == diaBuscado && rec -> datos -> mes == mesBuscado && rec -> datos -> ano == anoBuscado){
                return totalVendido(rec -> datos);
            }
            rec = rec -> sig;
        }
    }
    return 0;
}

int totalVendido (struct Ventas *ven){
    int total = 0;
    struct NodoBoleta *rec;
    
    if(ven != NULL){
        rec = ven -> head -> sig;
        while(rec != NULL){
            total += rec -> total;
            rec = rec -> sig;
        }
    }
    return total;
}


int nuevaBoleta(int numeroBoleta, struct Producto **productos, struct Sucursal *sucursal){
    struct NodoBoleta *nuevaBoleta;
    int totalComprado = 0;
    int i;
    
    for ( i = 0 ; productos[i] != NULL ; i++){
        totalComprado += productos[i] -> precio;
    }
    nuevaBoleta = (struct NodoBoleta *) malloc (sizeof(struct NodoBoleta));
    
    buscarUltimaBoletaEnListaVentas (sucursal -> ventas ) -> sig  = nuevaBoleta;
    sucursal -> ultimaBoleta = buscarUltimaBoletaEnListaVentas (sucursal -> ventas );
    return 1;
}

struct NodoBoleta * buscarUltimaBoletaEnListaVentas (struct NodoVentas *head){
    struct NodoVentas *rec;
    struct NodoBoleta *rec2;
    
    if(head != NULL){
        rec = head;
        while(rec -> sig != NULL){
            rec = rec -> sig;
        }
        if(rec -> datos -> tail -> sig != NULL){
            rec2 = rec -> datos -> tail;
            while(rec2 -> sig != NULL){
                rec2 = rec2 -> sig;
            }
            rec -> datos -> tail = rec2; 
        }
        return rec -> datos -> tail;
    }
    return NULL;
}

void abrirCerrarCaja(struct Sucursal *sucursal){
    if(sucursal -> cajaAbierta == NULL){
        abrirCaja(sucursal);
    }
    else{
        cerrarCaja(sucursal);
    }
}

void abrirCaja(struct Sucursal *sucur){
    int dia,mes,ano;
    if(sucur -> ventas == NULL){
        printf("\nDia: ");
        scanf("%d",&dia);
        printf("\nMes: ");
        scanf("%d", &mes);
        printf("\nAño: ");
        scanf("%d",&ano);
        
        sucur -> ventas = crearNodoVentas ();
        sucur -> ventas -> datos = crearVentas(dia,mes,ano);
        sucur -> cajaAbierta = buscarUltimoNodoVentas(sucur -> ventas) -> datos;
    }
    else{
        dia = buscarUltimoNodoVentas (sucur -> ventas) -> datos -> dia;
        mes = buscarUltimoNodoVentas (sucur -> ventas) -> datos -> mes;
        ano = buscarUltimoNodoVentas (sucur -> ventas) -> datos -> ano;
        
        diaSiguiente(&dia , &mes, &ano);
        
        buscarUltimoNodoVentas(sucur -> ventas) -> sig = crearNodoVentas ();
        buscarUltimoNodoVentas(sucur -> ventas) -> datos = crearVentas(dia,mes,ano);
        
        sucur -> cajaAbierta = buscarUltimoNodoVentas(sucur -> ventas) -> datos;
    }
}



void cerrarCaja(struct Sucursal *sucursal){
    sucursal -> cajaAbierta = NULL;
}

void diaSiguiente(int *dia , int *mes, int *ano){
    *dia++; 
    if(anoBisiesto(*ano)){
        if((*dia > 29 && *mes == 2) || (*dia > 30 && (*mes == 4 || *mes == 6 || *mes == 9 || *mes == 11)) || *dia > 31 && (*mes == 1 || *mes == 3 || *mes == 5 || *mes == 7 || *mes == 8 || *mes == 10 || *mes == 12)){
            *dia = 1;
            *mes++;
            if(*mes > 12){
                *ano++;
                *mes = 1;
            }
        }
    }
    else{
        if((*dia > 28 && *mes == 2) || (*dia > 30 && (*mes == 4 || *mes == 6 || *mes == 9 || *mes == 11)) || *dia > 31 && (*mes == 1 || *mes == 3 || *mes == 5 || *mes == 7 || *mes == 8 || *mes == 10 || *mes == 12)){
            *dia = 1;
            *mes++;
            if(*mes > 12){
                *ano++;
                *mes = 1;
            }
        }
    }
}

int anoBisiesto(int ano){
    if(ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0)){
         return 1;
    }else{
         return 0;
    }
}

struct NodoVentas * buscarUltimoNodoVentas (struct NodoVentas *head){
    struct NodoVentas *rec;
    
    while(rec -> sig != NULL){
        rec = rec -> sig;
    }
    return NULL;
}

int eliminarProducto(int codigo, struct Sucursal *sucursal){
    if(buscarProducto(codigo, sucursal -> productos)){
        ajustarPromocionesAsociadasAUnProducto (sucursal -> promociones, buscarProducto(codigo, sucursal -> productos));
        sucursal -> productos[codigo] = NULL;
        return 1;
    }
    return 0;
}

void ajustarPromocionesAsociadasAUnProducto (struct Promocion **promociones, struct Producto *prod){
    int i;
    for( i = 0 ; i < MAXPROMOCIONES ; i++){
        eliminarProductoDeConsumo(promociones[i], prod);
        eliminarProductoDeLiquido(promociones[i], prod);
        if(promociones[i] -> consumo == NULL || promociones[i] -> liquido == NULL){
            promociones[i] = NULL;
        }
    }
}

void eliminarProductoDeConsumo (struct Promocion *promo, struct Producto *prod){
    if(promo != NULL){
        if(buscarConsumo (prod, promo -> consumo)){
            promo -> consumo = ajustarArreglo(promo -> consumo, prod);
        }
    }
}

void eliminarProductoDeLiquido (struct Promocion *promo, struct Producto *prod){
    if(promo != NULL){
        if(buscarLiquido (prod, promo -> liquido)){
            promo -> liquido = ajustarArreglo(promo -> liquido, prod);
        }
    }
}

struct Producto ** ajustarArreglo (struct Producto **arreglo, struct Producto *prod){
    struct Producto **nuevo;
    int tamano = (-1);
    int i, k;
    
    while(arreglo[tamano] != NULL){
            tamano++;
    }
    
    if(tamano == 0){
        free(arreglo);
        arreglo = NULL;
        return NULL;
    }
    else{
        eliminarProductoArreglo(arreglo,prod);
        nuevo  = (struct Producto**) malloc (sizeof(struct Producto*) * tamano);
        for( i = 0 ; i < tamano ; i++){
            for( k = i ; k < tamano + 1 ; k++){
                if(arreglo != NULL){
                    nuevo[i] = arreglo [k];
                    break;
                }
            }
        }
        return nuevo;
    }
}

void eliminarProductoArreglo (struct Producto **arreglo, struct Producto *prod){
    int i = 0;
    for ( i = 0 ; arreglo[i] != NULL ; i++){
        if(arreglo[i] == prod){
            arreglo[i] = NULL;
        }
    }
}

int eliminarPromocion(int codigo, struct Sucursal *sucursal){
    if(buscarProducto (codigo, sucursal -> productos)){
        eliminarDatosPromocion(sucursal -> promociones[codigo]);
        sucursal -> promociones[codigo] = NULL;
        sucursal -> productos[codigo] = NULL;
        return 1; 
    }
    return 0;
}


void eliminarDatosPromocion (struct Promocion *promo){
    free(promo -> consumo);
    promo -> consumo = NULL;
    
    free(promo -> liquido);
    promo -> liquido = NULL;
    
    promo -> dato = NULL;
}

struct Producto * modificarPromocion(int codigo, char *nombre, int precio, struct Producto **consumo, struct Producto **liquido, struct Sucursal *sucursal){
    struct Producto *prod = sucursal -> productos[codigo];
    
    if(buscarProducto (codigo, sucursal -> productos)){
        prod -> codigo = codigo;
        prod -> precio = precio;
        
        prod -> nombre = NULL;
        prod -> nombre = (char*) malloc (sizeof(char) * strlen(nombre));
        strcpy(prod -> nombre, nombre); 
        
        sucursal -> promociones[codigo] = crearPromocion (buscarProducto (codigo, sucursal -> productos), consumo, liquido);
    }
    return NULL;
}