// Video: https://youtu.be/IUAjJvQ5tI4

PImage arteOptico;
int modo;
int tamanoCelda;
boolean invertirColores;
int variacionCentro;
float rotacionCentro;


void setup() {
  size(800, 400);
  arteOptico = loadImage("32.png");
  reiniciar();
}


void draw() {
  background(255);
  image(arteOptico, 0, 0, 400, 400);
  dibujarArteOptico(400, 0, 400, tamanoCelda);
}


void reiniciar() {
  modo = 0;
  tamanoCelda = 10;
  invertirColores = false;
  variacionCentro = 0;
  rotacionCentro = 0;
}
