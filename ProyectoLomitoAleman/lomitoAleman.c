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
	int codigo;
	int precio;

}

struct NodoVentas{

	struct Venta *datos;
	struct NodoVentas *sig,*ant;

}
struct Producto{

	int codigo;
	char *nombre;
	int precio; //pesos Chilenos

}

struct Venta{

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

struct Producto * crearProducto (int codigoIngreasdo, char *nombreIngresado, int precioIngreado){
	struct Producto *nuevo;
	
	nuevo = (struct Producto * ) malloc (sizeof(struct Producto));
	
	nuevo -> nombre = (char *) malloc (sizeof(char) * strlen(nombreIngreado));
	strcpy(nuevo -> nombre, nombreIngresado);
	
	nuevo -> codigo = codigoIngresado;
	nuevo -> precio = precioIngresado;
	
	return nuevo;
}

struct NodoBoleta * crearNodoBoleta (char *numeroBoleta){
	struct NodoBoleta *nuevo;

	nuevo = (struct NodoBoleta*) malloc (sizeof(struct NodoBoleta));
	
	//Asignar Memoria a **productos??

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

struct NodoVentasEnDia * crearNodoVentasEnDia (){
	struct NodoVentasEnDia *nuevo;
	
	nuevo = (struct NodoVentasEnDia*) malloc ( sizeof(struct NodoVentaEnDia));
	
	nuevo -> datos = NULL;
	nuevo -> sig = NULL;
	nuevo -> ant = NULL;
	
	return nuevo;
}

struct Surcursal * crearSucursal (char *direccionIngresada, char * administradorIngresado, char *rutAdministradoringresado){
	struct Sucursal *nuevo;
	
	nuevo = (struct Sucursal*) malloc (sizeof(struct Sucursal));
	
	nuevo -> direccion = (char *) malloc (sizeof(char) * strlen(direccionIngresada));
	strcpy(nuevo -> direccion, direccionIngresada);
	
	nuevo -> administrador = (char *) malloc (sizeof(char) * strlen(administradorIngresado));
	strcpy(nuevo -> administrador, administradorIngresado);
	
	nuevo -> rutAdministrador = (char *) malloc (sizeof(char) * strlen(rutAdministradorIngresado));
	strcpy(nuevo -> rutAdministrador, rutAdministradorIngresado);
	
	//Asignar Memoria a *promociones[]??
	//Asignar Memoria a *productos[]??
	
	nuevo -> ventas = NULL;
	
	return NULL;
}

struct Promocion * crearPromocion (int codigoIngresado, int precioIngresado){
	struct Promocion *nuevo;
	
	nuevo = (struct Promocion*) malloc (sizeof(struct Promocion));
	
	//Asignar Memoria a **consumo??
	//Asignar Memoria a **liquidos??
	
	nuevo -> codigo = codigoIngresado;
	nuevo -> precio = precioIngresado;
	
	return nuevo;
}
