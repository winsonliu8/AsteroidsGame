class Spaceship extends Floater
{

  public Spaceship () {
    corners = 3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners [0] = -20;
    yCorners [0] = -15;
    xCorners [1] = 10;
    yCorners [1] = 0;
    xCorners [2] = -20;
    yCorners [2] = 15;

    myColor = 255;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 2;
    myYspeed = 2;
    myPointDirection = 0;
  }

  public void hyperspace () {
    ship.myXspeed = 0;
    ship.myYspeed = 0;
    ship.myCenterX = (int)(Math.random () * width);
    ship.myCenterY = (int)(Math.random () * height);
    ship.myPointDirection = (int)(Math.random () * 360);
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
