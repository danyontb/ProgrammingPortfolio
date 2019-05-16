class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  Lines(float tempX, float tempY, float tempStroke, float tempCount) {
    xpos= tempX;
    ypos=tempY;
    strokeW=tempStroke;
    pointCount=tempCount;
  }
  void display() {
    strokeW=random(1, 8);
    stroke(random(200), random(200), random(200));
    if (random(100)>75) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, pointCount);
    } else if (random(100)>60) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, pointCount);
    } else if (random(100)>50){
      moveDown(xpos, ypos, pointCount);
    } else { 
      strokeWeight(strokeW);
      moveRight(xpos, ypos, pointCount);
    }
  }



void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos=startX+i;
    if (xpos>500) {
      xpos=random(-10, 600);
    }
  }
}
void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    ypos=startY+i;
    if (ypos>600) {
      ypos=random(0, 500);
    }
  }
}


void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos=startX-i;
    if (xpos<0) {
      xpos=random(0, 500);
    }
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    ypos=startY-i;
    if (ypos<0) {
      ypos=random(0, 500);
    }
  }
}
}
