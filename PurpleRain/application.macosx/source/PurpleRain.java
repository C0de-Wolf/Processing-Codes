import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class PurpleRain extends PApplet {


Drop[] drops = new Drop[500]; 
public void setup() {
  
  for (int i = 0; i<drops.length; i++ ) {
    drops[i] = new Drop();
  }
}

public void draw() {
  background(230, 230, 250);
  for (int i = 0; i<drops.length; i++ ) {
    drops[i].show();
    drops[i].fall();
  }
}
class Drop {
  float x = random (width);
  float y = random(-50, -500);
  float z = random (0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 1, 10);


  public void show() {
    float thickness = map(z, 0, 20, 0.5f, 2);
    strokeWeight(thickness);
    stroke(138, 43, 226);
    line(x, y, x, y + len);
  }
  public void fall() {
    y += yspeed;
    float gravity = map(z, 0, 20, 0.01f, 0.2f);
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
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "PurpleRain" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
