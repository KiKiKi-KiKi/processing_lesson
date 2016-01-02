// random walker
Walker w;

void setup() {
  size(640, 360);
  noStroke();
  background(255); 
  w = new Walker();
}

void draw() {
  w.step();
  w.display();
}

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    float stepx = random(3) - 1;
    float stepy = random(3) - 1;
    x += stepx;
    y += stepy;
    if(x > width) {
      x = 0;
    } else if (x <= 0) {
      x = width;
    }
    if(y > height) {
      y = 0;
    } else if (y <= 0) {
      y = height;
    }
  }
}