public void setup() {
  size(500,500);
  background(255);
  rectMode(CENTER);
  fill((int)(Math.random()*100)+100,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
}

public void draw() {
  fractal(250,300,200);
}

public void fractal(int x, int y, int size) {
  if(size <= 5) {
    ellipse(x,y,size,size);
  } else {
    ellipse(x,y,size,size);
    fractal(x-size/2,y-size/2,size/2);
    fractal(x+size/2,y-size/2,size/2);
  }
}
