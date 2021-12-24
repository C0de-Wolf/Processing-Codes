double[] arr = new double[50];
float angle = PI/6;

void setup(){
size(640,360);
background(0);
arr[0] = 1;
arr[1] = 1;
for(int i = 2; i<arr.length; i++){
arr[i] = arr[i-1] + arr[i-2];
}
println(arr);
}

void draw(){
for(int i = 0; i<arr.length; i++){
noFill();
stroke(255);
rect(0, 0, (float)arr[i], (float)arr[i]);

}
}
