float n = 0;
float d = 0;

void setup(){
size(800,800);
}

void draw(){
background(0);
translate(width/2,height/2);
stroke(255);
noFill();
beginShape();
strokeWeight(1);
for (float i = 0; i < 361; i++) {
    float k = i * d;
    float r = 400 * sin(radians(n*k));
    float x = r * cos(radians(k));
    float y = r * sin(radians(k));
    vertex(x,y);
  }
  endShape();

  noFill();
  stroke(255,0,50, 255);
  strokeWeight(4);
//  beginShape();
  //for (float i = 0; i < 361; i++) {
    //float k = i;
    //float r = 150 * sin(radians(n*k));
    //float x = r * cos(radians(k));
    //float y = r * sin(radians(k));
    //vertex(x,y);
  //}
  //endShape();

  n += 0.01;
  d += 0.03;
}
