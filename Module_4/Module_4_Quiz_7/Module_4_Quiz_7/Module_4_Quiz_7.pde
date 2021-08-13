//Walker myWalker = new Walker();
Walker[] testWalker = new Walker[100];

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y); 
}
  
void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //myWalker.acceleration = new PVector (-0.01, 0.1);
}

/* Vector Motion 101
  1. Add velocity to position
  2. Draw the object at the postion
*/

void draw()
{
  /*
  myWalker.update();
  myWalker.render();
  myWalker.checkEdges();
  */
  background(80);
  if(frameCount == 1)
  {
    
    // spawn the walkers randomly
    for(int i = 0; i <= 99; i++)
    {
     testWalker[i] = new Walker();
     testWalker[i].randomPosition(); 
     testWalker[i].render();
    }
  }
  background(80);
  // move the walkers towards the mouse
  for(int i = 0; i <= 99; i++)
  {
  testWalker[i].update();
  testWalker[i].render();
  PVector direction = PVector.sub(mousePos(), testWalker[i].position);
  
  testWalker[i].position.add(direction.normalize().mult(0.2));
  }
  
  
  
}
