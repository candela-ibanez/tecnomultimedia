//VARIABLES
//ilustración dálmata
PImage dalmata;
float sizedalmata = 200;
float crecimiento = 10;
boolean agrandarImagen = false;
//Fuentes- Texto
PFont Dalgona;
PFont dalgona;
PFont Alegreya;
float x101 = 400;
float y101 = -300;
float velocidad101 = 3;
int tamaniotitulo = 100;
float xDalmatas = 400;
float yDalmatas = -200;
float velocidadDalmatas = 3;

//Manchas
PImage mancha1;
float sizemancha1x = 5;
float sizemancha1y = 4;                                       //image (mancha8,400,300, 30 ,30); }
float crecimientomancha1= 15;
PImage mancha2;
float sizemancha2x = 5;
float sizemancha2y = 4;
float posxmancha2 = 255;
float posymancha2 = 420;
float avancemancha2 =5;
float crecimientomancha2 = 8;
PImage mancha3;
float sizemancha3 = 5;
float crecimientomancha3 = 6; 
PImage mancha4;
PImage mancha5;
PImage mancha6;
PImage mancha7;
float mancha7y = 200;
PImage mancha8;
PImage mancha9;
float sizemancha9 = 20;
float posxmancha9 = 400;
float posymancha9 = 300;
float crecimientomancha9 =10;




void setup () {
size (800,600);

dalmata = loadImage("Dalmata.jpg");
mancha1 = loadImage("mancha1.png");
mancha2 = loadImage("mancha2.png");
mancha3 = loadImage("mancha3.png");
mancha4 = loadImage("mancha4.png");
mancha5 = loadImage("mancha5.png");
mancha6 = loadImage("mancha6.png");
mancha7 = loadImage("mancha7.png");
mancha8 = loadImage("mancha8.png");
mancha9 = loadImage("mancha9.png");
Dalgona = createFont ("Dalgona.ttf",50);
Alegreya = createFont ("Alegreya.ttf",100);
textFont (Dalgona);
textFont (Alegreya);
         
}


void draw () {
background (255); 

//Título -----------------------------------------------------------------------------------------------------------------------------------------------------------
if ( millis() >0 &&  millis() < 6000){
fill (245,0,0);
textFont (Alegreya);
textAlign(CENTER);
text ("101",x101 ,y101);
y101 = y101 + velocidad101 ;
if (y101 >= 100) {velocidad101 = 0;}
  text ("Dalmatas",xDalmatas ,yDalmatas);
yDalmatas = yDalmatas + velocidadDalmatas ;
if (yDalmatas >= 170) {velocidadDalmatas = 0;}
}
//"Click en el dálmata"----------------------------------------------------------------------------------------------------------------------------------------------
if ( millis() >4000 &&  millis() < 10000) {
fill (245,0,0);
textFont (Alegreya);
textAlign(CENTER);
textSize (25);
text ("¡Click en el \n dálmata!", 100,350);}
//Zoom dalmata-------------------------------------------------------------------------------------------------------------------------------------------------------
imageMode (CENTER);
image (dalmata, 400, 300, sizedalmata,sizedalmata );
if( agrandarImagen ){
    sizedalmata= sizedalmata + crecimiento; }  
    if (sizedalmata >= 600){                 // IFs para regular la velocidad de crecimiento (que aumente)
  crecimiento = 30;}
  if (sizedalmata >= 3000){
  crecimiento = 40;}
  if (sizedalmata >= 5000){
  crecimiento = 50;}
if (sizedalmata >= 13300.0){
  crecimiento = 0;
}
if (sizedalmata >= 13300.0){              // IF/si el dálmata es igual a 133000  - manchas
 
//MANCHAS------------------------------------------------------------------------------------------------------------------------------------------------------------
image (mancha1, 150,150, sizemancha1x ,sizemancha1y);  //MANCHA 1
sizemancha1x = sizemancha1x + crecimientomancha1;
sizemancha1y = sizemancha1y + crecimientomancha1;
if (sizemancha1x >= 320)
crecimientomancha1 = 0;
if (sizemancha1y >= 230)
  crecimientomancha1 = 0;
image (mancha2,posxmancha2,420, sizemancha2x,sizemancha2y);   //MANCHA 2
sizemancha2x = sizemancha2x + crecimientomancha2;
sizemancha2y = sizemancha2y + crecimientomancha2;
if (sizemancha2x >= 580)
crecimientomancha2 = 0;
if (sizemancha2y == 460)
  crecimientomancha2 = 0;
image (mancha3, 600,300,sizemancha3,sizemancha3);      //MANCHA 3
sizemancha3 = sizemancha3 + crecimientomancha3;
sizemancha3 = sizemancha3 + crecimientomancha3;
if (sizemancha3 >= 400)
  crecimientomancha3 = 0;

if ( millis() > 10000 && millis() < 24000 ) {
textAlign(LEFT);
textFont (Dalgona);
textSize (30); 
fill (255);
text ("with the talents", 70,150);
text ("of", 150,180);
textSize (40);
text ("Road Taylor",90,360);
text ("J. Pat OMalley", 80, 420);
text ("Betty Lou Gerson", 80, 485 );
text ("Martha Wentworth", 80,545);
text ("Cate Bauer", 490, 230);
text ("Ben Whrigth", 470,290);
text ("Dave Frankham", 470,350);
text ("Fred Worklock", 470,410);}

if ( millis() > 24500 && millis() < 32000 ) { //Pantalla 2-----------------------------------------------------------------------------------------------------------
  crecimientomancha1 = 4;
  crecimientomancha2 = 4;
  crecimientomancha3 = 4;}
  
if ( millis() > 32000) {
  crecimientomancha1 = -8;
  crecimientomancha2 = -8;
  crecimientomancha3 = -8;
if (sizemancha1x <= 220)
crecimientomancha1 = 0;
if (sizemancha2x <= 180)
crecimientomancha2 = 0;
if (sizemancha3 <= 100)
crecimientomancha3 = 0;
image (mancha4, 400,550, 160 ,160); 
image (mancha5, 600,480, 130 ,130);
image (mancha6, 130,325, 140 ,140); 
image (mancha7, 480,mancha7y, 190 ,190); 

if (sizemancha2x <= 180 && millis() < 44000) {
fill (255);
textSize (30);
text ("with the talents", 70,150);
text ("of", 150,180);
fill (0);
textSize (40);
text ("Lisa Davids", 200,290);
text ("Jonm Conway" ,200,350);
text ("George Pelling",300,410);
text ("Judor Owen", 340, 470);}

if ( millis() > 40000) {{  //Pantala 3---------------------------------------------------------------------------------------------------------------------------------
image (mancha9,posxmancha9,posymancha9,sizemancha9,sizemancha9);
sizemancha9 = sizemancha9 + crecimientomancha9;}
if (sizemancha9 >= 800)
crecimientomancha9 = -10;
if (sizemancha9 <= 5) 
crecimientomancha9 =0;}

if (millis() > 45500){
fill (255);
textSize (30);
text ("Production",80,150); 
fill (0);
textSize (35);
text ("Robert O.Cook", 200,290);
text ("Donald Halliday" ,200,350);
text ("Eustace Lycett",300,410);
text ("Ken Peterson", 340, 470);}







}
}
//println (sizedalmata);
println (millis()/1000);
//println (sizemancha9);
}
void mousePressed() {
 agrandarImagen = true;}
