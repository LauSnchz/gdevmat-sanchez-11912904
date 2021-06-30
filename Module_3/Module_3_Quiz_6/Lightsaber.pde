class lightSaber
{
  PVector mousePos()
  {
   float x = mouseX - Window.windowWidth / 2;
   float y = -(mouseY - Window.windowHeight / 2);
   return new PVector(x,y);
  }
  
  PVector mouse = mousePos();
  
  void renderRed()
  {
  strokeWeight(10);
  stroke(255, 0, 0);
  
  mouse.normalize().mult(500);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -(mouse.x), -(mouse.y)); 
  }
  
  void renderWhite()
  {
  strokeWeight(5);
  stroke(255);
  
  mouse.normalize().mult(500);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -(mouse.x), -(mouse.y));
  }
  
  void renderBlack()
  {
  strokeWeight(15);
  stroke(0);
  
  mouse.normalize().mult(100);
  
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -(mouse.x), -(mouse.y));
}
}
