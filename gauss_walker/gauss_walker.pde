Mover m;

void setup() {
  size(1034, 768);
  background(255);
  m = new Mover();
}

void draw() {
  m.step();
  m.display();
}
