//int's

int frame = 1080; //width
int frame2 = 920; //height
int col = 0; //colour
int col1 = 255; //colour value 1
int col2 = 255; //colour value 2
int col3 = 255; //colour value 3
int rx = 0; //rectangle x value 1
int ry = frame2-frame2/8; //colour boxes y
int ch = frame2-frame2/8; //colour box height
int rx2 = frame/5; //rectangle x value 2
int rx3 = frame - ((frame/5)*3); //rectangle x value 3
int rx4 = frame -((frame/5)*2); //rectangle x value 4
int rx5 = frame -((frame/5)); //rectangle x value 5
int rh = frame2-frame2/8; //rectangle heigh value 0
int w = 8; //width and height of sroke boxes
int s = 8; //strokeweight value
int r1 = 10; //rectangle 1 Y value
int r2 = 50; //rectangle 2 Y value
int r3 = 80; //rectangle 3 Y valuey
int r4 = 100; //rectangle 4 Y value
int r5 = 120; // rectangle 5 Y value
int r6 = 140; //rectangle 6 Y value
int r7 = 160; //rectangle 7 Y value
int r8 = 180; // rectangle 8 Y value
int r9 = 200; //rectangle 9 Y value
int lCol = 0; //line colour value
int i; //used in for loops
int o = 1;
int o2 = 1;
int o3 = 1;
boolean tr = true;


void settings() {
  size(frame, frame2); //size of window
}

void setup() {
 background(255,255,255); //background as white
 
}

void keyPressed() {
  if(key=='q') {
    background(255,255,255);
    lCol=0;} //if q is pressed, background is white
  if(key=='w') {
    background(255,0,0);
    lCol=0;} //if w is pressed, background is red
  if(key=='e') {
    background(0,255,0);
    lCol=0;}//if e is pressed, background is green
  if(key=='r') {
    background(0,0,255);
    lCol=0;} //if r is pressed, background is blue
  
  if(key=='t') {  
    background(0,0,0); //if t is pressed, background is black and line colour is white
    lCol=255;
  } 
  if(key=='y') {
    background(col1,col2,col3); 
  }
  
  ran();
  
}

void ran() {
 if(key=='p') 
  {  
  rect(pmouseX-random(0,10),pmouseY-random(0,10),random(0,10),random(0,10)); //if p is pressed, draw a rect at about where your mouse is
     
  } else if(key=='o') 
  {  
  ellipse(pmouseX-random(0,10),pmouseY-random(0,10),random(0,10),random(0,10)); //if p is pressed, draw a rect at about where your mouse is
     
  } 
}

void colour() {
  if(col>0) {fill(col,col,col);} else {fill(col1,col2,col3);}
  noStroke();
  ran();
  stroke(0,0,0);
  noFill(); 
  rect(frame-150,0,150,300);
  
    noStroke();
  
    fill(o,0,0); 
    rect(frame-125, 20,20, 1);
    rect(frame-125,20+o,20,1); 
    o+=2;
    if(o>255) {
    o=0;
    }

   
    noStroke();
  
    fill(0,o2,0); 
    rect(frame-100, 20,20, 1);
    rect(frame-100,20+o,20,1); 
    o2+=2;
    if(o2>255) {
    o2=0;
    }

   
    noStroke();
  
    fill(0,0,o3); 
    rect(frame-75, 20,20, 1);
    rect(frame-75,20+o,20,1); 
    o3+=2;
    if(o3>255) {
    o3=0;
    }
    if(mousePressed==true && mouseX > frame-125 && mouseX < frame-115 && mouseY > 20 && mouseY < 275) {
    col1=mouseY-20;
    }
     if(mousePressed==true && mouseX > frame-100 && mouseX < frame-90 && mouseY > 20 && mouseY < 275) {
    col2=mouseY-20;
    }
    if(mousePressed==true && mouseX > frame-75 && mouseX < frame-65 && mouseY > 20 && mouseY < 275) {
    col3=mouseY-20;
    }
    if(col>0) {fill(col,col,col);} else {fill(col1,col2,col3);}
    
    ellipse(frame-30, 200, 30, 30);
}

void draw() {
  //stroke boxes and changing strokeweight
  stroke(0,0,0);
  fill(255,255,255);
  strokeWeight(8);
  rect(0,0,100,200);
  stroke(0,0,0);
  strokeWeight(50);
  line(14,r1,15,r1);
   strokeWeight(20);
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
   s = 50;
 } else if (mousePressed && mouseX >0 && mouseX < 100 && mouseY > r2 && mouseY < r3) {
   s = 20;
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
  rect(rx,ry,frame/5,ch);
  fill(255,0,0);
  rect(rx2,ry,frame/5,ch);
  fill(0,255,0);
  rect(rx3,ry,frame/5,ch);
  fill(0,0,255);
  rect(rx4,ry,frame/5,ch);
  fill(255,255,255);
  rect(rx5,ry,frame/5,ch);
  colour();
  
}