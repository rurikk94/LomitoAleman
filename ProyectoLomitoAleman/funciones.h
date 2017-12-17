funciones.h
DETALLES
ACTIVIDAD
funciones.h
Información de uso compartido
S
Información general
Tipo
Texto
Tamaño
4 KB (4.290 bytes)
Espacio usado
4 KB (4.290 bytes)
Ubicación
lomito aleman
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

#ifndef __FUNCIONES_H__
#define __FUNCIONES_H__

#include <stdio.h>
#include <direct.h>
#include <stdlib.h>
#include <string.h>


//FIRMAS_______________________________________

//Agregar----------------
int agregarProducto (int codigo, char *nombre, int precio, struct Sucursal *sucur);
int agregarSucursal(struct Empresa* empresa, char *direccion, char *administrador, char *rutAdministrador, int id);
int agregarBoleta(int numeroBoleta, struct Producto **consumo);
int agregarProductoEnArbol(struct Producto *nuevo, struct NodoProductos *productos);
	
//Eliminar----------------
int eliminarSucursal(struct Empresa *empresa,struct Sucursal *sucursal);    
int eliminarProducto(int codigo, struct Sucursal *sucursal);
void eliminarProductoArreglo (struct Producto **arreglo, struct Producto *prod);

//Trabajo----------------
int nuevaBoleta(int numeroBoleta, struct Producto **productos, struct Sucursal *sucursal);
int resumenVentas(int diaBuscado, int mesBuscado, int anoBuscado, struct NodoVentas *ventas); //Dejalo asi, menos enredos
int totalVendido (struct Ventas *ven);
int anoBisiesto(int ano);
int ordenamientoRecurcivo(struct NodoProductos *ndo);
int equilibrarArbol(struct Sucursal *sucur);
int listarArbol(struct NodoProductos *productos,struct NodoProductos **ultimo);
void diaSiguiente(int *dia , int *mes, int *ano);
void cerrarCaja(struct Sucursal *sucur);
void abrirCaja(struct Sucursal *sucur);
int calcularTotalBoleta(struct NodoBoleta *boleta);

//Ingreso----------------
int ingresarInt(const char *mensaje);
char * ingresarChar(const char *mensaje);

//Modificar----------------
int modificarProducto(int codigoIngresado, char *nombreIngresado, int precioIngresado, struct Sucursal *tienda); 
struct Empresa * modificarDueno(char *nombreIngresado, struct Empresa *empresa); 
struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada, struct Sucursal *sucursal);

//Crear----------------
struct Empresa * crearEmpresa(char *nombre,char *dueno); 
struct NodoBoleta * crearNodoBoleta (int numBoleta); 
struct Ventas * crearVentas (int dia, int mes, int ano); 
struct NodoVentas * crearNodoVentas (); 
struct Sucursal * crearSucursal (char *direccionIngresada, char * administradorIngresado, char *rutAdministradorIngresado, int idIngresada); 
struct Producto * crearProducto (int codigo, char *nombre, int precio); 

//Buscar----------------
struct Sucursal * buscarSucursal(struct Sucursal *head, int id);//retorna la sucursal buscada por ID
struct NodoProductos * buscarProducto (int codigo, struct NodoProductos *productos);
struct NodoBoleta * buscarBoletaEnBoletas (int numeroBoleta, struct NodoBoleta *boleta); 
struct NodoBoleta * buscarBoletaEnVentas (int numeroBoleta, struct NodoVentas *ventas); 
struct NodoBoleta * buscarUltimaBoletaEnListaVentas (struct NodoVentas *head);
struct NodoVentas * buscarUltimoNodoVentas (struct NodoVentas *head);

//Verificar----------------


//Imprimir----------------
void imprimirSucursales (struct Sucursal *head); 
void imprimirBoleta (struct NodoBoleta *Boleta); 
void mostrarSucursal (struct Sucursal *sucursal); 




//STRUCTS___________________________________________________

struct Empresa{
    
    char *nombre;
    char *dueno;
    struct Sucursal *sucursales;

};

struct Sucursal{
    int id; 
    char *direccion;
    char *administrador;
    char *rutAdministrador;
    struct NodoProductos *productos;    
    struct Ventas *cajaAbierta;
    struct NodoVentas *ventas;
	struct NodoBoleta *ultimaBoleta;
    struct Sucursal *sig, *ant;

};

struct NodoVentas{

    struct Ventas *datos;
    struct NodoVentas *sig,*ant;

};

struct NodoProductos{
	
	struct Producto *datos;
	struct NodoProductos *der, *izq;
	
};

struct Producto{

    int codigo;
    char *nombre;
    int precio; //pesos Chilenos

};

struct Ventas{

    int dia;
    int mes;
    int ano;
    struct NodoBoleta *head;
    struct NodoBoleta *tail;

};

struct NodoBoleta{

    int numeroBoleta;
	int nPV; //numero de productos vendidos
    struct Producto **productos; 
    struct NodoBoleta *sig;

};

#include "funciones.c"

#endif
