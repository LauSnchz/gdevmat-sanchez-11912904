Walker[] walker = new Walker[10];
PVector summerBreeze = new PVector(0.1, 0);
Liquid ocean = new Liquid( 0, -100, Window.right, Window.bottom, 0.1f);

void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posX = 0;
  
  for(int i = 0; i < 10; i++)
  {
    posX = 2* (Window.w / 10) * (i - 5);
    
    walker[i] = new Walker();
    walker[i].position = new PVector(posX, 200);
    walker[i].mass = random(2, 10);
    walker[i].scale = walker[i].mass * 10;
    walker[i].r = random(1, 255);
    walker[i].g = random(1, 255);
    walker[i].b = random(1, 255);
  }
}

void draw()
{
  background(255); 
 
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
 
  ocean.render();
  
  for(Walker beachBall : walker)
  {
    PVector gravity = new PVector(0, -0.15 * beachBall.mass);
    beachBall.render();
    beachBall.update();
    beachBall.applyForce(gravity);
    beachBall.applyForce(summerBreeze);
    
    PVector ballFriction = beachBall.velocity.copy();
    beachBall.applyForce(ballFriction.mult(-1).normalize().mult(frictionMagnitude)); // applied friction to walker
    
    if(ocean.isCollidingWith(beachBall))
    {
      summerBreeze = new PVector(0, 0);
      PVector dragForce = ocean.calculateDragForce(beachBall);
      beachBall.applyForce(dragForce);
    }
    
    if(beachBall.position.y <= Window.bottom)
    {
      beachBall.position.y = Window.bottom;
      beachBall.velocity.y *= -1;
    }
    
    if(beachBall.position.x >= Window.right)
    {
      beachBall.position.x = Window.right;
      beachBall.velocity.x *= -1;
    }
  }
}

// drag force aka "viscous" force, air and fluid resistance
