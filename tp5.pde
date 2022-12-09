JUEGO juego;

import ddf.minim.*;
Minim minim;

AudioPlayer dojo;
AudioSample maullido;
AudioSample perder;



void setup() {
  size(800, 800);
  juego = new JUEGO ();
  
  
  minim = new Minim (this);
  dojo = minim.loadFile ("Dojo.mp3");
  maullido = minim.loadSample("Cat.mp3");
   perder = minim.loadSample("pou.mp3");
  
}

void draw() {
  juego.JuegoEntero();
  juego.keyPressed ();
  
}
