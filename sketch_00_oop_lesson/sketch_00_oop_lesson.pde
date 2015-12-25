// learning OOP
// https://processing.org/tutorials/objects/ 
Car myCar1;
Car myCar2;

void setup() {
  size(400, 360);
  colorMode(HSB, height, height, height);
  noStroke();
  background(255);
  myCar1 = new Car(color(255,0,0), 0, 100, 2);
  myCar2 = new Car(color(0,0,255), 0, 10, 1);
}

void draw() {
  background(255);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
}

// Class
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  // Constructor
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }
  
  void drive() {
    xpos += xspeed;
    if(xpos > width) {
      xpos = 0;
    }
  }
}