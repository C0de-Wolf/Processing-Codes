class Drop {
  float x = random (width);
  float y = random(-50, -500);
  float z = random (0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 1, 10);


  void show() {
    float thickness = map(z, 0, 20, 0.5, 2);
    strokeWeight(thickness);
    stroke(138, 43, 226);
    line(x, y, x, y + len);
  }
  void fall() {
    y += yspeed;
    float gravity = map(z, 0, 20, 0.01, 0.2);
    yspeed += gravity;
    if (y>height) {
      x = random (width);
      y = random(-50, -500);
      yspeed = map(z, 0, 20, 1, 10);
      z = random (0, 20);
      len = map(z, 0, 20, 10, 20);
      yspeed = map(z, 0, 20, 1, 10);
    }
  }
}
