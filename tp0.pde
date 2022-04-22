//Osito de nieve

void setup () {
size(600,600) ; 
background (#7C7ED3) ;
} 

void draw () {

noStroke();
fill(#FFFFFF); //blanco
ellipse (100,540,550,250); //elipse blanca 1
noStroke ();
fill(#FFFFFF); //blanco
ellipse (400,540,600,250); //elipse blanca 2
noStroke ();

//sombra
fill(#DBDEDD); //gris
ellipse (300,470,240,80);

fill (#EAE7E3); //(gris) (#F5F5F5)
circle (300,390,200); //primer esfera muñeco (sombra)
fill (#FFFFFF); // (blanco)
circle (305,385,190); //primer esfera muñeco (blanca)

fill (#EAE7E3); //(gris) (#F5F5F5)
circle (300,260,160); // segunda esfera muñeco (sombra)
fill (#FFFFFF); // (blanco)
circle (305,255,150); //segunda esfera muñeco (blanca)

fill (#EAE7E3); //(gris) (#F5F5F5)
circle (300,160,120); // tercera esfera muñeco (sombra)
fill (#FFFFFF); // (blanco)
circle (302,155,110); //tercera esfera muñeco (blanca)

//nariz
fill (#272727);
noStroke();
circle (300,165,25);

//orejas
fill (#FFFFFF);
circle (252,110,40);
fill (#FFFFFF);
circle (345,110,40);

//ojos
fill (#272727);
noStroke();
circle (320,130,15);
fill (#272727);
noStroke();
circle (280,130,15);

//botones
fill (#272727);
noStroke();
circle (300,245,20);
fill (#272727);
noStroke();
circle (300,285,20);
fill (#272727);
noStroke();
circle (300,360,20);
fill (#272727);
noStroke();
circle (300,400,20);
fill (#272727);
noStroke();
circle (300,440,20);

//brazos
strokeWeight (8);
stroke (#9D6F44);
line (120, 120, 235, 250);
strokeWeight (7);
stroke (#9D6F44);
line (145, 150, 160,120);
//brazo2
strokeWeight (8);
stroke (#9D6F44);
line (450,150,360,240);
strokeWeight (6);
stroke (#9D6F44);
line (410,150,400,200);

//copos
noStroke();
fill (#FFFFFF); 
circle (50,100,15);
circle (550,180,15);
circle (530,380,12);
circle (580,380,5);
circle (530,330,5);
circle (450,300,6);
circle (465,350,5);
circle (480,240,11);
circle (480,120,5);
circle (200,120,5);
circle (100,400,10);
circle (150,350,7);
circle (180,380,8);
circle (50,200,5);
circle (30,50,9);
circle (20,320,5);
circle (120,220,10);
circle (170,290,10);
circle (110,300,5);
circle (300,30,8);
circle (430,40,11);
circle (230,50,5);
circle (110,60,7);
circle (150,10,5);
circle (150,10,5);
circle (570,30,10);
circle (520,60,7);
circle (390,140,7);
circle (380,70,7);



}
