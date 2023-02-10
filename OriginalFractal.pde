public void setup() {
  size(500,500);
  background(255);
  rectMode(CENTER);
  frameRate(5);
}

public void draw() {
  fractal(250,310,275);
}

public void fractal(int x, int y, int size) {
  fill((int)(Math.random()*100)+100,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
  if(size <= 5) {
    ellipse(x,y,size,size);
  } else {
    ellipse(x,y,size,size);
    fractal(x-size/2,y-size/2,size/2);
    fractal(x+size/2,y-size/2,size/2);
  }
}
