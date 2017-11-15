float r;
float g;
float b;
float a;
float diam;
float x;
float y;
void setup() {
  fullScreen();
}
void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(1000000,10000000);
  x = random(width);
  y = random(height);
  
 noStroke();
 fill(r,g,b);
 ellipse(x,y, diam, diam);
}