Ship ship;
Timer timer;
Powerup Powerup;
ArrayList<Asteroid> asteroids;
ArrayList<Laser> lasers;
ArrayList<Powerup> powerups;
int score = 0;
int z = int(random(20, 50));
int hp = 50;
int lvl=1;
int counter = 0;
void setup() {
  size(800, 800);
  background(0);
   //file = new SoundFile(this, "laserS.mp3");
  timer = new Timer (1000);
  lasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();
  powerups= new ArrayList<Powerup>();
  ship = new Ship(mouseX, mouseY, 3);
}
void draw() {
  background(0);
  ship.display();
  textSize(24);
  fill(255);
  text("Score: " + score, 50, 50);
  text("Health: " + hp, 300, 50);
   text("Level: " + lvl, 170, 50);
  if (score > 10) {
    lvl ++;
    if (lvl == 2){
       hp +=10;
    
    }
    score = 0;
  }
  if (hp <= 0) {
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    noLoop();
  }

  noCursor();
  ship = new Ship(mouseX, mouseY,50);
  if (timer.isFinished()) {
    asteroids.add(new Asteroid(int(random(width)), -50, z, int(random(40, 55)), z/2, 2));
    //powerups.add(new Powerup(int(random(width)), -50, z/2, int(random(40, 55)), z/2, 2));
    timer.start();
  }
  // Add/Remove lasers/asteroids
  for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).fire();
    lasers.get(i).display();
    if (lasers.get(i).reachedTop()) {
      lasers.remove(i);
    }
  }
  for (int i = 0; i<asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).display();
    if (asteroids.get(i).reachedBottom()) {
      asteroids.remove(i);
    }
    if (dist(asteroids.get(i).x, asteroids.get(i).y, mouseX, mouseY)<asteroids.get(i).r + ship.r) {
        asteroids.remove(asteroids.get(i));
        hp = hp - 10;
    }
  //for (int c=0;c<powerups.size();c++){
  //  powerups.get(c).move();
  //  powerups.get(c).display();
  //  if(powerups.get(
    //colision detection
    for (int j=0; j<lasers.size(); j++) {
      if (dist(lasers.get(j).x, lasers.get(j).y, asteroids.get(i).x, asteroids.get(i).y)<asteroids.get(i).r) {
        score ++;
        lasers.remove(lasers.get(j));
        asteroids.remove(asteroids.get(i));
        
      }
     
     
    }
    
    
  }
}

  



  void mousePressed() {
    lasers.add(new Laser(ship.x, ship.y, 20));
  }
