float AvancePersonaje = 5;
PImage personaje; 

class Personaje {
//Propiedades :
float PosXPersonaje;
float PosYPersonaje;

//Constructor:
Personaje ( float PosXPersonaje_, float PosYPersonaje_) {

PosXPersonaje = PosXPersonaje_;
PosYPersonaje = PosYPersonaje_; }

//Métodos:   

void DibujarPersonaje () {
image (personaje,PosXPersonaje,PosYPersonaje,300,600); }

void PersonajeAvanza () {
PosXPersonaje = PosXPersonaje + AvancePersonaje;
if (PosXPersonaje >= 300)
AvancePersonaje = 0;}

}
