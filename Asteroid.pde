class Asteroid extends Floater
{
  int rotateSpeed;
  public Asteroid()
  {
    corners = 7;
    int[] xS = {-10,-16,-14,6,14,4,-2};
    int[] yS = {8,0,-2,-10,4,16,8};
    xCorners = xS;
    yCorners = yS;
    myColor = 130;
    myCenterX = (Math.random() * 1380);
    myCenterY = (Math.random() * 1050);
    myDirectionX = Math.random() - 0.5;
    myDirectionY = Math.random() - 0.5;
    myPointDirection = (Math.random() * 360);
    rotateSpeed = (int)(Math.random() * 11) - 5;
  }
  public void setX(int x)
  {
  myCenterX = x;
  }
   public int getX()
   {
     return (int)myCenterX;
   }
   public void setY(int y)
   {
     myCenterY = y;
   }
   public int getY()
   {
     return (int)myCenterY;
   }
   public void setDirectionX(double x)
   {
     myDirectionX = x;
   }
   public double getDirectionX()
   {
     return myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
   {
     return myDirectionY;
   }
   public void setPointDirection(int degrees)
   {
     myPointDirection = degrees;
   }
   public double getPointDirection()
   {
     return myPointDirection;
   }
   public void move()
   {
     super.move();
     turn(rotateSpeed);
   }
}
