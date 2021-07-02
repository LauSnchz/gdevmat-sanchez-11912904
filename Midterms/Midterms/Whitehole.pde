public class whiteHole
{
    public PVector holePosition = new PVector();
    
   public void createHolePosition()
  {  
    // whitehole random position
    holePosition.x = random(-630, 631);
    holePosition.y = random(-350, 351);
  }
  
  public void renderHole()
  {
    fill(255);
    circle(holePosition.x, holePosition.y, 50);
  }
}
