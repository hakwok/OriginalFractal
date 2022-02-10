public void setup(){
  size(500, 500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  fractal(250,250,500);
  stroke(250, 0, 0);
  rect(250, 200, 40, 600);
}
public void fractal(int x, int y, int siz){
  noFill();
  stroke(200, 200, 50);
  rect(x, y, siz, siz*2);
  rect(x+siz/4, y, siz, siz);
  rect(x-siz/4, y, siz, siz);
  rect(x, y-siz/4, siz, siz);
  rect(x, y+siz/4, siz, siz);
  if(siz > 10){
    fractal(x, y, siz/2);
  }
}
