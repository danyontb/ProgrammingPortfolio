class Asteroid {
  // member variables
  int x, y, w, h;
  color c;
  float spd, r;
  // constructor
  Asteroid(int x, int y, int w, int h, float r, float spd) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.r=r;
    this.spd=spd;
  }
  // display method
  void display() {
    fill(180);
    ellipse(x, y, w, h);
  }
  // behavior method
  void move() {
    y += spd;
  }
  boolean reachedBottom() {
    if (y >= 850) {
      return true;
    } else {
      return false;
    }
  }
}
