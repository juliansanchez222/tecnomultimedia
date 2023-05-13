PFont FuenteFiat;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage boton;
color fondo;
String pantalla; 
int tiempo;
int velX;
int posX;


void setup(){
size(640, 480);
textAlign(CENTER,CENTER);
  
pantalla ="Menú";    
tiempo = 0;
velX = 1;
posX=width; 
  
FuenteFiat=loadFont("FuenteFiat.vlw");
textFont(FuenteFiat,40);

frameRate(60);    
}

void draw(){
  
background(fondo);
  
posX=posX+velX;

if (pantalla.equals("Menú")) {
imagen1 =loadImage("imagen1.jpg");
image(imagen1,0,0,640,480); 
fill(0);
text("Menú.\nClick para iniciar.", posX, height/2);
text("Tiempo: "+tiempo, 100,440);   
     
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*10){      
pantalla = "p1";                
tiempo = 0;                      
}
    
boton = loadImage("boton.png");
image(boton, 500 , 350, 100, 100);

}else if (pantalla.equals("p1")) {
imagen2 = loadImage("imagen2.jpg");
image(imagen2,0,0,640,480);  
fill(0);
text("Tiempo: "+tiempo, 100,440);   
text("Fiat ha lanzado el modelo 500 f10 en 2020 \n tiene motor de 320w alcanzando una velocidad de 25k/h \n una carga completa tomara unas 5 horas", posX, height/2);   
    
if(posX >= width){
velX= -7;
}else if( posX <= 0){
velX= 7;
}
    
tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p2";                
tiempo = 0;                      
}
}else if (pantalla.equals("p2")) {
imagen3 = loadImage("imagen3.jpg");
image(imagen3,0,0,640,480);   
fill(0);
text("Tiempo: "+tiempo, 100,440);   
text("En la posicion tradicional de manejo tenemos\n una pantalla LED con indicador de bateria. \n Se destaca por su frenos a disco en la rueda trasera", posX , height/2);

if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}

tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p3";                
tiempo = 0;                      
}

}else if (pantalla.equals("p3")) {
imagen4 = loadImage("imagen4.jpg");
image(imagen4,0,0,640,480);   
fill(0);
text("Tiempo: "+tiempo, 100,440);   
text("Click para reiniciar.", posX, height/2);
    
if( posX >= width){
velX= -7;
}else if( posX <= 0) {
velX= 7;
}
fill(31,61,51);  

boton = loadImage("boton.png");
image(boton,500, 350, 100,100);

}else{
imagen4 = loadImage("imagen4.jpg");
image(imagen4,0,0,640,480); 
fill(127);   
}
println(frameRate);
}

void mousePressed(){  
  
if (pantalla.equals("Menú")) {
int botonX = 500;
int botonY = 350;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p1";
tiempo = 0;
}

}else if (pantalla.equals("p2")) {
int botonX = 500;
int botonY = 350;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p3";
tiempo = 0;
}


}

}
