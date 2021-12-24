import processing.pdf.*;

int namer = 0;

void setup(){
  size(1200, 600);
  beginRecord(PDF, "everything.pdf");
   background(0);

}

void draw() {
  // Be sure not to call background, otherwise your file
  // will just accumulate lots of mess, only to become invisible

  int n = int(random(-100000,1000000)); //berk kullanmana gerek yok bunu gereksiz yavaşlatıyo.
  int len = 0;
  len = int(random(-50,50));
float rotationDegree = PI/180;
translate(width/2, height/2);
 strokeWeight(0);
 stroke(int(random(0,120)),int(random(0)),int(random(120 ,255)));

for(int i = 0; i<int(random(1000,5000)); i++){
    rotate(rotationDegree);
line(0, 0, 0, -len);
  translate(0, -len);
 
int k = int(random(-10,10));
  rotationDegree+=(1)*k; //k yerine 3400 yazınca da ii şekiller geldi //PI*k de yazılabilir; // 1 yerine PI/180 yazınca da başka şekiller çıkıyor
 strokeWeight(0);
}

//save("OurfirstNFT" + str(namer) + ".png");
namer +=1;
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
