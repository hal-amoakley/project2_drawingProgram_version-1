int frame = 800;
int frame2 = 800;
int col1 = 255;
int col2 = 255;
int col3 = 255;
int rx = 0;
int ry = 700;
int rx2 = frame/5;
int rx3 = frame - ((frame/5)*3);
int rx4 = frame -((frame/5)*2);
int rx5 = frame -((frame/5));
int rh = 
int w = 7;
int e = 10;
int s = 8;


void settings() {
  size(frame, frame2); 
}

void setup() {
 background(255,255,255); 
}

void draw() {
  fill(255,255,255);
  strokeWeight(8);
  rect(0,0,100,100);
  stroke(0,0,0);
  strokeWeight(8);
  line(10,10,20,10);
   strokeWeight(7);
  line(10,20,20,20);
  strokeWeight(6);
  line(10,30,20,30);
  strokeWeight(5);
  line(10,40,20,40);
   strokeWeight(4);
  line(10,50,20,50);
   strokeWeight(3);
  line(10,60,20,60);
   strokeWeight(2);
  line(10,70,20,70);
   strokeWeight(1);
  line(10,80,20,80);
  fill(0,0,0);
  strokeWeight(1);
  rect(50,5,w,w);
  rect(50,15,w,w);
  rect(50,25,w,w);
  rect(50,35,w,w);
  rect(50,45,w,w);
  rect(50,55,w,w);
  rect(50,64,w,w);
  rect(50,75,w,w);
  stroke(col1,col2,col3);
 if(mousePressed && mouseX >50 && mouseX < 57 && mouseY > 5 && mouseY < 5+w) {
   s = 8;
 } else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 15 && mouseY < 12+e) {
   s = 7;
 } else if(mousePressed && mouseX >58 && mouseX < 60 && mouseY > 25 && mouseY < 25+e) {
   s = 6;
 } else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 35 && mouseY < 35+e) {
   s = 5;
 }else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 45 && mouseY < 45+e) {
   s = 4;
 }else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 55 && mouseY < 55+e) {
   s = 3;
 }else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 65 && mouseY < 65+e) {
   s = 2;
 }else if (mousePressed && mouseX >58 && mouseX < 60 && mouseY > 75 && mouseY < 75+e) {
   s = 1;
 }
 if (mouseX < rx2 && mouseY > 700 && mousePressed) {
    col1=0;
    col2=0;
    col3=0;
  } else if (mouseX < rx3 && mouseX > rx2 && mouseY > 700 && mousePressed) {
    col1=255;
    col2=0;
    col3=0;
  } else if (mouseX < rx4 && mouseX > rx3 && mouseY > 700 && mousePressed) {
    col1=0;
    col2=255;
    col3=0;
  } else if (mouseX < rx5 && mouseX > rx4 && mouseY > 700 && mousePressed) {
    col1=0;
    col2=0;
    col3=255;
  } else if (mouseX < frame && mouseX > rx5 && mouseY > 700 && mousePressed)
  {
    col1=255;
    col2=255;
    col3=255;  
  }
  strokeWeight(s);
  if (mousePressed) {
    line(mouseX,mouseY, pmouseX,pmouseY);
  }
  stroke(0,0,0);
  strokeWeight(8);
  fill(0,0,0);
  rect(rx,ry,frame/5,100);
  fill(255,0,0);
  rect(rx2,ry,frame/5,100);
  fill(0,255,0);
  rect(rx3,ry,frame/5,100);
  fill(0,0,255);
  rect(rx4,ry,frame/5,100);
  fill(255,255,255);
  rect(rx5,ry,frame/5,100);
}