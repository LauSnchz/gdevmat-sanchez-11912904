//PVector gravity = new PVector (0, -0.4);
Walker[] testWalker = new Walker[8];

int posY = 0;
void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < 8; i++)
  {
    posY = 2 * (Window.h / 8) * (i-4);

    testWalker[i] = new Walker();
    testWalker[i].position = new PVector(-500, posY);
    testWalker[i].mass = 9 - (i);
    testWalker[i].scale = testWalker[i].mass * 15;
    testWalker[i].r = random(1, 255);
    testWalker[i].g = random(1, 255);
    testWalker[i].b = random(1, 255);
    
    testWalker[i].mew = 0.01f;// coeffictient of friction. The higher the value of mew, the higher the friction
  }
}

void draw()
{
  background(80); 
  line(0, -360, 0, 360);
  
  for(Walker ball : testWalker)
  { 
    PVector acceleration = new PVector(0.2, 0);
    // Friction = -1 * mew * NormalForce * velocity
    
    if(ball.position.x >= 0)
    {
      ball.mew = 0.4f;
    }
    
    ball.normal = 1;
    float frictionMagnitude = ball.mew * ball.normal;
    PVector friction = ball.velocity.copy(); // copy copies the current velocity of our walker
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    ball.applyForce(friction);
    
    //PVector gravity = new PVector (0, -0.15 * ball.mass);
    ball.render();
    ball.update();
    ball.applyForce(acceleration);
    //ball.applyForce(gravity);
    
    // Newton's Third Law of Motion
    if(ball.position.y <= Window.bottom)
    {
      ball.position.y = Window.bottom;
      ball.velocity.y *= -1;
    }
    if(ball.position.x >= Window.right)
    {
      ball.position.x = Window.right;
      ball.velocity.x *= -1;
    }
  }
}

void mousePressed()
{
  reset();
}

void reset()
{
  for(int i = 0; i < 8; i++)
  {
    posY = 2 * (Window.h / 8) * (i-4);

    testWalker[i].position = new PVector(-500, posY);
    testWalker[i].r = random(1, 255);
    testWalker[i].g = random(1, 255);
    testWalker[i].b = random(1, 255);
    
    testWalker[i].mew = 0.01f; 
  }
}
