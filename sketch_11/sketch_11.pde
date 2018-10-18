// the for loop looks like it should be drawing 
// 10 rectangles to the screen, but it's only drawing one. 

// fix the scope of the x integer so that all 10 
// rectangles are drawn to the screen.

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);

  float maxLoops = 10;
  for (int i = 0; i <= maxLoops; i++) {

    float xPos = map(i, 0, maxLoops, 15, width);
    rect(xPos, 150, 30, 300);
  }
}
