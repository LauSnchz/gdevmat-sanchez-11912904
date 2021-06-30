class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(5, 8);
  
  void moveAndBounce()
  {
  // circle movement / add speed to the current position
  /*position.x+= speed.x;
  position.y += speed.y;*/
  position.add(speed);
    
  // bounce
  if((position.x > Window.right) || (position.x < Window.left))
  {
   speed.x *= -1; 
  }
  if((position.y > Window.top) || (position.y < Window.bottom))
  {
   speed.y *= -1; 
  }
  }
  
  void render()
  {
  // render the circle
  fill(0, 0, 205);
  circle(position.x, position.y, 50);
  }
}
