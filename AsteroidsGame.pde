Spaceship bob = new Spaceship();
ArrayList<Asteroid> john;
Star[] sue;
Asteroid joe;
ArrayList<Bullet> bill;
int numAsteroids = 50;
boolean keyW = false;
boolean keyA = false;
boolean keyD = false;
int shootTime = 0;
int points = 0;
public void setup()
{
  size(1380, 1050);
  frameRate(120);
  sue = new Star[100];
  john = new ArrayList<Asteroid>();
  bill = new ArrayList<Bullet>();
  for (int i = 0; i < sue.length; i++)
  {
    sue[i] = new Star();
  }
  for (int i = 0; i < numAsteroids; i++)
  {
    john.add(new Asteroid(bob));
  }
  textAlign(CENTER);
  textSize(32);
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < bill.size(); i++)
  {
    bill.get(i).move();
    bill.get(i).show();
  }
  for (int i = 0; i < sue.length; i++)
  {
    sue[i].show();
  }
  for (int i = 0; i < numAsteroids; i++)
  {
    john.get(i).move();
    john.get(i).show();
    if (dist(john.get(i).getX(), john.get(i).getY(), bob.getX(), bob.getY()) < 20)
      noLoop();
    for (int j = 0; j < bill.size(); j++)
    {
      if (dist(john.get(i).getX(), john.get(i).getY(), bill.get(j).getX(), bill.get(j).getY()) < 20)
      {
        john.remove(i);
        bill.remove(j);
        john.add(new Asteroid(bob));
        points += 10;
        break;
      }
    }
  }
  if (keyW == true)
    bob.accelerate(0.025);
  if (keyA == true)
    bob.turn(-2);
  if (keyD == true)
    bob.turn(2);
  pointCounter();
}
public void pointCounter()
{
  fill(255); 
  text("Points: " + points, 100, 990);
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
  while (keyCode == 32 && shootTime < 1)
  {
    bill.add(new Bullet(bob));
    shootTime++;
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

  if (keyCode == 32)

    shootTime = 0;
}
