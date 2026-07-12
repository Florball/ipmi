// Calcula un tamaño de celda segun la distancia entre el mouse y el centro.
int calcularTamanoCelda(int centroX, int centroY) {
  float distancia = dist(mouseX, mouseY, centroX, centroY);
  float valor = map(distancia, 0, 300, 0, 3);

  int nuevoTamano;

  if (valor < 1) {
    nuevoTamano = 8;
  } else if (valor < 2) {
    nuevoTamano = 10;
  } else {
    nuevoTamano = 16;
  }

  return nuevoTamano;
}
