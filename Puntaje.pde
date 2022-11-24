class PUNTAJE {

  int x = 0;
  int a = 0;
  String puntos;
  int puntoS;

  VIDAS vidas1;
  VIDAS vidas2;
  VIDAS vidas3;


  PUNTAJE() {
  }


  void puntaje () {
    textSize (40);
    text ("puntos" + x, 25, 70);
  }

  void puntajeNegativo () {
    textSize (20);
    text ("puntos negativos" + a, 25, 100);
  }

  void subirpuntaje () {
    x = x + 1;
  }

  void subirpuntajeExtremo () {
    x = x + 3;
  }

  void bajarpuntaje () {
    a = a - 1;
   
  }

  void bajarpuntajeExtrema () {
    a = a - 3;
  }
}
