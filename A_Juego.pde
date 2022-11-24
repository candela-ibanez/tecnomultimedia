class JUEGO {

  SUSHI [] sushis = new SUSHI[5];       //Arreglo Sushis
  SUSHI sushiExtremo;
  GATITO gatito;                        //Declaracion de clases dentro de clase principal
  BASURA [] basuras = new BASURA[3];    //Declaracion de clases dentro de clase principal
  BASURA basuraExtrema;
  //VIDAS [] vidas = new VIDAS[3];
  VIDAS vidas1;
  VIDAS vidas2;
  VIDAS vidas3;
  PUNTAJE puntaje;


  PImage restaurant;



  //SUSHI sushiEspecial; 
  //Arreglo Sushis

  //-------------------------------------------------------------------------------------------------------------------------------------------------------  

  JUEGO() {  //CONSTRUCTOR

    restaurant = loadImage("restaurant.JPG");
    puntaje = new PUNTAJE();
    sushiExtremo = new SUSHI((random (50, 750)), (random( -800, 0)), 130, 130, 4, 10);
    basuraExtrema = new BASURA ((random (10, 780)), (random( -800, 0)), 60, 60, 8, 10);
    vidas1 = new VIDAS(width-70, 70, 70, 70);
    vidas2 = new VIDAS(width-100, 70, 70, 70);
    vidas3 = new VIDAS(width-130, 70, 70, 70);
    gatito= new GATITO (width/2, 700, 200, 200 );   

    for (int i=0; i<basuras.length; i++) {
      basuras[i] = new BASURA ((random (10, 780)), (random(0, height/2)), 60, 60, 8);
    }                     //Declarar arreglo Sushis con ciclo for

    for (int i=0; i<sushis.length; i++) {
      sushis[i] = new SUSHI ((random (50, 750)), (random(0, height/2)), 120, 120, 4);
    }                       //Declarar arreglo Sushis con ciclo for


    /*for (int i=0; i<vidas.length; i++) {
     vidas[i] = new VIDAS (width-70, 70, 70, 70);
     }*/    //Declarar arreglo Sushis con ciclo for

    // sushiEspecial = new SUSHI ((random (50, 750)), (random(0, height/2)), 60, 60, 4, 5000000000); //Declarar arreglo Sushis con ciclo for
  }


  //-------------------------------------------------------------------------------------------------------------------------------------------------------

  void Juganding() {
    mostrarJuego ();
    comerSushi ();
    comerBasura();
    comerSushiExtremo();
    comerBasuraExtrema();
  }

  void mostrarJuego() {
    pushStyle ();
    imageMode (CENTER);
    image (restaurant, width/2, height/2, width+30, height+30);
    gatito.mostrar();
    fill(0);
    puntaje.puntaje();
    puntaje.puntajeNegativo();
    popStyle ();

    /*for (int x=0; x<vidas.length; x+= 10) {             
     vidas[x].mostrarVidas();
     }*/

    vidas1.mostrarVidas();
    vidas2.mostrarVidas();
    vidas3.mostrarVidas();

    for (int i=0; i<sushis.length; i++) {       //Llamando metodos clase sushi
      sushis[i].colorsushi= color(255);
      sushis[i].mostrar();                              //Llamando funcion para dibujar Sushis
      sushis[i].mover();                                //Llmanado funcion para mover Sushis
    }

    println(millis());
    if (millis() >5000) {
      sushiExtremo.colorsushi = color(0, 200, 0);   
      sushiExtremo.mostrar();
      sushiExtremo.mover();
    }


    if (millis() >20000) {
      basuraExtrema.colorBasura = color( 0, 0, 200);
      basuraExtrema.mostrar();
      basuraExtrema.mover();
    }




    for (int i=0; i<basuras.length; i++) {              //Llamando metodos clase basura
      basuras[i].colorBasura= color(0);
      basuras[i].mover();
      basuras[i].mostrar();
    }
  }


  void comerSushi() {

    for (int i=0; i<sushis.length; i++) {
      float DistanSushis = dist(mouseX, gatito.posicionyGatito, sushis[i].posicionxSushi, sushis[i].posicionySushi);

      pushStyle();
      noFill();
      ellipseMode (CENTER);
      strokeWeight( 3 );
      circle( mouseX, gatito.posicionyGatito, 100 );  //circulo del gatito
      // circle( sushis[i].posicionxSushi, sushis[i].posicionySushi, 50 ); //circulos sushis
      popStyle();


      if (DistanSushis < 100) {   // accion de comer
        gatito.relleno = color(255, 100, 20);
        //puntos.ganarPuntos();
        sushis[i].reciclar();

        puntaje.subirpuntaje ();
        vidas1.desaparecer=false;
      }
    } //fin ciclo for
  }


  void comerSushiExtremo() {
    float DistanSushis = dist(mouseX, gatito.posicionyGatito, sushiExtremo.posicionxSushi, sushiExtremo.posicionySushi);
    pushStyle();
    noFill();
    ellipseMode (CENTER);
    strokeWeight( 3 );
    circle( mouseX, gatito.posicionyGatito, 100 );  //circulo del gatito
    // circle( sushis[i].posicionxSushi, sushis[i].posicionySushi, 50 ); //circulos sushis
    popStyle();

    if (DistanSushis < 100) {   // accion de comer
      gatito.relleno = color(255, 100, 20);
      sushiExtremo.reciclar();
      puntaje.subirpuntajeExtremo ();
    }
  }

  void comerBasuraExtrema() {


    float DistanBasuras = dist(mouseX, gatito.posicionyGatito, basuraExtrema.posicionxBasura, basuraExtrema.posicionyBasura);

    pushStyle();
    noFill();
    ellipseMode (CENTER);
    strokeWeight( 3 );
    circle( mouseX, gatito.posicionyGatito, 100 );  //circulo del gatito
    popStyle();

    if (DistanBasuras < 150) {   // accion de comer
      gatito.relleno = color(200, 0, 0);
      basuraExtrema.reciclarBasura (); 
      puntaje.bajarpuntajeExtrema ();

      // vidas[i].colorvidas = color (0);
      vidas1.colorvidas = color (0);
    }
  }



  void comerBasura() {

    for (int i=0; i<basuras.length; i++) {
      float DistanBasuras = dist(mouseX, gatito.posicionyGatito, basuras[i].posicionxBasura, basuras[i].posicionyBasura);

      pushStyle();
      noFill();
      ellipseMode (CENTER);
      strokeWeight( 3 );
      circle( mouseX, gatito.posicionyGatito, 100 );  //circulo del gatito
      popStyle();

      if (DistanBasuras < 100) {   // accion de comer
        gatito.relleno = color(200, 0, 0);
        basuras[i].reciclarBasura (); 
        puntaje.bajarpuntaje ();
        vidas1.colorvidas = color (0);
      }
    }//fin for
  }
}
