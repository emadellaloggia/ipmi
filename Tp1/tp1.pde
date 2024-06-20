PImage fotoPaisaje;     //Ema Della Loggia
void setup(){          //comisión 2//
  size(800,400);
  background(255);
  
  fotoPaisaje= loadImage ("paisaje.jpg");
}

void draw(){
  image(fotoPaisaje,0,0);
  strokeWeight(0);
  
  fill(31, 116, 164);// fondo
   rect(400,0,460,400);
   noStroke();
  strokeWeight(0);

  fill(114, 63, 49,150);
circle(700,10,130);
strokeWeight(0);
  
  fill(149, 66, 44);
circle(540,10,200);


fill(74, 38, 23); //cabaña
stroke(203, 119, 34);
square(450,230,160);
 strokeWeight(1);
  
  fill(60, 38, 32); //cabaña
stroke(203, 119, 34);
square(560,212,180);
noStroke();
strokeWeight(1);


fill(60, 38, 32); //cabaña
stroke(203, 119, 34);
strokeWeight(4);
triangle(680,140,529,263,791,263);



strokeWeight(1);
fill(60, 38, 32); //cabaña
stroke(203, 125, 34);

fill(7, 3, 2);// techo
quad(684, 142, 531, 261, 432, 248, 550, 123);
  strokeWeight(1);
  
  fill(60, 38, 32); //cabaña
stroke(203, 119, 34);
strokeWeight(6);
triangle(680,140,529,263,791,263);

fill(215, 142, 60); //ventana
stroke(215, 142, 70);
square(640,185, 50);
strokeWeight(1);

fill(255, 230, 159); //ventana
stroke(215, 142, 70);
square(643,188, 20);
strokeWeight(1);
fill(255, 230, 159); //ventana
stroke(215, 142, 70);
square(665,188, 20);
strokeWeight(1);


fill(255, 230, 159); //ventana
stroke(215, 142, 70);
square(643,210, 20);
strokeWeight(1);


fill(255, 230, 159); //ventana
stroke(215, 142, 70);
square(665,210, 20);
strokeWeight(1);
  
  noStroke();//pasto
fill(52, 142, 51); 
triangle(399, 297, 400, 398, 747, 399);
strokeWeight(1);

strokeWeight(10);
fill(0, 0, 0);// palo
line(100,300,300,300);

 

  
}
    
