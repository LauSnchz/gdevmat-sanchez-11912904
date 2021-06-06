void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 background(255);
}

void draw()
{

  float gaussian = randomGaussian();
  float y = random(-720, 721);
  
  float standardDeviation = 150;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  
  // scale/thickness
  float scaleStandardDeviation = 50;
  float scaleMean = 10;
  
  float gaussianScale = randomGaussian();
  
  float scale = scaleStandardDeviation * gaussianScale + scaleMean;
  
  noStroke();
  
  // colors
  int r = int (random(256));
  int g = int (random(256));
  int b = int (random(256));
  int a = int (random(10, 101));
  
  fill(r, g, b, a);
  circle(x, y, scale);
  
  // Bonus
  if(frameCount%300 == 0)
  {
    clear();
    background(255);
  }
  println(frameCount); 
}
