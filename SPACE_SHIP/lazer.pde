class Laser {
  int x, y, w, h;
  float speed;


  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 3;
    h = 10;
    speed = 15;
  }

  void fire() {
    y -= speed;
  }


  boolean reachTop() {
    if (y<0) {
      return true;
    } else {
      return false;
    }
  }
  void display() {
    rectMode(CENTER);
    fill(0,0,255,255);

    noStroke();
    for (int i = 2; i < w; i++ ) {
      rect(x, y-5, w, h);
    }
  }
}
