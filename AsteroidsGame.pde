//your variable declarations here
Spaceship ship = new Spaceship ();
Star [] sky = new Star [200];

public void setup()
{
  size (400, 400);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
}
public void draw()
{
  background (0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  ship.show();
  ship.move();
}

public void keyPressed () {
  if (key == 'h') { //hyperspace
    ship.myXspeed = 0; 
    ship.myYspeed = 0; 
    ship.myCenterX = (int)(Math.random () * 400);
    ship.myCenterY = (int)(Math.random () * 400);
    ship.myPointDirection = (int)(Math.random () * 360);
  }
  
  if (key == 'w'){ //accelerate
    ship.accelerate (2);  
  }
  if (key == 'a'){ //turn left 
    ship.turn (-10); 
  }
  if (key == 'd'){ // turn right
    ship.turn (10);
  }
  
  
}
