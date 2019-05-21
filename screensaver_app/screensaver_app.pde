Line[] myLines = new Line[10];


void setup() {
size(displayWidth, displayHeight);
  background(200, 200, 190);
  for(int i = 0; i<myLines.length; i++){
  myLines[i] = new Line(random(width),random(height),random(1,5),random(20,50));
  }
}

void draw() {
 
  if(frameCount > 1000){
  background(200,200,190);
  frameCount = 0;
  }
  for(int i = 0; i<myLines.length; i++){
  myLines[i].display();
 
  }
}
