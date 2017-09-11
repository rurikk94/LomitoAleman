#ifndef __FUNCIONES_H__
#define __FUNCIONES_H__

#include <stdio.h>
#include <direct.h>
#include <stdlib.h>
#include <string.h>

#define MAXPRODUCTOS 1000
#define MAXPROMOCIONES 100



//FIRMAS_______________________________________

//Agregar----------------
int agregarProducto (int codigo, char *nombre, int precio, struct Producto **productos);
int agregarPromocion (int codigo, char *nombre, int precio, struct Producto **consumo, struct Producto **liquido, struct Sucursal *sucursal);
int agregarSucursal(struct Empresa* empresa, char *direccion, char *administrador, char *rutAdministrador, int id);
int agregarBoleta(int numeroBoleta, struct Producto **consumo);

//Eliminar----------------
int eliminarSucursal(struct Empresa *empresa,struct Sucursal *sucursal);    
int eliminarProducto(int codigo, struct Sucursal *sucursal);
int eliminarPromocion(int codigo, struct Sucursal *sucursal);
void eliminarProductoDeConsumo (struct Promocion *promo, struct Producto *prod);
void eliminarProductoDeLiquido (struct Promocion *promo, struct Producto *prod);
void eliminarProductoArreglo (struct Producto **arreglo, struct Producto *prod);

//Trabajo----------------
int nuevaBoleta(int numeroBoleta, struct Producto **productos, struct Sucursal *sucursal);
int resumenVentas(int diaBuscado, int mesBuscado, int anoBuscado, struct NodoVentas *ventas); //Dejalo asi, menos enredos
int totalVendido (struct Ventas *ven);
void abrirCerrarCaja(struct Sucursal *sucursal);
void eliminarDatosPromocion (struct Promocion *promo);
void ajustarPromocionesAsociadasAUnProducto (struct Promocion **promociones, struct Producto *prod);
struct Producto ** ajustarArreglo (struct Producto **arreglo, struct Producto *prod);
int anoBisiesto(int ano);
void diaSiguiente(int *dia , int *mes, int *ano);
void cerrarCaja(struct Sucursal *sucur);
void abrirCaja(struct Sucursal *sucur);

//Ingreso----------------
int ingresarInt(const char *mensaje);
char * ingresarChar(const char *mensaje);
struct Producto ** crearArregloProductos(const char *mensaje, struct Sucursal *sucursal);

//Modificar----------------
int modificarProducto(int codigoIngresado, char *nombreIngresado, int precioIngresado, struct Sucursal *tienda); 
struct Empresa * modificarDueno(char *nombreIngresado, struct Empresa *empresa); 
struct Sucursal *modificarSucursal(char *direccionIngresada, char *administradorIngresada, char *rutAdministradorIngresada, struct Sucursal *sucursal);
struct Producto * modificarPromocion(int codigo, char *nombre, int precio, struct Producto **consumo, struct Producto **liquido, struct Sucursal *sucursal);

//Crear----------------
struct Empresa * crearEmpresa(char *nombre,char *dueno); 
struct NodoBoleta * crearNodoBoleta (int numBoleta, int totalComprado); 
struct Ventas * crearVentas (int dia, int mes, int ano); 
struct NodoVentas * crearNodoVentas (); 
struct Sucursal * crearSucursal (char *direccionIngresada, char * administradorIngresado, char *rutAdministradorIngresado, int idIngresada); 
struct Promocion * crearPromocion (struct Producto *product, struct Producto **consumos, struct Producto **liquidos); 
struct Producto * crearProducto (int codigo, char *nombre, int precio); 

//Buscar----------------
struct Sucursal * buscarSucursal(struct Sucursal *head, int id);//retorna la sucursal buscada por ID
struct Producto * buscarProducto (int codigo, struct Producto **productos); 
struct NodoBoleta * buscarBoletaEnBoletas (int numeroBoleta, struct NodoBoleta *boleta); 
struct NodoBoleta * buscarBoletaEnVentas (int numeroBoleta, struct NodoVentas *ventas); 
struct Producto * buscarConsumo (struct Producto *pConsumo, struct Producto **consumos); 
struct Producto * buscarLiquido (struct Producto *pLiquido, struct Producto **liquidos); 
struct NodoBoleta * buscarUltimaBoletaEnListaVentas (struct NodoVentas *head);
struct NodoVentas * buscarUltimoNodoVentas (struct NodoVentas *head);


//Verificar----------------
struct Producto * verificarDosProductosParaPromocion (struct Producto *productoConsumo, struct Producto *productoLiquido, struct Promocion **promociones); 

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
    struct Promocion *promociones[MAXPROMOCIONES];
    struct Producto *productos [MAXPRODUCTOS];
    struct NodoBoleta *ultimaBoleta;
    struct Ventas *cajaAbierta;
    struct NodoVentas *ventas;
    struct Sucursal *sig, *ant;

};

struct Promocion{

    struct Producto **consumo;
    struct Producto **liquido;
    struct Producto *dato;

};

struct NodoVentas{

    struct Ventas *datos;
    struct NodoVentas *sig,*ant;

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
//  struct Producto **productos; 
    int total;
    struct NodoBoleta *sig;

};

#include "funciones.c"

#endif