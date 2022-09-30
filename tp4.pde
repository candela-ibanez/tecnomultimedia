//Generar una animación del cuadro  "Mujer ante el sol" de Miró, donde los elementos originales del cuadro esten en movimiento
//(Ejecutar para ver la imagen original del cuadro)

Mancha Roja;
Personaje Mujer;
Estrella Estrella1;
Estrella Estrella2;
Estrella Estrella3;


void setup () { 
size (600,800);
fondo = loadImage("fondo.jpg");
Roja = new Mancha (110, 330);
Mujer = new Personaje (-10, 700);
Estrella1 = new Estrella (530, 110);
Estrella2 = new Estrella (75, 90);
Estrella3 = new Estrella (555, 480);

}

void draw () {
image (fondo, width /2,height /2);
Roja.DibujarMancha ();
Mujer.DibujarPersonaje ();
Estrella1.DibujarEstrella ();
Estrella2.DibujarEstrella ();
Estrella3.DibujarEstrella ();
Roja.ManchaCrece ();
Estrella1.EstrellasTitilan ();
Estrella2.EstrellasTitilan ();
Estrella3.EstrellasTitilan ();
Mujer.PersonajeAvanza ();


}
