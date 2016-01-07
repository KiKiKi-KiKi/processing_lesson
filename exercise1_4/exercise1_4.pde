import java.util.Random;
Spray spray;

void setup() {
  size(640, 640);
  spray = new Spray();
  background(255, 255, 255);
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
  
  void display(float x, float y) {
    stroke(0);
    point(x, y);
  }
  
  void step(float mx, float my) {
    for(int i=0; i<n; i++) {
      float numX = (float)generator.nextGaussian();
      float numY = (float)generator.nextGaussian();
      float x = numX * sd + mx;
      float y = numY * sd + my;
      this.display(x, y);
    }
  }
}