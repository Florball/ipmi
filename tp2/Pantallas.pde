void inicio() {
  // Imagen y opacidad
  tint(255, opacidad);
  image(bg1, 0, 0, 640, 480);
  noTint();
  
  //Texto
  fill(255);
  textFont(fuenteTexto);

  if (opacidad > 140) {
    bajarOpacidad();
    } else {
    fill(0, 0, 66);
    rect(0, 420, 640, 40);
        
    //Texto para iniciar la presentacion
    fill(255);
    textAlign(LEFT);
    text("¡PRESIONA ESPACIO PARA CONTINUAR!", 80, 446);
      
    //Imagenes
    image(logo, 200, 50, 260, 110);
    image(naruto1, 200, 147, 272, 272);
  }
}

void naruto() {
  image(konoha2, 0, 0, width, height);
  
  textSize(16);
  textoAnimado("Naruto Uzumaki vive en la Aldea Oculta entre las Hojas. Es ruidoso, travieso y muchas veces se siente solo. Aunque la aldea no siempre lo acepta, Naruto sueña con convertirse en Hokage: el ninja más respetado de Konoha.");
}

void kurama() {
  image(bgKurama, 0, 0, width, height);

  // Kurama entra desde la izquierda
  int xKurama = -500 + contador * 16;

  if (xKurama > 40) {
    xKurama = 40;
  }
  image(kurama, xKurama, 32, 463, 347);


  // Naruto entra desde la derecha
  int xNaruto = 700 - contador * 12;

  if (xNaruto < 380) {
    xNaruto = 380;
  }
  image(naruto2, xNaruto, 218, 214, 159);


  textoAnimado("Dentro de Naruto vive Kurama, el Zorro de Nueve Colas, una criatura que años atrás atacó la aldea. Por eso muchos adultos lo miran con temor, aunque Naruto no haya elegido cargar con ese poder.");
}

void ichiraku() {
  image(ichiraku, 0, 0, width, height);
  image(naruto4, 28, 154, 204, 216);
  textoAnimado("En sus tiempos libre va a Ichiraku, que no es solo un puesto de ramen. Es uno de los pocos lugares donde puede sonreír sin sentirse juzgado. Entre tazones calientes, bromas y hambre infinita, se convierte en un refugio para el.");
}

void equipoSiete() {
  image(konoha4, 0, 0, width, height);
  image(equipoSiete1, 50, 24, 142, 156);
  image(equipoSiete2, 441, 24, 150, 156);
  image(equipoSiete3, 207, 24, 218, 156);
  image(chunin, 224, 160, 193, 255);
  textoAnimado("Naruto empieza su camino ninja junto a Sakura, Kakashi y Sasuke. Entre misiones, peleas y momentos inesperados, el Equipo 7 se convierte en su primera familia ninja. Con ellos aprende que la fuerza no depende solo de los jutsus.");
}

void examenChunin() {
  image(bgChunin, 0, 0, width, height);
  image(naruto3, 26, 186, 213, 284);
  textoAnimado("En los Exámenes Chunin, Naruto enfrenta rivales más fuertes, pruebas difíciles y combates que ponen a prueba su valor. Allí deja de ser visto solo como el chico problemático de la aldea. Y aunque puede caer, sabe levantarse.");
}

void entrenamiento() {
  image(konoha3, 0, 0, width, height);
  image(kakashi, 0, 117, 263, 263);
  image(naruto5, 224, 183, 188, 197);
  image(jiraiya, 420, 148, 194, 297);
  textoAnimado("Naruto entrena con maestros que ven en él algo que otros no ven. Kakashi le enseña disciplina y trabajo en equipo. Jiraiya le ayuda a entender su poder y a confiar más en sí mismo. Poco a poco, Naruto transforma su terquedad en fuerza.");
}

void fin() {
  image(konoha1, 0, 0, width, height);
  
  fill(255);
  textAlign(CENTER);
  textSize(28);
  text("Fin de la presentación", width/2, 280);

  // Boton reiniciar
  rect(220, 300, 200, 50, 10);

  fill(0);
  textSize(18);
  text("REINICIAR", width/2, 320);
}


//Funcion para movimiento 
void textoAnimado(String texto) {
  int yTexto = 520 - contador * 2;

  if (yTexto < 385) {
    yTexto = 385;
  }

  fill(0, 180);
  rect(40, 370, 560, 96);

  fill(255);
  textAlign(CENTER);
  textSize(16);
  textLeading(20);
  text(texto, 60, yTexto, 520, 80);
}
  
