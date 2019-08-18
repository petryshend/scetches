import java.util.Random;

class Mover {
  
  int x;
  int y;
  Random generator;
  
  Mover() {
    x = width /2;
    y = height / 2;
    generator = new Random();
  }
  
  void display() {
    stroke(0, 100);
    strokeWeight(3);
    point(x, y);
  }
  
  void step() {
    int dirx = int(random(3)) - 1;
    int diry = int(random(3)) - 1;
    
    float sd = 2;
    float mean = 5;
    float r = (float)generator.nextGaussian();
    float stepLength = r * sd + mean;
    
    int stepx = dirx * (int)stepLength;
    int stepy = diry * (int)stepLength;
    x += stepx;
    y += stepy;
  }
}
