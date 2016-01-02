int[] rondomCounts;

void setup() {
  size(640, 240);
  rondomCounts = new int[20];
  fill(175);
}

void draw() {
  background(255);
  
  int index = int(random(rondomCounts.length));
  rondomCounts[index]++;
  
  stroke(0);
  fill(175);
  int w = width/rondomCounts.length;
  for(int x = 0; x <rondomCounts.length; x++) {
    println(rondomCounts);
    rect(x*w, height-rondomCounts[x], w-1, rondomCounts[x]);
  }
}