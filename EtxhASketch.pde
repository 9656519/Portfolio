 int x, y;

void setup() {
  size(400,400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 200;
}

void draw() {
  fill(255);
  strokeWeight(2);
  drawAndrew();
  noLoop();
}

// Algorithm for your first name
void drawAndrew() {
  
  moveDiagRU(5);
 moveDiagRD(2);
 moveLeft(4);
 moveRight(4);
 moveDiagRD(3);
 strokeWeight(0);
 moveRight(2);
 strokeWeight(2);
 moveUp(6);
 moveDiagRD(6);
 moveUp(6);
  strokeWeight(0);
 moveRight(2);
 strokeWeight(2);
 moveDown(6);
 moveDiagRU(2);
 moveUp(2);
 moveDiagLU(2);
   strokeWeight(0);
 moveRight(4);
 strokeWeight(2);
 moveDiagRD(3);

}

// Method to draw right line
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}
void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}

void moveUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}

void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}

void moveDiagRD(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}
void moveDiagRU(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}
void moveDiagLU(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y-i);
  }
  x=x-(10*rep);
  y=y-(10*rep);
}
void moveDiagLD(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);}

void keyPressed(){
  if(key==CODED){
    if(keyCode==RIGHT){
      moveRight(1);
    }else if (keyCode==DOWN){
    moveDown(1);
    }else if (keyCode==UP){
    moveUp(1);
    }else if (keyCode==LEFT){
    moveLeft(1);
    }
  }
}
