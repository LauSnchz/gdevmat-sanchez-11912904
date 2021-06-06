class Walker
{
 float x;
 float y;
 
 void render()
 {    
   int r = int (random(256));
   int g = int (random(256));
   int b = int (random(256));
   int a = int (random(50, 101));
   
   color random = color(r,g,b,a);
   fill(random);
   noStroke();
   
   circle(x, y, 20); 
 }
 
 void randomWalk()
 {
  int pos = int(random(8));
  
  if(pos == 0)
  {
   y+=5; // up
  }
  else if (pos == 1)
  {
   y-=5; // down
  }
  else if (pos == 2)
  {
    x+=5; //  right
  }
  else if (pos == 3)
 {
   x-=5; // left
 }
 else if (pos == 4)
 {
   y += 5; // upper right
   x += 5;
 }
 else if (pos == 5)
 {
   y += 5; // upper left
   x -= 5;
 }
 else if (pos == 6)
 {
   y -= 5; // down left
   x -= 5;
 }
 else if (pos == 7)
 {
  y -= 5; /// down right
  x += 5;
 }
 
 }
}
