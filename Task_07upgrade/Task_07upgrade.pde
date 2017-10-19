void setup() {
  size(600,600);
}
float a = 0;
float p = 200;
float v = 200;
void draw() {
  float x = width / 2 + cos(a) * 200;
  float y = height / 2  + sin(a) * 200;
  background(30,144,255);
  fill(0,250,154);
  strokeWeight(5);
  rect(x,y,30,30);

  float b = width / 2 + cos(a) * p;
  float c = width / 2 + sin(a) * v;
  fill(255,0,0);
  ellipse(b,c,20,20);
  a = a + 0.03;
  p = p - 0.3;
  v = v - 0.3;
}
  