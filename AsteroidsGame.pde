Spaceship bob = new Spaceship();
public void setup() 
{
  size(800, 800);
}
public void draw() 
{
  bob.show();
}
public void keyPressed()
{
  if (key == 'a')
  {
    bob.myPointDirection = bob.myPointDirection + 0.5;
  }
  if (key == 'd')
  {
    bob.myPointDirection = bob.myPointDirection - 0.5;
  }
  if (key == 'w')
  {
    bob.myPointDirection = bob.myPointDirection - 0.5;
  }
}
