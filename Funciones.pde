void imagenes () {
nombre = loadImage("nombre.png");
cartel= loadImage("cartel.png");
cartelcreditos= loadImage("cartelcreditos.png");
creditos= loadImage("creditos.png");
bandera= loadImage("bandera.png");
botonreinicio= loadImage("botonreinicio.png");
volver= loadImage("volver.png");
personaje1 = loadImage("personaje1.png");
Instrucciones = loadImage("Instrucciones.png");
TahomaBold = loadFont("TahomaBold.vlw");
gameover = createFont ("gameover.ttf",50);
autoazul = loadImage("autoazul.png");
autorojo = loadImage("autorojo.png");
}

void inicio (){
background (123,209,48);
imageMode (CENTER);
image (cartelcreditos, 50,450,100,100);
image (nombre,400,200,700,200);
image (cartel,750,450,110,120);
fill (47,49,44);
rect (0,300,800,50);
rect (0,500,800,50);
fill (255,0,0);
circle (400,425,radioCirculo);
strokeWeight (4);
stroke (200,200,200);
line (0,325,800,325);
line (0,525,800,525);
noStroke ();
fill (255);
triangle(x1,y1,x2,y2,x3,y3);
//triangle(380,395,380,455,440,427);
image (autorojo,autorojoiniciox,325,55,30);
image (autoazul,autoazuliniciox,525,55,30);
autorojoiniciox = autorojoiniciox -5;
autoazuliniciox = autoazuliniciox +6;
if (autorojoiniciox <=0)
autorojoiniciox=850;
if (autoazuliniciox >=800)
autoazuliniciox=-50;
if (mousePressed == true && (d1 < r)) {
radioCirculo =100;
x1 =380; 
y1= 395;
x2 =380;
y2 =455;
x3 =440;
y3 =427;}
if (mousePressed == false){
radioCirculo =120;
x1 =375;
y1 =390;
x2 =375;
y2 =460;
x3 =445;
y3 =427;}}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------
void PantallaInstrucciones () {
background (91,170,27);
imageMode (CENTER);
image (Instrucciones, 400,335);
image (volver,750,550,100,110);}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------
void PantallaGanar () {
background( 0, 200, 0 );
imageMode (CENTER);
image (botonreinicio,700,550,100,100);
fill (255);
textFont (gameover);
textSize (300);
textAlign (CENTER);
text ("ganaste",400,300); }
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
void PantallaPerder () {
background (183,0,0);
imageMode (CENTER);
image (botonreinicio,botonX,botonY,100,100);
fill (255);
textFont (gameover);
textSize (300);
textAlign (CENTER);
text ("perdiste",400,300);
}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
void Juego (int posX, int tam) {
background (91,170,27);
imageMode (CORNER);
fill (57,57,57);
noStroke();
rect (posX,75,tam,75);
rect (posX,200,tam,50); 
rect (posX,300,tam,50);
rect (posX,400,tam,50);
rect (posX,500,tam,50);
pushStyle ();
stroke(255,205,0);
strokeWeight (2.5);
line (posX,125,tam,125);
line (posX,100,tam,100);
line (posX,225,tam,225);
line (posX,325,tam,325);
line (posX,425,tam,425);
line (posX,525,tam,525);
image (bandera, 400,6,50,50);
popStyle (); 
}
