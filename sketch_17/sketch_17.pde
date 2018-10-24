// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float [10];
float[] yPositions = new float [10];
float startPointX;
float startPointY;
float randomColor;

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = i*10;
    yPositions[i] = i*10;
  }
}

void draw() {
  startPointX = random(0, width);
  startPointY = random(0, height);
  randomColor = random(0, 255);
  fill(randomColor);
  for(int i = 0; i < xPositions.length; i++){
    xPositions[i] = startPointX + i*10 + random(0, 0.5);
    yPositions[i] = startPointY + i*10 + random(0, 0.5);
    rect(xPositions[i], yPositions[i], 10, 10);
  }
}
