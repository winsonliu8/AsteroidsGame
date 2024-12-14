Spaceship ship = new Spaceship ();
Star [] sky = new Star [200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();

public void setup()
{
  size (400, 400);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    rocks.add (new Asteroid ());
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

  //show and move for asteroids
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
  }

  //collision detection for asteroids
  for (int i = 0; i < rocks.size(); i++) {
    float d = dist ((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 30) {
      rocks.remove(i);
      i--;
    }
  }

  //move and show for shots
  for (int i = 0; i < shots.size(); i++) {
    shots.get (i).move();
    shots.get (i).show();
  }

  //collision detection for if shots hit outside of screen for x coordinate
  for (int i = 0; i < shots.size(); i++) {
    //float a = dist ((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)width, (float)height);
    if (shots.get(i).getX() >= width || shots.get(i).getX() <= 0) {
        shots.remove (i);
        i--;
    }
  }
  
  //collision for y coordinates
  for (int i = 0; i < shots.size(); i++){
     if (shots.get(i).getY () >= height || shots.get(i).getY () <=0){
       shots.remove (i);
       i--;
     }
  }
  for (int i = 0; i < shots.size(); i++) {
    for (int b = 0; b < rocks.size(); b++) {
      float a = dist ((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rocks.get(b).getX(), (float)rocks.get(b).getY());
      if (a < 26) {
        shots.remove (i);
        rocks.remove (b);
        i--; 
        b--;
        break;
      }
    }
  }
}


public void keyPressed () {
  if (key == 'h') { //hyperspace
    ship.hyperspace();
  }
  if (key == 's') { //deccelerate
    ship.accelerate (-2);
  }
  if (key == 'w') { //accelerate
    ship.accelerate (2);
  }
  if (key == 'a') { //turn left
    ship.turn (-10);
  }
  if (key == 'd') { // turn right
    ship.turn (10);
  }
  if (key == ' ') { //shoot bullets
    shots.add (new Bullet (ship));
  }
}

