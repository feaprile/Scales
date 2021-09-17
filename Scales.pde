import processing.net.*;

int screenSize = 500;

public void setup() {
  size(500, 500);
  frameRate(10);
}

public void draw() {
 
  int r = 1 + (int)(Math.random()*64);
  int g = 2 + (int)(Math.random()*60);
  int b = 1 + (int)(Math.random()*70);
  background(r, g, b);
  int resetValueX = -100;
  int boxLength = 60;
  int boxHeight = 47;
  float scaleFactor = .175;
  int currentX = resetValueX;
  int currentY = screenSize-boxHeight;
  boolean offset = true;
  while (currentY > -1*boxHeight) {
    if (offset) currentX += (boxLength/2);
    while (currentX < screenSize) {
      scale(currentX, currentY, scaleFactor);
      currentX += boxLength;
    }
    offset = offset ? false : true;
    currentX = resetValueX;
    currentY -= boxHeight;
  }
  System.out.println("Finally! Its over.");
  currentY = 0;
  resetValueX = resetValueX+boxLength/2;
  //Making the triangles on top
  text(mouseX, 20, 480);
  text(mouseY, 40, 480);
}

void scale(int x, int y, float n) {

  int r = 51 + (int)(Math.random()*28);
  int g = 95 + (int)(Math.random()*28);
  int b = 188 + (int)(Math.random()*28);

  fill(r, g, b);

  beginShape();
  vertex(x+(125*n), y);
  vertex(x+(225*n), y);
  vertex(x+(350*n), y+(125*n));
  vertex(x+(175*n), y+(150*n));
  vertex(x, y+(125*n));
  endShape(CLOSE);
  beginShape();
  vertex(x, y+(125*n));
  vertex(x+(5*n), y+(230*n));
  vertex(x+(175*n), y+(150*n));
  endShape(CLOSE);
  beginShape();
  vertex(x+(350*n), y+(125*n));
  vertex(x+(345*n), y+(230*n));
  vertex(x+(175*n), y+(150*n));
  endShape(CLOSE);
  beginShape();
  vertex(x+(345*n), y+(230*n));
  vertex(x+(175*n), y+(265*n));
  vertex(x+(175*n), y+(150*n));
  endShape(CLOSE);
  beginShape();
  vertex(x+(5*n), y+(230*n));
  vertex(x+(175*n), y+(265*n));
  vertex(x+(175*n), y+(150*n));
  endShape(CLOSE);
  beginShape();
  vertex(x+(90*n), y+(247*n));
  vertex(x+(175*n), y+(265*n));
  vertex(x+(260*n), y+(247*n));
  vertex(x+(175*n), y+(380*n));
  endShape(CLOSE);
}
