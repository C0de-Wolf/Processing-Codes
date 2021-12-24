import processing.pdf.*;

float n = 6;
float d = 71;

size(800, 800);
beginRecord(PDF, "MauerRosePDF.pdf"); 

noFill();
background(#343E7B); //ADEFD1 89ABE3
beginShape();
stroke(#89ABE3); //333D79
strokeWeight(1);
for(int theta = 0; theta <= 360; theta++){
  float k = theta * d * PI / 180;
  float r = 300 * sin(n * k);
  float x = r * cos(k) + width/2;
  float y = r * sin(k) + height/2;
  vertex(x, y);
}
endShape();
endRecord();


beginShape();
/*stroke(0, 0, 255);
strokeWeight(4);
for(int theta = 0; theta <= 360; theta++){
  float k = theta * PI / 180;
  float r = 300 * sin(n * k);
  float x = r * cos(k) + width/2;
  float y = r * sin(k) + height/2;
  vertex(x, y);
}*/
endShape();
