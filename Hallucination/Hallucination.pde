float numberOfCircles = 10;
int r = 460;
int radiusinc = 10;

void setup(){
  size(460,460);
  background(0);
  for(int i = 0; i<numberOfCircles;i++){
  if(i%2  == 0){
    fill(255);
  }else{
    fill(0);
  }
  ellipse(230,230, r - 50*i, r - 50*i);
}


}


void draw(){
  for(int i = 0; i<=numberOfCircles; i++){
  if(i%2  == 0){
    fill(255);
  }else{
    fill(0);
  }
  ellipse(230,230, r - 50*i, r - 50*i);

r +=1;

}
}


/*
boolean flag;
int count=0;
int acc=1;
double space=0.75;
int stop=0;
void setup(){
 size(600,600,P3D);
 stop=(int)(width*2/space/space-width*2);
 noStroke();
}
void draw(){
 background(255);
 flag=true;
 count+=acc;
 if(frameCount%10==0)acc++;
 for(float i=width*2+count%stop;i>1;i*=space){
  flag=!flag;
  fill(flag?0:255);
  ellipse(width/2,height/2,i,i);
 }
}
*/
