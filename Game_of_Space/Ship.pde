class Ship {
  // member variables
  int x, y, r, liv;
  float speed, dir;
  color c;
  boolean alive;

  // constructor
  Ship(int x, int y, int r) {
    this.x=x;
    this.y=y;
    this.r=r;
    this.speed=5;
    alive=true;
  }

  //display method
  void display() {
    this.x=mouseX;
    this.y=mouseY;

    fill(0, 180, 250);
    triangle(x, y-48, x-5, y-38, x+5, y-38);
    fill(0, 250, 160);
    quad(x-5, y-38, x+5, y-38, x+15, y-10, x-15, y-10);
    fill(0, 180, 250);
    ellipse(x, y-22, 15, 22);
    fill(0, 250, 160);
    quad(x-25, y-10, x+25, y-10, x+40, y+5, x-40, y+5);
    fill(180, 0, 0);
    quad(x-40, y-15, x-25, y-15, x-25, y-10, x-40, y+5); 
    fill(180, 0, 0);
    quad(x+40, y-15, x+25, y-15, x+25, y-10, x+40, y+5);
  }


  // behavior methods
}
