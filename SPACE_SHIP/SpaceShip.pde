class spaceShip {
  // Member variable
  int x, y, r;
  int health;
  
  //constructor
  spaceShip(int x, int y) {
    this.x = x;
    this.y=y;
    r = 20;
  }


  void display(int x, int y) {
    rectMode(CORNER);
    this.x = x;
    this.y = y;
    fill( random(255), random(0), random(0), random(255));
    ellipse(x+15, y+80, 15, 30);
    ellipse(x-15, y+80, 15, 30);
    fill(150);
    stroke(150);
    strokeWeight(4);
    line(x-30, y+40, x-30, y+15);
    line(x+30, y+40, x+30, y+15);


    stroke(1);
    strokeWeight(2);
    ellipse(x, y, 50, 100);
    rect(x-20, y+40, 10, 30);
    rect(x+10, y+40, 10, 30);
    strokeWeight(0);
    fill(255, 0, 0);
    triangle(x, y-65, x-20, y-35, x+20, y-35);
    triangle(x-22.5, y+20, x-40, y+50, x-15, y+40);
    triangle(x+22.5, y+20, x+40, y+50, x+15, y+40);
    fill(0, 0, 150);
    ellipse(x, y, 25, 50);
    strokeWeight(2);
    stroke(150);
    line(x-20, y, x+20, y);
  }


  void drawSpaceship(int x, int y) {
  }
}
