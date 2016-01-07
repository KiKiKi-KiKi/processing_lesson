float t = 0;
void setup() {
  size(340, 340);
  // background(0);
  noStroke();
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  
  float n = noise(t);
  // map(a, b, c, d, e)  aを範囲b-cから別の範囲d-eへ変換する
  float x = map(n, 0, 1, 0, width);
  float nh = noise(t + 1000);
  float y = map(nh, 0, 1, 0, height);
  fill(200);
  ellipse(x, y, 16, 16);
  t += 0.01;
}