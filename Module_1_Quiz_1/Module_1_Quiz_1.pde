void setup()
{
  size(1280, 720, P3D); // window size
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0,0,0,0, -1, 0); // sets camera/origin in the middle of the window
}

void draw ()
{
  background(0);
  
  drawCartesianPlane();
  drawQuadraticFunction();
  drawLinearFunction();
  drawSineWave();
}

void drawCartesianPlane()
{
  // cartesian plane
  strokeWeight(1);
  color white = color(255,255,255);
  fill(white);
  stroke(white);
  
  line(-300, 0, 300, 0);
  line(0, 300, 0, -300);
  
  // create the segments or points in the cartesian plane
  for (int i = -300; i <= 300; i+= 10)
  {
    line (i, -3, i, 3);
    line (-3, i, 3, i);
  }
}

void drawQuadraticFunction()
{ 
  color yellow = color (255,255,0);
  fill(yellow);
  stroke(yellow);
  
   /*
      f(x) = x^2 - 15x - 3
      Let x be 2, then y = -29
      Let x be -1, then y = 13
  */
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x, ((x * x) - (15 * x) -3), 5);
  }
}

void drawLinearFunction()
{
  color purple = color (128, 0 ,128);
  fill(purple);
  stroke(purple);
  
  /*
      f(x) = 5x + 30
      Let x be 2, then y = 40
      Let x be -1, y = 25
  */

  for (float x = - 300; x <= 300; x+= 0.01f)
  {
    circle(x, (5 * x) + 30, 6);
  }
}

void drawSineWave()
{
  color blue = color (0,0,255);
  fill(blue);
  stroke(blue);
  
  for(float x = -300; x <= 300; x+= 0.01f)
  {
   circle(x, sin(x/10)*50, 1); 
  }
}
