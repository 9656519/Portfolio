//spaceShoooter App
//Andrew Draper, Jack Zini
//TODO:
spaceShip s1;
Timer timer;
Timer lvlTimer;
String lvlText = "";
ArrayList<Rock> rocks;
ArrayList<Laser> lasers;
int level = 1;
int rockRate = 500;
int score = 0;
int health;
boolean ticker = false;
boolean play = false;
//import processing.sound.*;
//SoundFile laserSound;


void setup() {
  background(25, 0, 50);
  size(1000, 1000);
  s1 = new spaceShip(0, 0);
  lasers = new ArrayList<Laser>();
  rocks = new ArrayList<Rock>();
  health = 100;
  timer = new Timer(rockRate);
  lvlTimer = new Timer(2000);
  timer.start();
  //laserSound = new SoundFile(this, "laser.wav" );
}

void draw() {
  background(25, 0, 50);
  noCursor();

  if (timer.isFinished()) {
    if (random(10)> 1) {
      rocks.add(new Rock(int(random(width)), -20, int(random(30, 75)), false ));
      timer.start();
    }else{
    rocks.add(new Rock(int(random(width)), -20, int(random(30, 75)), true ));
      timer.start();
    }
  } 
  if (frameCount % 1000 == 10) {
    level++;
    lvlText = "Level: " + level;
    ticker();
    rockRate-=100;
    timer.totalTime = rockRate;
  }

  for (int i = rocks.size()-1; i>=0; i--) {
    Rock rock = (Rock) rocks.get(i);
    rock.move();
    rock.display();
    if (rock.reachedBottom()) {
      rocks.remove(rock);
    }
    for (Laser l : lasers) {
      if (dist(l.x, l.y, rock.x, rock.y) < rock.r) {
        rock.health-=1;
        lasers.remove(lasers);
      }
      if (rock.health<10) {
        rocks.remove(rock);
        score+=rock.r;
      }
    }
    if (dist(s1.x, s1.y, rock.x, rock.y) < s1.r) {
      if (rock.isPU) {
        health+=10;
        rocks.remove(rock);
      } else {
        rocks.remove(rock);
        rock.health-=10;
        health-=10;
      }
      if (dist(s1.x, s1.y, rock.x, rock.y) < s1.r) {
        if (rock.isPU) {
          health+=10;
          rocks.remove(rock);
        } else {
          rocks.remove(rock);
          health-=rock.r;
        }
      }
    }
  }

  for (int i = lasers.size()-1; i>=0; i--) {
    Laser laser = (Laser) lasers.get(i);
    laser.fire();
    laser.display();
    if (laser.reachTop()) {
      lasers.remove(laser);
    }
  }
  s1.display(mouseX, mouseY);
  if (health < 1) {
    gameOver();  
  }

  updateDisplay();
}



void updateDisplay() {
  fill(127, 127);
  rect(0, 0, width, 80);
  fill(255);
  text("SCORE:  "  +  score, 10, 30);
  text("HEALTH:  "  +  health, 10, 50);
  text("LEVEL:  "  +  level, 10, 70);
}
void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(222);
  text("Game Over!", width/2, height/2);
  noLoop();
}
void ticker() {
  lvlTimer.start();
  ticker = true;
  if (lvlTimer.isFinished()) {
    ticker = false;
  }
}

void mouseReleased () {
  lasers.add(new Laser(s1.x+31, s1.y));
  lasers.add(new Laser(s1.x-31, s1.y));
  //laserSound.play();
}
void keyPressed () {
  if (key == ' ')
    lasers.add(new Laser(s1.x+31, s1.y));
  lasers.add(new Laser(s1.x-31, s1.y));
  //laserSound.play();
}
