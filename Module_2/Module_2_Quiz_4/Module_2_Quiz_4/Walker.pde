public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  
  // size/scale of the circle
  public float tc = 0;
  public float cw;
  
  // color of the circle
  
  float tr = 0;
  float tg = 0;
  float tb = 0;
    
  float r;
  float g;
  float b;
  
  void render()
  {
    cw = map(noise(tc), 0, 1, 5, 150);
    
    circle(x, y, cw);
    tc += 0.007;
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
  
  void colorWalker()
  {
    r = map(noise(tr), 0, 1, 0, 255);
    g = map(noise(tg), 0, 1, 0, 255);
    b = map(noise(tb), 0, 1, 0, 255);
    
    fill(r, g, b);
    
    tr += 0.09;
    tg += 0.08;
    tb += 0.07;
  }
}
