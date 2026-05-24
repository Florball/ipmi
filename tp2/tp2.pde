PImage bg1;
PImage logo;
PImage naruto1;
PImage naruto2;
PImage naruto3;
PImage naruto4;
PImage naruto5;
PImage konoha1;
PImage konoha2;
PImage konoha3;
PImage konoha4;
PImage equipoSiete1;
PImage equipoSiete2;
PImage equipoSiete3;
PImage bgChunin;
PImage chunin;
PImage kurama;
PImage bgKurama;
PImage jiraiya;
PImage kakashi;
PImage ichiraku;

int opacidad;
int velocidad;
int pantalla = 0;
int contador = 0;
int duracionPantalla = 300;

PFont fuenteTexto;

void setup() {
  size(640,480);

  cargarRecursos();

  opacidad = 255;
  velocidad = 6;
}

void draw() {
  //Color de fondo 
  background(0, 0, 66);
  
  cambiarPantallaPorContador();
  
  if (pantalla == 0) {
    inicio();
  } else if (pantalla == 1) {
    naruto();
  } else if (pantalla == 2) {
    kurama();
  } else if (pantalla == 3) {
    ichiraku();
  }  else if (pantalla == 4) {
    equipoSiete();
  } else if (pantalla == 5) {
    examenChunin();
  } else if (pantalla == 6) {
    entrenamiento();
  } else if (pantalla == 7) {
    fin();
  }
}
 
