Walker[] planets = new Walker[10];

void setup()
{
  size(1280, 720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i =0; i <10; i++)
  {
    planets[i] = new Walker();
    planets[i].position = new PVector(random(-600, 600), random(-320, 320));
    planets[i].r = random(1, 255);
    planets[i].g = random(1, 255);
    planets[i].b = random(1, 255);   
    planets[i].mass = random(2, 16);
    planets[i].scale = planets[i].mass * 10;
  }
}

void draw()
{
  background(0);
  
  for(Walker ball : planets)
  {
    ball.update();
    ball.render();
  }
  
  for(int i = 0; i < 10; i++)
  {
    for(int j =0; j < 10; j++)
    {
      if(i !=j)
      {
        planets[i].applyForce(planets[j].calculateAttraction(planets[i]));
      }
    }
  }
}
