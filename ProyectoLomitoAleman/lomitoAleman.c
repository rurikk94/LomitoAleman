#include <stdio.h>

#define MAXPROD 999;
#define MAXPROMO 50;

struct LomitoAleman{

	char *dueño;
	struct Sucursal *sucursales;

}

struct Sucursal{

	char *direccion;
	char *administrador;
	char *rutAdministrador;
	struct Promocion *promociones[MAXPROMO]
	struct NodoVentas *ventas;
	struct Producto *productos [MAXPROD];

}

struct Promocion{

	struct producto **consumo;
	struct producto **liquido;
	struct producto *dato;

}

struct NodoVentas{

	struct VentasEnDia *datos;
	struct NodoVentas *sig,*ant;

}
struct Producto{

	int codigo;
	char *nombre;
	int precio; //pesos Chilenos

}

struct VentasEnDia{

	int dia;
	int mes;
	int ano;
	struct NodoBoletas *head;
	struct NodoBoletas *tail;

}

struct NodoBoleta{

	char *numeroBoleta;
	struct Producto **productos;
	struct NodoBoleta *sig;

}

main(){

	

}

struct NodoBoleta * crearNodoBoleta (char *numeroBoleta){
	struct NodoBoleta *nuevo;

	nuevo = (struct NodoBoleta*) malloc (sizeof(struct NodoBoleta));

	nuevo -> sig = NULL;

	return nuevo;

}

struct VentasEnDia * crearVentasEnDia (int dia, int mes, int ano){
	struct VentasEnDia *nuevo;

	nuevo = (struct VentasEnDia*) malloc (sizeof(struct VentasEnDia));

	nuevo -> head = NULL;
	nuevo -> tail = NULL;

	return nuevo;

}


struct Producto *modificarProducto(int codigoIngresado, char *nombreIngresado, int precioIngresado)
{
	struct Producto *modificaciones;
	int largo;

	modificaciones=((struct Producto*)malloc(sizeof(struct Producto)));

	largo=strlen(nombreIngresado);
	modificaciones->nombre=(char*)malloc(largo*sizeof(char));
	strcpy(modificaciones->nombre,nombreIngresado);

	modificaciones->codigo=codigoIngresado;
	modificaciones->precio=precioIngresado;

	return modificaciones;
}

struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada)
{
	struct Sucursal *modificaciones;
	int largo;

	modificaciones=((struct Sucursal*)malloc(sizeof(struct Sucursal)));

	largo=strlen(direccionIngresada);
	modificaciones->direccion=(char*)malloc(largo*sizeof(char));
	strcpy(modificaciones->direccion,direccionIngresada);

	largo=strlen(administradorIngresada);
	modificaciones->administrador=(char*)malloc(largo*sizeof(char));
	strcpy(modificaciones->administrador,administradorIngresada);

	largo=strlen(rutAdministradorIngresada);
	modificaciones->rutAdministrador=(char*)malloc(largo*sizeof(char));
	strcpy(modificaciones->rutAdministrador,rutAdministradorIngresada);


	return modificaciones;
}

struct LomitoAleman *modificarDueno(char *nombreIngresado, struct Sucursal *sucursalesActuales)
{
	struct LomitoAleman *modificaciones;
	int largo;

	largo=strlen(nombreIngresado);
	modificaciones->dueno=(char*)malloc(largo*sizeof(char));
	strcpy(modificaciones->dueno,nombreIngresado);

	modificaciones->sucursales=sucursalesActuales;

	return modificaciones;
}

char *ingresarChar(char *variable){ // devuelve un char que se ingresa
									// ejmplo, ingrese el nombre de "dueno"   o ingrese el nombre de "un usuario"
	char *nombre;
	char buffer[50];
	int largo;

	printf(" \n Ingrese el nombre de %s \n ",variable);
	scanf("%s",buffer);
	largo=strlen(buffer);
	nombre=(char*)malloc(largo*sizeof(char));
	strcpy(nombre,buffer);


	return nombre;
}

int ingresarPrecio(){ // devuelve un Int que se ingresa
	int precio;

	printf(" \nIngrese el precio  \n");
	scanf("%d",&precio);

	return precio;
}

