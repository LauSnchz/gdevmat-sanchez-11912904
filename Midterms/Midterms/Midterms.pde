void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(0);
}

whiteHole Hole = new whiteHole();
Walker[] randomWalker = new Walker[100];

void draw()
{   
  if(frameCount%300 == 0 || frameCount == 1)
  {
   //refresh the screen
   background(0);
  // create whitehole
  Hole.createHolePosition();
  
   // spawn the walkers
  for(int i = 0; i <= 99; i++)
  {  
   randomWalker[i] = new Walker();
   randomWalker[i].renderWalker();
   randomWalker[i].renderWalkerCircle();
  }
 }
 
 // move the matters to the blackhole
  background(0);
  for(int i = 0; i <= 99; i++)
  {
   randomWalker[i].renderWalkerCircle();
   PVector direction = PVector.sub(Hole.holePosition, randomWalker[i].walkerPosition);
   
   randomWalker[i].walkerPosition.add(direction.normalize().mult(5));
  }
  Hole.renderHole();
}
