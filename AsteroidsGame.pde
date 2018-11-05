Spaceship bob = new Spaceship();
Asteroid[] john;
Star[] sue;
boolean keyW = false;
boolean keyA = false;
boolean keyD = false;
boolean keyE = false;
public void setup() 
{
  size(1380, 1050);
  frameRate(120);
  sue = new Star[100];
  john = new Asteroid[20];
  for(int i = 0; i < sue.length; i++)
  {
    sue[i] = new Star();
  }
  for(int i = 0; i < john.length; i++)
  {
    john[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for(int i = 0; i < john.length; i++)
  {
    john[i].move();
    john[i].show();
  }
  for(int i = 0; i < sue.length; i++)
  {
    sue[i].show();
  }
  if (keyW == true)
    bob.accelerate(0.025);
  if (keyA == true)
    bob.turn(-2);
  if (keyD == true)
    bob.turn(2);
  if (keyE == true)
  {
    bob.setX((int)(Math.random() * 1380));
    bob.setY((int)(Math.random() * 1050));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
  }
}
public void keyPressed()
{
  if (key == 'w')

    keyW = true;
    
  if (key == 'a')
  
    keyA = true;
    
  if (key == 'd')

    keyD = true;
  
  if (key == 'e')

    keyE = true;
}

public void keyReleased()
{
  if (key == 'w')
  
    keyW = false;

  if (key == 'a')

    keyA = false;

  if (key == 'd')
  
    keyD = false;
    
  if (key == 'e')
  
    keyE = false;
}
