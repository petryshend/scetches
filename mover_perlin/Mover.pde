class Mover {
  
  int x;
  int y;
  float t = 1;
  float tIncr = 0.01;
  
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
    
    float n = noise(t);
    t += tIncr;
    float step = map(n, 0, 1, 0, 10);
    
    stepx = stepx * (int)step;
    stepy = stepy * (int)step;
    x += stepx;
    y += stepy;
  }
}
