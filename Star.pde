class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private color myColor;
  public Star (){
    myX = (int)(Math.random () * 400);
    myY = (int)(Math.random () * 400);
    myColor = color((int)(Math.random () * 255), (int)(Math.random () * 255), (int)(Math.random () * 255));
  }
  public void show(){
    fill (myColor);
    stroke (myColor);
    ellipse (myX, myY, 3, 3);
  }
}
