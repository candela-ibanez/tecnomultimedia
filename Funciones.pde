void calavera() {
  noStroke ();
  ellipseMode (CENTER);
  fill(224,27,27);
  circle (200,250,300);
  rectMode (CENTER);
  rect (200,380,200,75,20);
  fill(255,243,0);
  circle (140,260,90);
  circle (270,260,90);
  triangle(200,290,170,340,230,340);
  for (int r = 155; r <= 245 ; r = r+30) {
  fill(255,243,0);
  rect (r,395,7,37,3);}}  

void calavera2() {
  noStroke ();
  ellipseMode (CENTER);
  fill(224,27,27);
  circle (600,250,300);
  rectMode (CENTER);
  rect (600,380,200,75,20);
  fill(51,59,193);
  circle (540,260,90);
  circle (670,260,90);
  triangle(600,290,570,340,630,340);
  for (int r = 555; r <= 645 ; r = r+30) {
  fill(51,59,193);
  rect (r,395,7,37,3);}} 

void boton() {
  ellipseMode (CENTER);  
  noStroke();
  fill (224,18,18);
  circle (735,490,70); 
  fill (224,27,27);
  noStroke();
  circle (735,490,58);
  imageMode (CENTER);
  image (flecha,735,490,60,45);
}
 
