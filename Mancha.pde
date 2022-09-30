PImage mancha; 
boolean CrecimientoMancha = true;

class Mancha {

//Propiedades :
float PosXMancha;
float PosYMancha;
int TamMancha;

//Constructor:
Mancha ( float PosXMancha_, float PosYMancha_) {
TamMancha= 20 ; 

PosXMancha = PosXMancha_;
PosYMancha = PosYMancha_;}

//Métodos:   
void DibujarMancha () {
image (mancha, PosXMancha, PosYMancha, TamMancha, TamMancha);}

void ManchaCrece () {
if (CrecimientoMancha)
    TamMancha= TamMancha +5;
if (TamMancha >= 180)
    CrecimientoMancha = false;}

}
