/*
  da fare: gestione colori
*/


import processing.serial.*; 

Serial myPort;
int pointsNumber = 0;
FloatList points;
float xRot=0, yRot=0, depth=+100, x=0, y=0, z=0, xP=0, yP=0, zP=0;


void setup(){
  size(800,800,P3D);
  background(0);
  myPort = new Serial(this, "COM1", 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
}


void draw(){
  background(0);
  translateRotation();
  
  if(pointsNumber != 0){
    // cycle for drawing the points
    stroke(255);
    if(pointsNumber==1){
      xP=points.get(0);
      yP=points.get(1);
      zP=points.get(2);
    }
    display(pointsNumber);
  } else {
    textAlign(CENTER); 
    } 
  } else {ign(CENTER);
    textSize(20);
    text("NO POINTS RECEIVED",0,0,0);
  }
}