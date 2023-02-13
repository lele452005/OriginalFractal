public void setup()
{
  size(400, 500);
  
}

public void draw()
{
  background(#0E2050);
  myFractal(200, 250, 200);
  strokeWeight(3);
  stroke(#9886CB);
  noFill();
  fill(118, 365, 335);
  noStroke();
}


public void myFractal (int x, int y, int siz)
{
  strokeWeight(siz/4);
  fill(200-siz/2, (int)Math.random()*200+siz/2, 150+siz+20);
  ellipse(x, y, siz, siz);
  if (siz>2){
    myFractal(x, y, siz/2);
    myFractal(x, y, siz/3);
    myFractal(x-siz, y-siz, siz/2);
    myFractal(x+siz, y-siz, siz/2);
    myFractal(x+siz, y+siz, siz/2);
    myFractal(x-siz, y+siz, siz/2);
  }
}
