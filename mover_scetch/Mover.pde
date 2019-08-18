class Mover {
  
  int x;
  int y;
  
  Mover() {
    x = width /2;
    y = height / 2;
  }
  
  void display() {
    stroke(0, 50);
    strokeWeight(2);
    point(x, y);
  }
  
  void step() {
    int stepx = int(random(3)) - 1;
    int stepy = int(random(3)) - 1;
    
    stepx = stepx * 5;
    stepy = stepy * 5;
    x += stepx;
    y += stepy;
  }
}
