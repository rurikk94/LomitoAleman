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
	struct Sucursal *sig, *ant; 

}

struct Promocion{

	struct producto **consumo;
	struct producto **liquido;
	struct producto *;

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



