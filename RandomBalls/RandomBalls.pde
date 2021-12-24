float CircleX;
float CircleY;
float CirlceR;
void setup(){
size(400,400);
background(50);
}

void draw(){
CircleX = random(width);
CircleY = random(height);
CirlceR = random(15,35);


fill(int(random(0,255)),0,int(random(0,255)));
ellipse(CircleX, CircleY, CirlceR,CirlceR);
}
