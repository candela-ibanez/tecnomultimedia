PImage bandera;
PImage botonreinicio;

String estado;

float d1 = dist (mouseX, mouseY,400,425) ;
int r = 120/2; 


//Variables/arrays autos
float[] velocidad1 = new float[5];  
float[] XAutos1 =  new float[5]; 

float[] velocidad2 = new float[5];  
float[] XAutos2 =  new float[5]; 
float posxAuto = 830;
float posxAuto2 = 830;
PImage autoazul;
PImage autorojo;

//Variables pantalla inicio
float radioCirculo = 120;
float x1 =375;
float y1 =390;
float x2 =375;
float y2 =460;
float x3 =445;
float y3 =427;
PImage nombre;
PImage cartel;
float autorojoiniciox = 800;
float autoazuliniciox = 0;

//Instrucciones
PImage Instrucciones;

//Créditos
PImage creditos;
PImage volver;
PFont TahomaBold;
float creditosY =620;
float avanceCreditos =1;
PImage cartelcreditos;

//Pantalla perder
PFont gameover;
int botonX =700;
int botonY =550;


//Variables personaje
PImage personaje1;
float posX = 400;
float posY = 575;
int avance = 25;
