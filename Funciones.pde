
void inicio (){
background (172,224,52);
imageMode (CENTER);
image (nombre,400,200,700,200);
image (cartel,750,450,110,120);
image(cartel,750,450, 110,120);
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
fill (197,242,2);
triangle(x1,y1,x2,y2,x3,y3);
//triangle(380,395,380,455,440,427);
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

void PrimerNivel () {
background (16,188,2);
imageMode (CORNER);
fill (57,57,57);
noStroke();
rect (0,75,800,75);
rect (0,200,800,50); 
rect (0,300,800,50);
rect (0,400,800,50);
rect (0,500,800,50);
pushStyle ();
stroke(255,205,0);
strokeWeight (2.5);
line (0,125,800,125);
line (0,100,800,100);
line (0,225,800,225);
line (0,325,800,325);
line (0,425,800,425);
line (0,525,800,525);
image (bandera, 400,6,50,50);
popStyle (); }


void CreditosFinales () {
background (91,170,27);
imageMode (CENTER);
image (creditos, 400,300);
image (volver,750,550,100,110);
textAlign(CENTER,CENTER);
textFont(TahomaBold);
textSize (22);
text ("Candela Ibañez",400,creditosY );
text ("Legajo: 87014/9",400,creditosY +50);
text ("Tecnología Multimedial I",403,creditosY +100);
text ("Comisión 2",400,creditosY +150);
text ("Profesor",400,creditosY +200);
text ("Matías Jauregui Lorda",400,creditosY +220);
text ("Imágenes: freepng.es",400,creditosY +270);
creditosY = creditosY -avanceCreditos;
if (creditosY <= 250)
avanceCreditos = 0; }

void reiniciar (){
estado = "pantalla inicial";
  
d1 = dist (mouseX, mouseY,400,425) ;
r = 120/2; 
radioCirculo = 120;
x1 =375;
y1 =390;
x2 =375;
y2 =460;
x3 =445;
y3 =427;
creditosY =700;
avanceCreditos =1;
botonX =700;
botonY =550;
posX = 400;
posY = 575;
avance = 25;
float[] velocidad1 = new float[5];  
float[] XAutos1 =  new float[5]; 
float[] velocidad2 = new float[5];  
float[] XAutos2 =  new float[5]; 
posxAuto = 830;
posxAuto2 = 830;

  
}
