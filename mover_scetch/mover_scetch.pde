Mover m;

void setup() {
  fullScreen();
  //size(640, 480);
  m = new Mover();
}

void draw() {
  m.step();
  m.display();
}
