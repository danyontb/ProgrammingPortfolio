//global variables
int xspeed, yspeed;
int xpos, ypos, wdth, ht;
// Runs one time
void setup(){
  size(400, 400);
  background(0);
  xspeed = 3;
  yspeed = 5;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos= height/2;
}
//runs on a loop
void draw(){
  background(0);
  fill(255);
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  fill(160);
  ellipse( xpos/2, ypos, wdth, ht);
  if (xpos >= width-wdth || xpos <= wdth){ //<>//
    xspeed = xspeed* -1;
  }
    if (ypos >= height-ht || ypos <= wdth){
    yspeed = yspeed* -1;
  }
}
