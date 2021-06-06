class WalkerBiased
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
 
 void randomWalkBiased()
 {
  int pos = int(random(6));
  
  if(pos == 0 || pos == 1)
  {
   y+=5; // up
  }
  else if (pos == 2)
  {
   y-=5; // down
  }
  else if (pos == 3 || pos == 4)
  {
    x+=5; //  right
  }
  else if (pos == 5)
 {
   x-=5; // left
 }

 }
}
