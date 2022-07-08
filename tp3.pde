void setup(){
size(800, 600 );
estado = "pantalla inicial";
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

for( int i = 0 ; i < velocidad1.length ; i= i+1 ){  
velocidad1[i] = random( 3,5 );                   
XAutos1[i] = -30; } 

for( int i = 0 ; i < velocidad2.length ; i= i+1 ){  
velocidad2[i] = random( 3,5);                   
XAutos2[i] = 830; } 

}

void draw(){
println (posX, posY);

if( estado.equals("pantalla inicial") ){
    inicio ();

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------  
}else if( estado.equals("instrucciones") ){
   PantallaInstrucciones ();
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
}else if( estado.equals("jugar") ){
   Juego ();
   //personaje
   image (personaje1,posX,posY,30,30); 
   if (posY <= 50)
   estado = "ganar";

  //AUTOS AZULES
  for( int n = 0 ; n < 5 ; n=n+1 ){               
  XAutos1[n] += velocidad1[n];     
  fill (0,0,90);
  image (autoazul,XAutos1[n],n * 100 +99, 55, 30 );
  if (XAutos1[n] >=800)
  XAutos1[n] = 0; 
  float d = dist(XAutos1[n],n * 100 +99,posX,posY);
  if (d < 20) {
  estado = "perder";}}

  //AUTOS ROJOS
  for( int n = 0 ; n < 5 ; n=n+1 ){               
  XAutos2[n] -= velocidad2[n];     
  fill (200, 0, 0);
  image ( autorojo,XAutos2[n], n * 100+ 223, 55, 30  );
  if (XAutos2[n] <=0)
  XAutos2[n] = 830; 
  float d = dist(XAutos2[n],n * 100+ 223,posX,posY);
  if (d < 20)
  estado = "perder"; }   
 
  //AUTOS AVENIDA
  float posyAuto =75;
  float posyAuto2 =125;
  fill (200, 0, 0);
  image (autorojo, posxAuto, posyAuto,50,25); 
  image ( autorojo, posxAuto2,posyAuto2,50,25); 
  posxAuto = posxAuto -3;
  posxAuto2 = posxAuto2 -5;
  if (posxAuto <=0)
  posxAuto = 800; 
  float di = dist( posxAuto,posyAuto,posX,posY);
  if (di < 20)
  estado = "perder";
  if (posxAuto2 <=0)
  posxAuto2 = 800;
  float d = dist( posxAuto2,posyAuto2,posX,posY);
  if (d < 20)
  estado = "perder";
 
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------  
}else if( estado.equals("ganar") ){
PantallaGanar ();
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------
}else if( estado.equals("perder") ){
PantallaPerder ();
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
}else if( estado.equals("creditos finales") ){
CreditosFinales ();}

}



void mousePressed(){
if( estado.equals("pantalla inicial") && dist (mouseX, mouseY,400,425) <= 60 )
estado = "jugar";
if( estado.equals("pantalla inicial") && dist (mouseX, mouseY,750,450) <= 60 )
estado = "instrucciones";
if( estado.equals("instrucciones") && dist (mouseX, mouseY,750,550) <= 60 )
estado = "pantalla inicial";
if( estado.equals("pantalla inicial") && dist (mouseX, mouseY,50,450) <= 60 )
estado = "creditos finales";
if( estado.equals("creditos finales") && dist (mouseX, mouseY,750,550) <= 60 )
estado = "pantalla inicial";
if (estado.equals("perder") && dist (mouseX, mouseY,botonX,botonY) <= 40){
estado = "pantalla inicial";
reiniciar (); }
if (estado.equals("ganar") && dist (mouseX, mouseY,700,550) <= 40){
estado = "pantalla inicial";
reiniciar ();}
}


void keyPressed() {
if (key == CODED)
if (keyCode == UP)
posY = posY -avance;
else if (keyCode == DOWN)
posY = posY + avance; }

