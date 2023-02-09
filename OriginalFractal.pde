public void setup()
{
  size(400, 500);
  
}

public void draw()
{
  background(#0E2050);
  myFractal(120, 150, 165);
  strokeWeight(3);
  stroke(#9886CB);
  noFill();
  ellipse(120, 150, 220, 30);
  fill(118, 365, 335);
  noStroke();
  ellipse(120, 140, 164, 30);
}


public void myFractal (int x, int y, int siz)
{
  strokeWeight(siz/4);
  fill(200-siz/2, 200+siz/2, 150+siz+50);
  circle(x, y, siz);
  if (siz>2){
    myFractal(x+siz/2, y+siz, siz/2);
    myFractal(x+siz/2, y+siz, siz/3);
    myFractal(x+siz/2, y+siz, siz/3);
  }
}
