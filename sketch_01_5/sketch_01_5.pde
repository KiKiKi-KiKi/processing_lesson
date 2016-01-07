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
}

class Walker {
  float x;
  float y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display(float _x, float _y, boolean isLine) {
    stroke(0, 60);
    //point(x, y);
    if(isLine) {
      line(x, y, _x, _y);
    }
    fill(255, 255, 255);
    ellipse(_x, _y, 5, 5);
    x = _x;
    y = _y;
  }
  /*
  int[] getMousePos() {
    int[] pos = {mouseX, mouseY};
    return pos;
  }
  */
  void step() {
    boolean isLine = true;
    float _x = x;
    float _y = y;
    float r = random(1);
    int mX = mouseX;
    int mY = mouseY;
    
    float stepSize = random(0, 10);
    float stepX = random(-stepSize, stepSize);
    float stepY = random(-stepSize, stepSize);

    if(r < .3) {
      stepX = (mX > _x)? 1:-1;
      stepY = (mY > _y)? 1:-1;
    }
    _x += stepX;
    if(_x < 0) {
      _x = width;
      isLine = false;
    } else if(_x > width) {
      _x = 0;
      isLine = false;  
    }
    _y += stepY;
    if(_y < 0) {
      _y = height;
      isLine = false;  
    } else if(_y > height) {
      _y = 0;
      isLine = false;
    }
    this.display(_x, _y, isLine);
  }
}