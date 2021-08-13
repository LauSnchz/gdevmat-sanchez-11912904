public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 8;
 public float randomScale = random(12, 21);
 
 public Walker()
 {
   
 }
 
 PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y); 
}
 
 public void update()
 {
   this.acceleration = PVector.sub(mousePos(), position);
   this.acceleration.setMag(0.2);
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
 }
 
 public void randomPosition()
 {
  float gaussian = randomGaussian();
  position.y = random(-350, 350);
    
  float standardDeviation = 230;
  float mean = 0;
  
  position.x = standardDeviation * gaussian + mean;
 }
 
 public void render()
 {
  circle(position.x, position.y, randomScale);
 }
 
 /*
 public void checkEdges()
 {
   if (this.position.x > Window.right)
   {
    this.position.x = Window.left; 
   }
   else if (this.position.x < Window.left)
   {
    this.position.x = Window.right; 
   }
   
   if (this.position.y > Window.top)
   {
    this.position.y = Window.bottom; 
   }
   else if (this.position.y < Window.bottom)
   {
    this.position.y = Window.top; 
   }
 }*/
 
}
