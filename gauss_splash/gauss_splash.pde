import java.util.Random;

Random generator;

void setup() {
  size(800, 600);
  background(255);
  generator = new Random();
}

void draw() {
  float sd = 100;
  float posX = (float)generator.nextGaussian();
  float meanX = width / 2;
  
  println(posX);
  
  float posY = (float)generator.nextGaussian();
  float meanY = height / 2;
  
  float x = sd * posX + meanX;
  float y = sd * posY + meanY;
  
  float colorNumR = (float)generator.nextGaussian();
  float colorNumG = (float)generator.nextGaussian();
  float colorNumB = (float)generator.nextGaussian();
  float csd = 50;
  float meanC = 127;
  float r = csd * colorNumR + meanC;
  float g = csd * colorNumG + meanC;
  float b = csd * colorNumB + meanC;

  noStroke();
  fill(r, g, b, 255);
  ellipse(x, y, 16, 16);
  
}
