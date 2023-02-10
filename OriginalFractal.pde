public void setup() {
  size(500,500);
  background(255);
  rectMode(CENTER);
  frameRate(3);
}

public void draw() {
  fractal(250,250,250);
}

public void fractal(int x, int y, int size) {
  fill((int)(Math.random()*80)+150,(int)(Math.random()*80)+150,(int)(Math.random()*80)+150);
  if(size <= 20) {
    rect(x,y,size,size);
  } else {
    rect(x,y,size,size);
    fractal(x-size/2,y-size/2,size/2);
    fractal(x-size/2,y+size/2,size/2);
    fractal(x+size/2,y-size/2,size/2);
    fractal(x+size/2,y+size/2,size/2);
  }
}
