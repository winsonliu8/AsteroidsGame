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
  public void setXspeed (double x){
    myXspeed = x;
  }
  public void setYspeed (double y){
    myYspeed = y;
  }
  public void setCenterX (double x){
    myCenterX = x;
  }
  public void setCenterY (double y){
    myCenterY = y;
  }
  public void setPointDirection (double d){
    myPointDirection = d;
  }
 
   public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }

 
}
