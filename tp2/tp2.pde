//Ema Della Loggia
//Comision dos

PImage presentacion; 
int pantalla; 
int miVariable;
String texto; 
int esquinaX1; 
int esquinaY1; 
int ancho; 
int alto; 
int esquinaX2;
int esquinaY2;
int ancho2; 
int alto2;

void setup() {
size(640, 480); 
pantalla = 1; 
presentacion = loadImage("uno.jpg");
textSize( 20 ); 
textAlign( RIGHT, CENTER ); 
fill(0, 44, 108, 177); } 

void draw() { 
image(presentacion, 0, 0); 
if (pantalla == 1) { 
presentacion = loadImage("uno.jpg"); 
if ( frameCount/60 >= 5 ) pantalla = 2; }

else if (pantalla == 2) {
miVariable = frameCount / 3;
presentacion = loadImage("dos.jpg");
texto = "Este juego se lanzó el 7 de \nagosto del 2007 por Flipline Studios \ny sus creadores \nTony Solari y Matt Neff";
fill(108, 52, 131);
text( texto, width/2, miVariable); 


if (frameCount/60 >= 10) { 
pantalla = 3; } }
else if (pantalla == 3) {
  miVariable = frameCount / 2;
presentacion = loadImage("cliente.jpg");
background(0,200,200);
image(presentacion, 400-miVariable, 100, 300,250);
texto = "Comienza con un cliente ordenando una \npizza con determinadas características";
fill(10, 20, 107);
text( texto,miVariable,400); 
if (frameCount/60 >= 15) { pantalla = 4; } }
else if (pantalla == 4) { 
  miVariable = frameCount / 2;
presentacion = loadImage("cuatro.jpg");
fill(214, 234, 248);
texto = "Luego el jugador tiene que crear \nesa pizza mediante 4 estaciones: \n preparación, cocción \ncortarla y entregarla "; 
text( texto,miVariable, height/2 ); 
if (frameCount/60 >= 20) { pantalla = 5; } }
else if (pantalla == 5) { 
  miVariable = frameCount / 3;
presentacion = loadImage("cinco.jpg"); 
fill(47, 84, 28);
textSize(30);
texto = "Al final del juego el cliente te pondrá \nun puntaje y así continuaras con \notros clientes subiendo de nivel";
text( texto, miVariable,200); 
if (frameCount/60 >= 25) {pantalla = 6; } }
else if (pantalla == 6) { 
    miVariable = frameCount / 3;
presentacion = loadImage("seis.jpg");
//texto = "Flipline Studios ofrece su cocina \ncon variedad de productos y comidas diferentes \n¿Qué esperas para cocinar?"; 
fill(142, 68, 173);
text( texto, miVariable,90 ); 

fill(46, 134, 193); 
noStroke();
rect (420,390, 180, 60); 

fill (232, 218, 239);
text ("reiniciar", 536,418); 
println(frameCount/60); 
println(mouseX + "," + mouseY);
} 
}
 void mousePressed() {
 //reiniciar if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) { 
 frameCount = 0; 
 if (frameCount <= 0) { pantalla = 1; } } 
 
