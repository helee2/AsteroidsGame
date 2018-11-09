Spaceship bob = new Spaceship();
ArrayList<Asteroid> john;
Star[] sue;
Asteroid joe;
int numAsteroids = 20;
boolean keyW = false;
boolean keyA = false;
boolean keyD = false;
public void setup() 
{
  size(1380, 1050);
  frameRate(120);
  sue = new Star[100];
  john = new ArrayList<Asteroid>();
  for (int i = 0; i < sue.length; i++)
  {
    sue[i] = new Star();
  }
  for (int i = 0; i < 20; i++)
  {
    john.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < numAsteroids; i++)
  {
    john.get(i).move();
    john.get(i).show();
    if (dist(john.get(i).getX(),john.get(i).getY(),bob.getX(),bob.getY()) < 20)
    {
      john.remove(i);
      numAsteroids = numAsteroids - 1;
    }
  }
  for (int i = 0; i < sue.length; i++)
  {
    sue[i].show();
  }
  if (keyW == true)
    bob.accelerate(0.025);
  if (keyA == true)
    bob.turn(-2);
  if (keyD == true)
    bob.turn(2);
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
  {
    bob.setX((int)(Math.random() * 1380));
    bob.setY((int)(Math.random() * 1050));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random() * 360));
  }
}

public void keyReleased()
{
  if (key == 'w')

    keyW = false;

  if (key == 'a')

    keyA = false;

  if (key == 'd')

    keyD = false;
}
