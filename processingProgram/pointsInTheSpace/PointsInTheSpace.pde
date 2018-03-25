
import processing.serial.*; 

Serial myPort;
int pointsNumber = 0;
ArrayList<Point> points = new ArrayList<Point>();

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
    display(pointsNumber);

  } else {
    // if there are no points in memory, show this message
    textAlign(CENTER);
    textSize(20);
    text("NO POINTS RECEIVED",0,0,0);
  }
}