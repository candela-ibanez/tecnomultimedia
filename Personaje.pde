float AvancePersonaje = 1;

/*class Personaje {

Propiedades :
PImage  Posición X  Posición Y Tamaño

Constructor:
Personaje () {
PosX = _ ;
POsY = _ ;
Tam  = _ ;
  
Métodos:   
void DibujarPersonaje () {
image (...);}
void PersonajeAvanza () {       (el personaje llega al lienzo desde el borde izquierdo de la pantalla y se detiene en la mitad)
void PersonajeParpadea () {     (a partir de imagenes Sprite el personaje parpadea) }
}*/

class Personaje {
//Propiedades :
float PosXPersonaje;
float PosYPersonaje;



//Constructor:
Personaje ( float PosXPersonaje_, float PosYPersonaje_) {

PosXPersonaje = PosXPersonaje_;
PosYPersonaje = PosYPersonaje_; 

}

//Métodos:   

void DibujarPersonaje () {
fill (0);
rectMode (CENTER);
rect (PosXPersonaje,PosYPersonaje, 120,600); 
//rect ( width /2, 600, 60,200);
}

void PersonajeAvanza () {
PosXPersonaje = PosXPersonaje + AvancePersonaje;

 
 println (PosXPersonaje);
}


}
