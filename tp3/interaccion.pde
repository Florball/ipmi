// Cambia el estado de la obra con cada clic
void mouseClicked() {
  if (mouseX >= 400 && mouseX < 800 && mouseY >= 0 && mouseY < 400) {
    modo++;


    if (modo == 1) {
      tamanoCelda = 10;
      invertirColores = true;
      rotacionCentro = 0;
      variacionCentro = 0;

    
    } else if (modo == 2) {
      tamanoCelda = 10;
      invertirColores = false;
      rotacionCentro = 0.79;
      variacionCentro = 0;

    
    } else if (modo == 3) {
      tamanoCelda = calcularTamanoCelda(600, 200);
      invertirColores = false;
      rotacionCentro = 0;
      variacionCentro = 0;


    } else if (modo == 4) {
      tamanoCelda = 10;
      invertirColores = false;
      rotacionCentro = 0;
      variacionCentro = int(random(-8, 9));

 
    } else {
      reiniciar();
    }
  }
}
