//Barra espaciadora
void keyPressed() {
  if (key == ' ' && pantalla < 1) {
    pantalla = 1;
    contador = 0;
  }
}

void mouseClicked() {
  if (pantalla == 7 && mouseX > 220 && mouseX < 420 && mouseY > 300 && mouseY < 350) {
    pantalla = 0;
    contador = 0;
    opacidad = 255;
  }
}
