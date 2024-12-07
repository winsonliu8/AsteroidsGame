class Asteroid extends Floater {
  protected double rotSpeed; //randomly + or -
 
  public Asteroid () {
    rotSpeed = 0.5;
    corners = 6;
    xCorners = new int [] {-20, 10, 18, 8, -20, -15};
    yCorners = new int [] {-12, -12, 0, 15, 12, 0};
    myColor = color (8, 255, 175);
    myCenterX = (int)(Math.random () * width);
    myCenterY = (int)(Math.random () * height);
    myXspeed = (double)(Math.random ()* 1) -0.5;
    myYspeed = (double)(Math.random ()* 1) -0.5;
    myPointDirection = (int)(Math.random () * 360);
  }

  public void move () {
    turn (rotSpeed);
    super.move(); //calls the method of the super class,
    //move method
  }
 

 
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
