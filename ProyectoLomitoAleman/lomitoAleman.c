#include <stdio.h>

#define MAX 999;

struct LomitoAleman{

	char *dueño;
	struct Sucursal *sucursales;

}

struct Sucursal{

	char *direccion;
	char *administrador;
	char *rutAdministrador;
	struct NodoVentas *ventas;
	struct Producto *productos [MAX];

}

struct NodoVentas{

	struct Venta *datos;
	struct NodoVentas *sig,*ant;

}
struct Producto{

	char *codigo;
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

int minimain(){

	

}