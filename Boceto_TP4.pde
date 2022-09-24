//Generar una animación del cuadro  "Mujer ante el sol" de Miró, donde los elementos originales del cuadro esten en movimiento
//(Ejecutar para ver la imagen original del cuadro o link a la imagen (https://www.wikiart.org/es/joan-miro/woman-in-front-of-the-sun))

PImage cuadro;

void setup () { 
size (600,800);
cuadro = loadImage("cuadro.jpg");


}

void draw () {
background (250);
imageMode (CENTER);
image (cuadro, width /2 , height /2 );

}
