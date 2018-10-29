Spaceship bob = new Spaceship();
Star[] sue;
public void setup() 
{
  size(1380, 1050);
  sue = new Star[100];
  for(int i = 0; i < sue.length; i++)
  {
    sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for(int i = 0; i < sue.length; i++)
  {
    sue[i].show();
  }
}
public void keyPressed()
{
  if (key == 'a')
  
    bob.turn(-5);
    
  if (key == 'd')

    bob.turn(5);

  if (key == 'w')

    bob.accelerate(0.25);

  if (key == 'e')
  {
    bob.setX((int)(Math.random() * 1380));
    bob.setY((int)(Math.random() * 1050));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
  }
}
