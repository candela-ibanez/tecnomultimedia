boolean movimientolineas = false;
boolean presionarboton = false;
PImage flecha;

void setup (){
size (800,550);
flecha = loadImage("flecha.png");}


void draw () {
background (51,59,193);
noStroke();
fill (255,243,0); //amarillo
rectMode (CORNER);
rect (0,0,400,600);
calavera ();
calavera2 ();
for (int l = 0; l <= width ; l = l+15) {
  stroke(51,59,193);
  strokeWeight(4);
  line (l,0, l, 800);
  if (l >= 400)
  stroke (255,243,0);
  strokeWeight(8);
  line (l,0, l, 800); }
  
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------
if (movimientolineas) {
background (51,59,193);
noStroke();
fill (255,243,0);
rectMode (CORNER);
rect (0,0,400,600);
calavera ();
calavera2 ();
boton ();
for (int l = 0; l <= mouseX ; l = l+15) {
  stroke(51,59,193);
  strokeWeight(4);
  line (l,0, l, 800);
  if (l >= 400)
  stroke (255,243,0);
  strokeWeight(8);
  line (l,0, l, 800); }}
  
if( presionarboton )
movimientolineas = false;
if( presionarboton )
presionarboton = false;


//println (presionarboton);
//println (movimientolineas);
}

void keyPressed () {
if (key == 'r' || key == 'R'){
 movimientolineas = false;}}

void mousePressed() {
movimientolineas = true;

float d1 = dist (mouseX, mouseY,730,500);
int r = 70/2; 
if (d1 < r)
presionarboton = true;}
