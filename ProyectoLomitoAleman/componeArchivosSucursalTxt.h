#ifndef __COMPONEARCHIVOSSUCURSALTXT_H__
#define __COMPONEARCHIVOSSUCURSALTXT_H__

#include <stdio.h>
#include <direct.h>
#include <stdlib.h>
#include <string.h>
#include "componeArchivosSucursalTxt.c"

//encabezados de las funciones
void componeArchivosSucursalTxt(int);
void crearCarpetas(int);
void revisaArchivosSucursalTxt(int);
int revisaArchivoTxt(int,char*);
void creaArchivoTxt(int, char*);

#endif