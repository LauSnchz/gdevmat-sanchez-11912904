public class Walker
{
  public PVector walkerPosition = new PVector();
  
  float randomScale = random(10,35);
  
  int r = int (random(256));
  int g = int (random(256));
  int b = int (random(256));
  
  public void renderWalker()
  {
  float gaussian = randomGaussian();
  walkerPosition.y = random(-350, 350);
    
  float standardDeviation = 230;
  float mean = 0;
  
  walkerPosition.x = standardDeviation * gaussian + mean;
  }
  
  public void renderWalkerCircle()
  {
  
  
  fill(r, g, b, 130);
  noStroke();
  
  circle(walkerPosition.x, walkerPosition.y, randomScale);
  }
}
