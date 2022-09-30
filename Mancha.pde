boolean CrecimientoMancha = true;
/* class Mancha {
//Propiedades :
//PImage - Posición X Posición Y - Tamaño

Constructor:
Mancha () {
PosX = 110 ;
POsY = 280;
Tam  = _ ; }
  
Métodos:   
void DibujarMancha () {
image (...);}
void ManchaCrece () {       (La mancha tiene un tamaño pequeño al principio, luego va creciendo hasta alcanzar su tamaño real)}
void ManchaGira () {        (La mancha rota sobre su eje)}
}*/


class Mancha {

//Propiedades :
float PosXMancha;
float PosYMancha;
int TamMancha;


//Constructor:
Mancha ( float PosXMancha_, float PosYMancha_) {
TamMancha= 20 ; 

PosXMancha = PosXMancha_;
PosYMancha = PosYMancha_;
}

//Métodos:   

void DibujarMancha () {
fill (255, 0, 0);
ellipseMode (CENTER);
circle (PosXMancha, PosYMancha, TamMancha);
}

void ManchaCrece () {
if (CrecimientoMancha)
    TamMancha= TamMancha +1;
if (TamMancha >= 90)
    CrecimientoMancha = false;
}













}
