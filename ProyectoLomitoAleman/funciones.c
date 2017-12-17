funciones.c
DETALLES
ACTIVIDAD
funciones.c
Información de uso compartido
Cargando la información para compartir…
Información general
Tipo
Texto
Tamaño
18 KB (18.147 bytes)
Espacio usado
18 KB (18.147 bytes)
Propietario
yo
Modificado
17:51 por mí
Abierto
22:54 por mí
Creado el
17:51 con Google Drive Web
Descripción
Añadir descripción
Descargar permisos
Los lectores pueden descargar
Maximizado Se ha anulado la selección de todos los elementos 

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

int agregarProducto (int codigo, char *nombre, int precio, struct Sucursal *sucur){
    struct Producto *nuevo;
	struct NodoProductos *nodoNuevo;

    if(!(sucur)){
		nuevo = crearProducto(codigo, nombre, precio);
		nodoNuevo = (struct NodoProductos *) malloc (sizeof(struct NodoProductos));
	
		nodoNuevo->datos = nuevo;
		nodoNuevo->izq = NULL;
		nodoNuevo->der = NULL;
		sucur->productos=nodoNuevo;
		return 1;
	}
    if(buscarProducto(codigo, sucur->productos)!=NULL){
        nuevo = crearProducto(codigo, nombre, precio);
		agregarProductoEnArbol(nuevo,sucur->productos);
		equilibrarArbol(sucur);
        return 1;
    }
    return 0;
}
int listarArbol(struct NodoProductos *productos,struct NodoProductos **ultimo){
	if (productos){
		(*ultimo)->der=productos;
		(*ultimo)=productos;
		listarArbol(productos->der,ultimo);
		listarArbol(productos->izq,ultimo);
	}
	return 1;
}

int equilibrarArbol(struct Sucursal *sucur){
	struct NodoProductos fantasma;
	struct NodoProductos *Almacen=&fantasma;
	
	listarArbol(sucur->productos,&Almacen);
	ordenamientoRecurcivo(&fantasma);
	sucur->productos=fantasma.der;
	return 1;
}

int ordenamientoRecurcivo(struct NodoProductos *ndo){
	int i=0;
	struct NodoProductos *rec=ndo->der;
	struct NodoProductos *rec2=ndo->izq;
	while(rec){
		rec=rec->der;
		i++;
	}
	if(i<2){
		return 0;
	}
	i=(i/2);
	rec=ndo->der;
	for(i;i>0;i--){
		if(rec){
			rec=rec->der;
		}
		if(rec2){
			rec2=rec2->izq;
		}
	}
	rec->izq=ndo->der;
	rec2->izq=ndo->izq;
	ndo->der=rec;              
	ndo->izq=rec2;
	
	ordenamientoRecurcivo(ndo->der);
	ordenamientoRecurcivo(ndo->izq);
	return 1;
}

int agregarProductoEnArbol(struct Producto *nuevo, struct NodoProductos *productos){
	struct NodoProductos *rec = productos;
	struct NodoProductos *nodoNuevo;
	
	nodoNuevo = (struct NodoProductos *) malloc (sizeof(struct NodoProductos));
	
	nodoNuevo->datos = nuevo;
	nodoNuevo->izq = NULL;
	nodoNuevo->der = NULL;
	
	while(rec->izq!=NULL){
		rec=rec->izq;
	}
	rec->izq = nodoNuevo;
	return 1;
}

struct NodoProductos * buscarProducto (int codigo, struct NodoProductos *productos){
	struct NodoProductos * buscado=NULL;
	if(productos){
		if(productos->datos){
			if(productos->datos->codigo){
				if(productos->datos->codigo==codigo){
					return productos;
				}
				buscado=buscarProducto (codigo, productos->izq);
				if(buscado!=NULL){
					return buscado;
				}
				buscado=buscarProducto (codigo, productos->der);
				if(buscado!=NULL){
					return buscado;
				}
			}
		}
	}
    return NULL;
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

struct NodoBoleta * crearNodoBoleta (int numBoleta){
    struct NodoBoleta *nuevo;

    nuevo = (struct NodoBoleta*) malloc (sizeof(struct NodoBoleta));
    
    nuevo -> numeroBoleta = numBoleta;

    nuevo -> sig = NULL;

    return nuevo;
}

int modificarProducto(int codigoIngresado, char *nombreIngresado, int precioIngresado, struct Sucursal *tienda)
{
    struct Producto * modificacion;
	struct NodoProductos * buscado;

    buscado = buscarProducto (codigoIngresado, tienda -> productos);
	
    if(buscado){
        modificacion = crearProducto (codigoIngresado, nombreIngresado, precioIngresado);
        buscado->datos=modificacion;
        return 1;
    }
    return 0;
}

struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada, struct Sucursal *sucursal){
    return NULL;
}

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
    
    nuevo -> head = crearNodoBoleta(0);
    nuevo -> tail = nuevo -> head;
    
    return nuevo;
}
void imprimirBoleta (struct NodoBoleta *boleta){
	int total;
    if(boleta != NULL){
		total=calcularTotalBoleta(boleta);
        printf("\n\nNumero de Boleta: $d",boleta -> numeroBoleta);
        printf("\nConsumo: %d", total);
        printf("\nPropina Sugerida: %d",total/10);
        printf("\nMonto Total: $d",total + (total/10));
    }
    else{
        printf("\nNo Existe Boleta");
    }
}

int calcularTotalBoleta(struct NodoBoleta *boleta){
	int i,suma=0;
	for(i=0;i<boleta->nPV;i++){
		suma = suma + boleta->productos[i]->precio;
	}
	return suma;
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
            buffer[i]=buscarProducto(opcion, sucursal->productos)->datos;
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
    int total = 0,x;
    struct NodoBoleta *rec;
    
    if(ven != NULL){
        rec = ven -> head -> sig;
        while(rec != NULL){
			x=calcularTotalBoleta(rec);
            total += x;
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
	struct NodoProductos *buscado;
	
	buscado= buscarProducto(codigo, sucursal -> productos);
	if(buscado){
        agregarProductoEnArbol(buscado->der->datos,sucursal->productos);
		agregarProductoEnArbol(buscado->izq->datos,sucursal->productos);
		if(sucursal->productos->datos->codigo==codigo){
			sucursal->productos=sucursal->productos->izq;
		}
		free(buscado);
		equilibrarArbol(sucursal);
        return 1;
    }    
    return 0;
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
