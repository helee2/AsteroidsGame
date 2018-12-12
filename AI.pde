class AI extends Floater
{
  public AI()
  {
    corners = 3;
    int[] xS = {-5,-5,5};
    int[] yS = {5,-5,0};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = (Math.random() * 1380);
    myCenterY = (Math.random() * 1050);
    myDirectionX = (Math.random() * 7) - 3;
    myDirectionY = (Math.random() * 7) - 3;
    myPointDirection = (int)(Math.random() * 360);   
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
     public void shoot()
     {
       
     }
}
