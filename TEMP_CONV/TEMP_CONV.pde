void setup () {
  size (displayWidth, 500);
}


void draw () {
  background(0, 150, 10);
  fill(1);
  textSize(60);
  text("Distance converter", 1000, 50);
  textSize(15);
  fill(255,255,0);
  text("DIRECTIONS:Slide the mouse \n left to right to \n adjust the distance", 1000,400 );
  fill(1);
  textSize(20);
  text("project by Andrew Draper", 2200, 455);
  text("MILE:" + mouseX + " \nKILO"  + mileToKilo(mouseX), 10, 200);
  fill(50);
  rect(0, 80, mouseX, 80);
  for (int i = 0; i<width; i+=25) {
    textSize(8);
    line(i, 100, i, 120);
    text(i, i, 100);
    fill(255, 255, 0);
    rect(mouseX-i-20, 115, 20, 10);
  }



  println(mileToKilo(mouseX));
  println(kiloToMile(mouseX));
}


float mileToKilo(int mile) {
  return mile*1.60934;
}


float kiloToMile(int kilo) {
  return kilo/1.60934;
}

void drawRef() {
}
