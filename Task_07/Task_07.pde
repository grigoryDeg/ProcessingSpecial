void setup() {
  size(600,600);
}
float a = 0;
void draw() {
  float x = width / 2 + cos(a) * 200;
  float y = height / 2  + sin(a) * 200;
  background(30,144,255);
  ellipse(x,y,25,25);
  a = a + 0.01;
}