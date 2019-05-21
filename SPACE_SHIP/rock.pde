class Rock {
  int x, y; 
  int speed; 
  color c;
  int r; 
  int health;
  boolean isPU;

  Rock(int x, int y, int r, boolean isPU) {
   
    this.x = x;
    this.y = y;
    this.r = r;
    this.isPU = isPU;
    speed = int(random(1, 3));    
    health = r;
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    
    if (health < 10) {
    }
    fill(health+health+50);
   
    if (r < 50) {
      ellipse(x, y, 10, 10);
    } else {
      ellipse(x, y, health, health);
    }
    if(isPU) {
      fill(255,0,0);
      text("PU",x,y+5);
      fill(255,0,0);
    } else {
      if(health<10) {
        fill(255,255,0);
      }else {
        fill(c-health);
      }
    }
  }
}
