import processing.pdf.*;
int i = 1;      // SIMULTANEOUS VISUALIZATION
int steps= 10000;
void setup() {
  size(1200, 600);
  beginRecord(PDF, "collatz.pdf");
  background(0);

 
}

void draw() {

    IntList sequence = new IntList(); 
    resetMatrix();
    translate(width/2, height);
    int n =i;
    do {
      sequence.append(n);
      n = collatz(n);
    } while (n !=1);
    sequence.append(1);
    sequence.reverse();
    float len = 7;
    float angle = PI/16;
    resetMatrix();
    translate(width/2, height);
    for (int j = 0; j<sequence.size(); j++) {
      int val = sequence.get(j);
      if (val%2==0) {
        rotate(-angle);
      } else {
        rotate(angle);
      }

      strokeWeight(2);
      stroke(255,50);
      line(0, 0, 0, -len);
      translate(0, -len);
    }
  
  if(i<steps){
  
    i++;
}else{
noLoop();
println("Done");
}
  
}

int collatz(int n) {
  if (n%2==0) {
    return n/2;
  } else {
    return (3*n+1)/2;
  }
}

/*
import processing.pdf.*;

void setup() {
  size(1200, 600);
  beginRecord(PDF, "collatz.pdf");
  background(0);

  for (int i = 1; i<10000; i++) {

    IntList sequence = new IntList(); 
    resetMatrix();
    translate(width/2, height);
    int n =i;
    do {
      sequence.append(n);
      n = collatz(n);
    } while (n !=1);
    sequence.append(1);
    sequence.reverse();
    float len = 7;
    float angle = PI/16;
    resetMatrix();
    translate(width/2, height);
    for (int j = 0; j<sequence.size(); j++) {
      int val = sequence.get(j);
      if (val%2==0) {
        rotate(-angle);
      } else {
        rotate(angle);
      }

      strokeWeight(2);
      stroke(255,50);
      line(0, 0, 0, -len);
      translate(0, -len);
    }
  }
  endRecord();
}

void draw() {
}

int collatz(int n) {
  if (n%2==0) {
    return n/2;
  } else {
    return (3*n+1)/2;
  }
}


*/



//------------




/*
void setup() {
 size(600, 600);
 background(0);
 float len = 60;
 float angle = PI/8;
 for(int i = 1; i<100;i++){
 resetMatrix();
 translate(width/2, height);
 int n =i;
 do {
 n = collatz(n);
 if(n%2==0){
 rotate(angle);
 }else{
 rotate(-angle);
 }
 
 stroke(255);
 line(0,0,0,-len);
 translate(0, -len);
 } while (n !=1);
 
 }
 println("da");
 
 }
 
 void draw() {
 }
 
 int collatz(int n) {
 if (n%2==0) {
 return n/2;
 } else {
 return 3*n+1;
 }
 }
 */
