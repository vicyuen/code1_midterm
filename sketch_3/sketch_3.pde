// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.

float distance;
void setup() {
  size(600, 600);
}

void draw() {
  background(150);
distance = dist(mouseX, mouseY, width/2, height/2);
  if (mousePressed && distance < 100) {
    fill(255);
  } else { 
    fill (150);
  }

    ellipse(300, 300, 200, 200);
  }
