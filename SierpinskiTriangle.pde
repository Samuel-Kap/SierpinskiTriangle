
int fz=20;
public void setup()
{
  
  background(192);
  size(500,500);
}
public void draw()
{
  fill(192);
  rect(500,500,500,500);
  sierpinski(0,0,fz);
  
}
void mouseClicked() {
fz=fz*(fz/10);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
 if(len < 20)
  {
    fill(111);
     triangle(x,500-y,  x+(len/2),  500-(y+len),   len+x, 500-y);
  }
  else
  {
    fill(111);
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y+(len/2),len/2);
  }
}
