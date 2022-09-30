Cuadro cuadro; 


void setup () { 
size (600,800);
fondo = loadImage("fondo.jpg");
mancha = loadImage("mancha.png");
estrella = loadImage("Estrella.png");
personaje = loadImage("personaje.png");

cuadro = new Cuadro();


}

void draw () {
cuadro.dibujar();
}


void keyPressed  () {
 cuadro.keypressed ();
}
