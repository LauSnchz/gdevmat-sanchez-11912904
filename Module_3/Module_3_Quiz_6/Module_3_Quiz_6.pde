void setup()
{
  size(1080, 720, P3D);
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

lightSaber Saber = new lightSaber();

void draw()
{
  // println(mousePos().x + " " + mousePos().y);
  background(130);
  
  //PVector.mult(scalar) / mouse.multi
  //PVector.div(scalar) / mouse.div
  //magnitude = PVector.mag()
  //println(mouse.mag()); 
  //normalization = PVector.normalize()
  
  // Red Light
  Saber.renderRed();
  
  // White Light
  Saber.renderWhite();
  
  // Black Handle
  Saber.renderBlack();
}
