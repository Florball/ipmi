PImage arteOptico;
int tamanoCelda = 10;

void setup() {
  size(800, 400);
  arteOptico = loadImage("32.png");
}

void draw() {
  background(255);

  image(arteOptico, 0, 0, 400, 400);

  fill(255);
  rect(400, 0, 400, 400);

  dibujarArteOptico(400, 0, 400, tamanoCelda);
}

void dibujarArteOptico(int x, int y, int tam, int tamCelda) {
  int cantidad = tam / tamCelda;
  for (int fila = 0; fila < cantidad; fila++) {
    for (int col = 0; col < cantidad; col++) {
      int capa = col;
      if (fila < capa) {
        capa = fila;
      } if (cantidad - 1 - col < capa) {
        capa = cantidad - 1 - col;
      }
      if (cantidad - 1 - fila < capa) {
        capa = cantidad - 1 - fila;
      }
      boolean esNegro;
      if (capa % 2 == 1) {
        esNegro = true;
      } else {
        esNegro = false;
      }
      if ((col >= cantidad / 2 && fila < cantidad / 2) ||
          (col < cantidad / 2 && fila >= cantidad / 2)) {
        esNegro = !esNegro;
      }
      if (esNegro) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x + col * tamCelda, y + fila * tamCelda, tamCelda, tamCelda);
    }
  }
  dibujarCentro(x, y, tam, tamCelda);
}

void dibujarCentro(int x, int y, int tam, int tamCelda) {
  int tamanoCentro = tamCelda * 4;
  pushMatrix();
  translate(x + tam / 2, y + tam / 2);
  noStroke();
  fill(255);
  rect(-tamanoCentro, -tamanoCentro, tamanoCentro, tamanoCentro);
  fill(0);
  rect(0, -tamanoCentro, tamanoCentro, tamanoCentro);
  rect(-tamanoCentro, 0, tamanoCentro, tamanoCentro);
  fill(255);
  rect(0, 0, tamanoCentro, tamanoCentro);
  popMatrix();
}
