// in this sketch there is currently a 50% chance that 
// the drawn ellipse will move 10 pixels to the right 
// every frame, and a 50% chance that it will move to 
// 10 pixels to the left. 

// change the sketch so there is a 25% chance that it will 
// move left, 25% chance that it will move right, 25% chance 
// up, and 25% chance down.

float xPos;
float yPos;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(0, 3);

  if (int(r) == 0) {
    xPos += 10;
  } 
  if (int(r) == 1) {
    xPos -= 10;
  }
  if (int(r) == 2) {
    yPos += 10;

    if (int(r) == 3) {
      yPos -= 10;
    }
  }
} 
