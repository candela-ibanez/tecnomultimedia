PImage fondo;

class Cuadro {
  
//Propiedades
Mancha Roja;
Personaje Mujer;
Estrella Estrella1;
Estrella Estrella2;
Estrella Estrella3;

//Constructor
Cuadro() {
Roja = new Mancha (110, 430);
Mujer = new Personaje (-300, 520);
Estrella1 = new Estrella (530, 110);
Estrella2 = new Estrella (75, 90);
Estrella3 = new Estrella (555, 480); }


void dibujar(){
imageMode (CENTER);
image (fondo, width /2,height /2,600,800);
Roja.DibujarMancha ();
Mujer.DibujarPersonaje ();
Estrella1.DibujarEstrella ();
Estrella2.DibujarEstrella ();
Estrella3.DibujarEstrella ();
Estrella1.EstrellasTitilan ();
Estrella2.EstrellasTitilan ();
Estrella3.EstrellasTitilan ();
Mujer.PersonajeAvanza ();
}

void keypressed () {
if (key == CODED)
if (keyCode == UP)
Roja.ManchaCrece ();}

}
