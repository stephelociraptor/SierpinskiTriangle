public void setup()
{

  size (500,500);
  background(0);
}
public void draw()
{
  stroke(#FFFFFF);
  //fill (#FFB4B9);
  if (mousePressed){
    fill(random(255), random(255), random(255));
  }
  sierpinski(100,400,300);
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 10){
   triangle (x,y, x+len, y, x+ len/2, y-len);
 }
 else {
   sierpinski(x, y, len/2);
   sierpinski(x+len/2, y, len/2);
   sierpinski(x+ len/4,y - len/2, len/2);
 }
}
