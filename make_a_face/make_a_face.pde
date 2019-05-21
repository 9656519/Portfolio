void setup() {
  size(500,500);
  background(255);
  frameRate(2);
}
void draw(){
  background(255);
  makeHead();
  drawMouth();
  drawEyes();
}

void mouseClicked(){
  saveFrame("line-######.png");
}


void makeHead(){
  //todo: draw and fill ellipse for cartoon head
  fill(255, random(200,230), random(22,200));
   ellipse(width/2,height/2,random(width*0.55,width*0.75),random(height*0.8,height*0.99));
}

void drawMouth(){
 fill(2);
  ellipse(random(width*0.4,width*0.5),
  random(height*.5,height*.6),
  random(width*0.3,width*0.00),
  random(height*.0,height*.3));
  }
  
void drawEyes(){
  fill(255);
  ellipse(random(width*0.5,width*0.5),
  random(height*.2,height*.2),
  random(width*0.1,width*0.05),
  random(height*.1,height*.1));
  
    fill(random));
  ellipse(random(width*0.5,width*0.5),
  random(height*.2,height*.2),
  random(width*0.1,width*0.05),
  random(height*.02,height*.08));
}  
  
  
