class Line {
  //member variable
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;
  //Constructor
  Line (float xpos, float ypos, float strokeW, float pointCount) {
    this.xpos=xpos;
    this.ypos = ypos;
    this.strokeW = strokeW;
    this.pointCount = pointCount;
  }

  //display method
  void display() {
    stroke((random(10)), (random(10 )), (random(10, 100)));
    strokeW = random(1, 5);
    pointCount = random(1, 100);
    strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    }
    if (random(100)>70) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, pointCount);
    } else if (random(100)>65) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, pointCount);
    } else if (random(100)>55) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, pointCount);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, pointCount);
    }
  }


  //movement method
  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }


  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX ;
      ypos = startY + i;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY - i);
      xpos = startX;
      ypos = startY - i;
    }
  }
}
