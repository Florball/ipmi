void bajarOpacidad() {
  opacidad -= velocidad;
}

void cambiarPantallaPorContador() {
  if (pantalla >= 1 && pantalla < 7) {
    contador++;

    if (contador > duracionPantalla) {
      pantalla++;
      contador = 0;
    }
  }
}
