import processing.svg.*;
boolean record;

int namer = 0;
void setup(){
  size(1200, 600);
  background(0);
}

void draw(){
  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
 beginRecord(SVG, "OurfirstNFT" + str(namer));
  }
    int n = int(random(-100000,1000000));
print(n);
frameRate(30); 
  int len = 0;
  len = int(random(-10,10));
float rotationDegree = PI/180;
translate(width/2, height/2);
 strokeWeight(2);
 stroke(int(random(0,255)),int(random(255)),int(random(0,255)));

for(int i = 0; i<n; i++){
line(0, 0, 0, -len);
  translate(0, -len);
  rotate(rotationDegree);

int k = int(random(-100,100));
  rotationDegree+=(1)*PI*k; //3400 //PI*k; //PI/180 i kaldırınca da başka şekiller çıkıyor
 strokeWeight(0);
}
//save("OurfirstNFT" + str(namer) + ".png");
namer +=1;
if (record) {
    endRecord();
    record = false;
  }
}

void mousePressed() {
  record = true;
}
