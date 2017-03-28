//int's

int frame = 800; //width
int frame2 = 800; //height
int col1 = 255; //colour value 1
int col2 = 255; //colour value 2
int col3 = 255; //colour value 3
int rx = 0; //rectangle x value 1
int ry = 700;
int rx2 = frame/5; //rectangle x value 2
int rx3 = frame - ((frame/5)*3); //rectangle x value 3
int rx4 = frame -((frame/5)*2); //rectangle x value 4
int rx5 = frame -((frame/5)); //rectangle x value 5
int rh = 700; //rectangle heigh value 0
int w = 8; //width and height of sroke boxes
int s = 8; //strokeweight value
int r1 = 10; //rectangle 1 Y value
int r2 = 30; //rectangle 2 Y value
int r3 = 50; //rectangle 3 Y value
int r4 = 70; //rectangle 4 Y value
int r5 = 90; // rectangle 5 Y value
int r6 = 110; //rectangle 6 Y value
int r7 = 130; //rectangle 7 Y value
int r8 = 150; // rectangle 8 Y value
int r9 = 170; //rectangle 9 Y value
int lCol = 0; //line colour value
int i; //used in for loops


void settings() {
  size(frame, frame2); //size of window
}

void setup() {
 background(255,255,255); //background as white
}

void keyPressed() {
  if(key=='q') {background(255,255,255);} //if q is pressed, background is white
  if(key=='w') {background(255,0,0);} //if w is pressed, background is red
  if(key=='e') {background(0,255,0);} //if e is pressed, background is green
  if(key=='r') {background(0,0,255);} //if r is pressed, background is blue
  
  if(key=='t') {  
    background(0,0,0); //if t is pressed, background is black and line colour is white
    lCol=255;
  } else{lCol=0;}
  if(key=='p') {
  rect(pmouseX-random(0,10),pmouseY-random(0,10),random(0,10),random(0,10)); //if p is pressed, draw a rect at about where your mouse is
  }
}

void draw() {
  //stroke boxes and changing strokeweight
  fill(255,255,255);
  strokeWeight(8);
  rect(0,0,100,170);
  stroke(0,0,0);
  strokeWeight(8);
  line(10,r1,20,r1);
   strokeWeight(7);
  line(10,r2, 20, r2);
  strokeWeight(6);
  line(10,r3,20,r3);
  strokeWeight(5);
  line(10,r4,20,r4);
   strokeWeight(4);
  line(10,r5,20,r5);
   strokeWeight(3);
  line(10,r6,20,r6);
   strokeWeight(2);
  line(10,r7,20,r7);
   strokeWeight(1);
  line(10,r8,20,r8);
  fill(0,0,0);
  strokeWeight(1);
  rect(50,r1,w,w);
  rect(50,r2,w,w);
  rect(50,r3,w,w);
  rect(50,r4,w,w);
  rect(50,r5,w,w);
  rect(50,r6,w,w);
  rect(50,r7,w,w);
  rect(50,r8,w,w);
  stroke(col1,col2,col3);
 if(mousePressed && mouseX >50 && mouseX < 57 && mouseY > r1 && mouseY < r2) {
   s = 8;
 } else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r2 && mouseY < r3) {
   s = 7;
 } else if(mousePressed && mouseX >0 && mouseX < 100 && mouseY > r3 && mouseY < r4) {
   s = 6;
 } else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r4 && mouseY < r5) {
   s = 5;
 }else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r5 && mouseY < r6) {
   s = 4;
 }else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r6 && mouseY < r7) {
   s = 3;
 }else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r7 && mouseY < r8) {
   s = 2;
 }else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r8 && mouseY < r9) {
   s = 1;
 }
 if (mouseX < rx2 && mouseY > rh && mousePressed) {
    col1=0;
    col2=0;
    col3=0;
  } else if (mouseX < rx3 && mouseX > rx2 && mouseY > rh && mousePressed) {
    col1=255;
    col2=0;
    col3=0;
  } else if (mouseX < rx4 && mouseX > rx3 && mouseY > rh && mousePressed) {
    col1=0;
    col2=255;
    col3=0;
  } else if (mouseX < rx5 && mouseX > rx4 && mouseY > rh && mousePressed) {
    col1=0;
    col2=0;
    col3=255;
  } else if (mouseX < frame && mouseX > rx5 && mouseY > rh && mousePressed)
  {
    col1=255;
    col2=255;
    col3=255;  
  }
  strokeWeight(s);
  if (mousePressed) {
    line(mouseX,mouseY, pmouseX,pmouseY); //draw line when mouse is pressed
  }
  //boxes to change line colour and drawing them
  stroke(lCol);
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