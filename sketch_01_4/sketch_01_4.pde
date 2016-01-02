import java.util.Random;
Random generator;

void setup() {
  size(640,340);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  // 標準偏差
  float sd = 60;
  float lenge = 320;
  
  float x = num * sd + lenge;
  
  num = (float) generator.nextGaussian();
  lenge = 180;
  float y = num * sd + lenge;
  
  noStroke();
  fill(255, 10);
  /*
  int seed = int(255/2);
  int r = int(num * seed + seed);
  int g = int(num * seed + seed);
  int b = int(num * seed + seed);
  stroke(r, g, b);
  noFill();
  */
  ellipse(x, y, 16, 16);
}