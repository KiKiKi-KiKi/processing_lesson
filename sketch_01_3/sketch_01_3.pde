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
  /*
  int[] getMousePos() {
    int[] pos = {mouseX, mouseY};
    return pos;
  }
  */
  void step() {
    float r = random(1);
    int mX = mouseX;
    int mY = mouseY;
    int stepX = int(random(3)) - 1;
    int stepY = int(random(3)) - 1;
    if(r < .3) {
      stepX = (mX > x)? 1:-1;
      stepY = (mY > y)? 1:-1;
    }
    x += stepX;
    y += stepY;
  }
}