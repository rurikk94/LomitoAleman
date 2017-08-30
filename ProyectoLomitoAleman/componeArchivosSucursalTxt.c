#include "componeArchivosSucursalTxt.h"

void creaArchivoTxt(int numSucursal, char *nombreArchivo)
{
	char *cadena;	
	int largo;
	FILE *archivo;

	//printf("\n creaArchivoTxt(%d,%s)",numSucursal,nombreArchivo);system("pause");
	
	largo=16;//largo de int
	cadena=(char*)malloc(largo*sizeof(char));

	sprintf(cadena, "%d\\%s", numSucursal,nombreArchivo);//copia numSucursal tipo %d a cadena
	//printf("se crea archivo %s",cadena);system("pause");

	archivo=fopen(cadena,"w");
	//if (archivo)// siempre se creará, no deberia tener error
		//printf("el archivo se creo correctamente");
	//system("pause");
}


int revisaArchivoTxt(int numSucursal,char *nombreArchivo)
{
	char *cadena;	
	int largo;
	FILE *archivo;

	//printf("\n revisaArchivoTxt(%d,%s)",numSucursal,nombreArchivo);system("pause");
	
	largo=16;//largo de int
	cadena=(char*)malloc(largo*sizeof(char));

	sprintf(cadena, "%d\\%s", numSucursal,nombreArchivo);//copia numSucursal tipo %d a cadena
	//printf("se revisa archivo %s",cadena);system("pause");

	archivo=fopen(cadena,"r");
	if (archivo) //si lo encuentra, retorna 1
		return 1;
	return 0;//si no lo encuentra retorna 0
}

void revisaArchivosSucursalTxt(int numSucursal)
{
//comprueba que existan
	//3 archivos en la carpeta de la sucursal
	//1 archivo fechas en la carpeta sucursal/ventas
//si falta algun archivo lo crea 

	//printf("\n revisaArchivosSucursalTxt(%d)",numSucursal);	system("pause");

	if (!revisaArchivoTxt(numSucursal,"productos.txt")) //si no lo encuentra
		creaArchivoTxt(numSucursal,"productos.txt");

	if (!revisaArchivoTxt(numSucursal,"promociones.txt"))
		creaArchivoTxt(numSucursal,"promociones.txt");

	if (!revisaArchivoTxt(numSucursal,"sucursal.txt"))
		creaArchivoTxt(numSucursal,"sucursal.txt");

	if (!revisaArchivoTxt(numSucursal,"ventas/fechas.txt"))
		creaArchivoTxt(numSucursal,"ventas/fechas.txt");
}

void crearCarpetas(int numSucursal)
{
	char *cadena;	
	int largo;
	//printf("\n crearCarpetas(%d)",numSucursal);	system("pause");
	
	largo=16;//largo de int
	cadena=(char*)malloc(largo*sizeof(char));

	sprintf(cadena, "%d", numSucursal);//copia numSucursal tipo %d a cadena
	mkdir(cadena);	//crea carpeta con nombre numSucursal
	//printf("se crea carpeta %s",cadena);system("pause");
	

	strcat(cadena,"/ventas");
	mkdir(cadena);	//crea carpeta con nombre numSucursal/ventas;
	//printf("se crea carpeta %s",cadena);system("pause");
}

void componeArchivosSucursalTxt(int numSucursal){ 
	//printf("\n componeArchivosSucursalTxt(%d)",numSucursal);system("pause");

	crearCarpetas(numSucursal);	//crea las carpetas, no pasa nada si ya existen.
	revisaArchivosSucursalTxt(numSucursal);		//revisa los 4 archivos de la sucursal
}
