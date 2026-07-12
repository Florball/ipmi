// Dibujo del arte optico y definicion del color de cada celda.
void dibujarArteOptico(int x, int y, int tamArte, int tamCelda) {
  int cantidad = tamArte / tamCelda;
  noStroke();

  for (int fila = 0; fila < cantidad; fila++) {
    for (int col = 0; col < cantidad; col++) {

      // Calcula la distancia de la celda al borde mas cercano.
      int distanciaBorde = col;

      if (fila < distanciaBorde) {
        distanciaBorde = fila;
      }

      if (cantidad - 1 - col < distanciaBorde) {
        distanciaBorde = cantidad - 1 - col;
      }

      if (cantidad - 1 - fila < distanciaBorde) {
        distanciaBorde = cantidad - 1 - fila;
      }

      // Alterna blanco y negro segun la distancia al borde
      boolean esNegro;

      if (distanciaBorde % 2 == 1) {
        esNegro = true;
      } else {
        esNegro = false;
      }

      // Invierte el patron en dos cuadrantes opuestos.
      if ((col >= cantidad / 2 && fila < cantidad / 2) ||
          (col < cantidad / 2 && fila >= cantidad / 2)) {
        esNegro = !esNegro;
      }

      // Invierte todos los colores en la interaccion
      if (invertirColores) {
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

  dibujarCentro(x, y, tamArte, tamCelda);
}

// Dibuja y transforma los cuatro cuadrados del centro de la obra.
void dibujarCentro(int x, int y, int tamArte, int tamCelda) {
  int tamanoCentro = tamCelda * 4 + variacionCentro;

  pushMatrix();
  translate(x + tamArte / 2, y + tamArte / 2);
  rotate(rotacionCentro);

  fill(255);
  rect(-tamanoCentro, -tamanoCentro, tamanoCentro, tamanoCentro);

  fill(0);
  rect(0, -tamanoCentro, tamanoCentro, tamanoCentro);

  fill(0);
  rect(-tamanoCentro, 0, tamanoCentro, tamanoCentro);

  fill(255);
  rect(0, 0, tamanoCentro, tamanoCentro);

  popMatrix();
}
