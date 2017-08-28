#include <stdio.h>

#define MAXPROD 999;
#define MAXPROMO 50;

struct LomitoAleman{

	char *dueño;
	struct Sucursal *sucursales;

}

struct Sucursal{
	int id;
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

int ingresarInt(char *nombreDato){ // devuelve un Int que se ingresa
	int num;

	printf(" \nIngrese %s  \n",nombreDato);
	scanf("%d",&num);

	return um;
}

int agregarProductoAArreglo(struct Producto productos)
{
	struct Producto *rec=productos;
	for (i=0;i<MAXPROD;i++)
	{
		if (rec[i]==NULL)
		{
			//crea un producto con los datos ingresados ylo guarda en producto en la posicion i
			rec[i]=crearProducto(ingresarInt("Codigo Producto"),ingresarChar("Nombre Producto"),ingresarInt("Precio Producto")));
			return 1;			
		}
	}
	return 0;
}

int registrarProducto(int idSucursal,struct Sucursal *head)
{
	int resultado,i;
	struct Sucursal *rec=head;

	if (head!=NULL)
	{
		while(rec!=NULL)
		{
			if (idSucursal==rec->id) //si encuentra la sucursal
			{
				if (agregarProductoAArreglo(rec->productos)==1)
					return 1;
			}
		}
	}
	return 0;
}

void menu(int opcion, struct LomitoAleman *lomito)
{
	int res;

	printf("Menu Principal:\n");
	printf("\n");
	printf ("ingrese una opcion");
	printf("1.-Registrar producto\n");
	printf("0.-Salir\n");
	scanf("%d",&opcion);

	switch(opcion)
		{
		case 1:
		    res=registrarProducto(ingresarInt("Sucursal"),lomito->sucursales);//busca la sucursar e ingresa producto
		    if(res==0)
            {
                printf("Error en registro del producto");
            }
            if(res==1)
            {
                printf("Se agrego el producto");
            }
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			break;
		case 6:
			break;
		case 7:
			break;
		case 8:
			break;
		default:
			break;
		}

	}while(opcion!=0);

}
