PImage estrella;
boolean CrecimientoEstrella = true;

class Estrella {

//Propiedades :
float PosXEstrella;
float PosYEstrella;
float TamEstrella;

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
image (estrella, PosXEstrella, PosYEstrella, TamEstrella, TamEstrella);
}

void EstrellasTitilan () {  
  if (CrecimientoEstrella) {
    TamEstrella= TamEstrella +3;
  } else {
    TamEstrella= TamEstrella -3;
  }

  if (TamEstrella > 150)
    CrecimientoEstrella = false;
  if (TamEstrella < 4)
     CrecimientoEstrella= true;
}
}
