//Walker walker = new Walker();
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector (0, -0.4);
Walker[] testWalker = new Walker[10];

void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);

  for(int i = 0; i < 10; i++)
  {
    testWalker[i] = new Walker();
    testWalker[i].r = random(1, 255);
    testWalker[i].g = random(1, 255);
    testWalker[i].b = random(1, 255);
  }
  
}

void draw()
{
  background(80); 
  
  for(int i =0; i < 10; i++)
  {
    testWalker[i].render();
    testWalker[i].update();
    testWalker[i].applyForce(wind);
    testWalker[i].applyForce(gravity);
    
    // Newton's Third Law of Motion
    if(testWalker[i].position.y <= Window.bottom)
    {
      testWalker[i].position.y = Window.bottom;
      testWalker[i].velocity.y *= -1;
    }
    if(testWalker[i].position.x >= Window.right)
    {
      testWalker[i].position.x = Window.right;
      testWalker[i].velocity.x *= -1;
    }
  }
  
  /*walker.render();
  walker.update();
  walker.applyForce(wind);
  walker.applyForce(gravity);
  
  if(walker.position.y <= Window.bottom)
  {
    walker.velocity.y *= -1;
  }
  
  if(walker.position.x > Window.right)
  {
    walker.velocity.x *= -1;
  }*/ 
}
