
PImage miImagen;
void setup(){
 size(800,400);
 background(#62B43A);
 miImagen =loadImage ("AUTOTESLA.jpg");
 
}

void draw (){
image(miImagen,0,0,400,400);
fill(222,222,222);
  stroke(222,222,222);
  beginShape();
  vertex(650, 50);
  vertex(780, 70);
  vertex(780,300);
  vertex(650,300);
  endShape(CLOSE);

fill(150,150,150);
  stroke(150,150,150);
  beginShape();
  vertex(415, 330);
  vertex(750, 330);
  vertex(760, 200);
  vertex(570,160);
  vertex(410, 250);
  endShape(CLOSE);
  stroke(0,0,0);
fill(0,0,0);
ellipse(459,340,80,80);
ellipse(700,340,80,80);
fill(110,110,110);
  stroke(150,150,150);
  beginShape();
  vertex(450, 240);
  vertex(650, 220);
  vertex(650,180);
  vertex(570,166);
  endShape(CLOSE);
stroke(0,0,0);
fill(20,20,20);
ellipse(459,340,60,60);
ellipse(700,340,60,60);
}
