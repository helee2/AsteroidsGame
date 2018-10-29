class Star
{
  public float starX,starY;
  public Star()
  {
    starX = (float)(Math.random() * 1380);
    starY = (float)(Math.random() * 1380);
  }
  public void show()
  {
    fill(255);
    ellipse(starX,starY,1,1);
  }
}
