class Bullet extends Floater {
  public Bullet (Spaceship ship) {
    myColor = #FC1212;
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate (6);
  }
  public void show() {
    noStroke();
    fill (myColor);
    ellipse ((float)myCenterX, (float)myCenterY, 7, 7);
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
