boolean CrecimientoEstrella = true;
/*
class Estrellas {      (esta clase posee al menos tres objetos)

Propiedades :
PImage
Posición X
Posición Y
Tamaño

Constructor:
Estrellas () {
PosX = _ ;
POsY = _ ;
Tam  = _ ;
  

Métodos:   
  
void DibujarEstrella () {
image (...);
}

void EstrellasTitilan () {       (Las estrellas agrandan y achican su tamaño constantemente)

}
 */
 
 
class Estrella {

//Propiedades :
float PosXEstrella;
float PosYEstrella;
int TamEstrella;

//Constructor:
Estrella ( float PosXEstrella_, float PosYEstrella_) {
TamEstrella= 30 ; 

PosXEstrella = PosXEstrella_;
PosYEstrella = PosYEstrella_;
}

//Métodos:   

void DibujarEstrella () {
fill (255);
ellipseMode (CENTER);
circle (PosXEstrella, PosYEstrella, TamEstrella);
}

void EstrellasTitilan () {  
  if (CrecimientoEstrella) {
    TamEstrella= TamEstrella +1;
  } else {
    TamEstrella= TamEstrella -1;
  }

  if (TamEstrella > 150)
    CrecimientoEstrella = false;
  if (TamEstrella < 4)
     CrecimientoEstrella= true;






}
}


/*if (CrecimientoMancha) {
    TamMancha= TamMancha +1;
  } else {
    TamMancha= TamMancha -1;
  }

  if (TamMancha > 150)
    CrecimientoMancha = false;
  if (TamMancha < 4)
    CrecimientoMancha = true; */
