import java.util.Random;
Spray spray;

void setup() {
  size(640, 640);
  colorMode(HSB, 100);
  background(0, 0, 100);
  spray = new Spray();
}

void draw() {
  if(mouseButton == LEFT) {
    spray.step(mouseX, mouseY);
  }
}


class Spray {
  Random generator;
  int n;
  float sd;
  
  Spray() {
    generator = new Random();
    n = 100;
    sd = 10;
  }
  
  void display(float x, float y, float num) {
    noStroke();
    int hue = int( num * 25 + 50 );
    float s = num * -1 + 1.5;
    println(hue);
    fill(hue, 60, 100);
    ellipse(x, y, s, s);
  }
  
  void step(float mx, float my) {
    for(int i=0; i<n; i++) {
      float numX = (float)generator.nextGaussian();
      float numY = (float)generator.nextGaussian();
      float x = numX * sd + mx;
      float y = numY * sd + my;
      
      float numH = (float)generator.nextGaussian();
      this.display(x, y, numH);
    }
  }
}