class Laser {

  int x, y;
  float speed;
  color c;
  boolean hit;


  Laser(int x, int y, float speed) {
    this.x=x;
    this.y=y;
    this.speed=speed;
  }

  void display() {
    fill(#FF8000);
    rect(x, y, 5, 20);
    rectMode(CENTER);
  }
  void fire() {
    y-=speed;
  }
  boolean reachedTop() {
    if (y < -50) {
      return true;
    } else {
      return false;
    }
  }
}
