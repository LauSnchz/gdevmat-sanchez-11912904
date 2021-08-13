public class Walker 
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  
  public float mass = 1;
  public float scale = 15;
  
  public float r, g, b;
  
  public float gravitationalConstant = 1; // can be also known as G
  
  public Walker()
  {
    
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); // force accumulation
  }
  
  public void update()
  {
    //this.acceleration = PVector.random2d();
    this.velocity.add(this.acceleration); // velocity accumulation
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0); // resets acceleration every frame
  }
  
  public void render()
  {
   fill(r, g, b, 200);
   noStroke();
   circle(position.x, position.y, scale); 
  }
  
  public PVector calculateAttraction(Walker walker)
  {
    PVector force = PVector.sub(this.position, walker.position); // direction
    float distance = force.mag();
    force.normalize(); // normalize to accurately get direction
    
    distance = constrain(distance, 5, 25); // solves divide by 0 and divice by really tiny values
    
    float strength = (this.gravitationalConstant * this.mass * walker.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}