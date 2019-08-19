Mover m;

void setup() {
  //size(640, 480);
  frameRate(144);
  fullScreen();
  m = new Mover();
}

void draw() {
  m.step();
  m.display();
}
