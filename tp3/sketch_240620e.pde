PImage fotoIlusion;     //Ema Della Logggia no terminado
int cant = 4;          //Comision dos
int tam;
int squareSize;
color green = color(0, 255, 0); 
color blue = color(0, 0, 255); 
boolean useColor = false; 
float scaleFactor = 1;
boolean isKeyPressed = false;

void setup() {
  size(800, 400);
fotoIlusion= loadImage ("ilusion.jpg");
 tam = width/cant;
 }
void draw() {
  background(255);
  image(fotoIlusion,400,2);
  for(int x=0; x<4; x++){
  for(int y=0; y<4; y++){
    color squareColor;
    color circleColor;
    
    rect(x*100, y*100, 100, 100);
    
       // al presionar tecla
  if (isKeyPressed) {
    scaleFactor += 0.05;
  }
    if ((x + y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      ellipse(x * 100 + 100 / 2, y * 100 + 100 / 2, 46, 46);
      if (useColor) {
        float colorFactor = map(mouseX, 0, width, 0, 1);
        if ((x + y) % 2 == 0) {
          squareColor = lerpColor(green, blue, colorFactor);
          circleColor = lerpColor(blue, green, colorFactor);
        } 
        else {
          squareColor = lerpColor(blue, green, colorFactor);
          circleColor = lerpColor(green, blue, colorFactor);
        }
      }
      else {
        if ((x + y) % 2 == 0) {
          squareColor = color(0);
          circleColor = color(255);
        } else {
          squareColor = color(255);
          circleColor = color(0);
        }
 }
      
      fill(squareColor);
      rect(x * 100, y * 100, 100, 100);
      
      fill(circleColor);
      ellipse(x * 100 + 100 / 2, y * 100 + 100 / 2, 49, 49);
    }
  }
}

void mouseMoved() {
  // cambia la escala de color si apretas el mouse
  if (mousePressed) {
    useColor = true;
  }
}

void mousePressed() {
  // se activa el los colores al presionar el mouse
  useColor = true;
   scaleFactor = 1;
}

void mouseReleased() {
  // vuelven a los colores originales  al soltar el mouse
  useColor = false;
   isKeyPressed = false;
}
void keyPressed() {
  isKeyPressed = true;
 }
  
