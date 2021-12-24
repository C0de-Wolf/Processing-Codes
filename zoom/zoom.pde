PVector view;
PImage kitten;

void setup() {
  fullScreen(P2D);
  noStroke();  
  resetView();
  kitten = loadImage("https://i.imgur.com/Q0RMm6i.jpeg");
}

void keyPressed() {
  resetView();
}

void resetView() {
  view = new PVector(0,0,1);
}

void draw() {
  background(0);
  // draw a kitten as a test image ;)
  image(kitten, view.x, view.y, kitten.width * view.z, kitten.height * view.z);
}

void mouseDragged () {
  // moving the camera with the mouse
  view.add(mouseX - pmouseX, mouseY - pmouseY);
}

// defines how sensitive the zoom is
float scaleSensitivity = 0.9;

void mouseWheel(MouseEvent event) {
  // the amount of scrolls that happened before the event triggered
  float count = event.getCount();
  // the scaling is done exponentially
  float scale = pow(scaleSensitivity, count);
  
  // subtract the actual mouse position, rescale and add it back
  // this is done to keep the view in place relative to the mouse position
  view.sub(mouseX, mouseY).mult(scale).add(mouseX, mouseY);
}
