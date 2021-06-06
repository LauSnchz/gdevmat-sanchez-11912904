void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker(); // creates an instance of our walker class here in sketch
WalkerBiased biasedWalker = new WalkerBiased();

void draw()
{
  /* int rng = int(random(5)); // generates random number from 0 to 4 (use float to include decimals)
  println(rng); */
  
  myWalker.randomWalk(); // calls walker along with the position
  myWalker.render(); // renders walker
  
  biasedWalker.randomWalkBiased();
  biasedWalker.render();
}
