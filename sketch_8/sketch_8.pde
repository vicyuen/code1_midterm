// this sketch uses only the setup function to draw 
// points at every pixel to the screen in a gradient 
// in the x and y dimensions. 

// the color should be smoothly blended in all directions 
// to look like the target image, but the current mapping 
// result seems to be off (its mostly yellow). 

// fix it to be an even gradient across the width and 
// height of the canvas.

void setup() {
  size(600, 600);
}

void draw() {

  myFunction(width, height);
}

void myFunction (int max, int max2) {
  for (int j = 0; j<max2; j++) {
    for (int i = 0; i<max; i++) {
      int r = int (map(i, 0, max, 0, 255));
      int g = int (map(j, 0, max2, 0, 255));
      stroke(r, g, 175);
      point(i, j);
    }
  }
}
