//#include <LiquidCrystal.h>
#include <Servo.h>
#include <LIDARLite.h>
#include <stdio.h>

#define pinVrXButton A0
#define pinVrYButton A1
#define pinAutoButton 10

Servo servoX;
Servo servoY;
LIDARLite lidarLite;
//Liquidcristal lcd (8,9,4,5,6,7);

//global variables declaration and initialization
const int minXAngle = 10;  //from -80° to +80°
const int maxXAngle = 170;
const int minYAngle = 20;  //from -70° to +70°
const int maxYAngle = 160;

int autoButton = 0;
int s = 0;
const float degToRad = 3.1415926/180.0; // degToRad=PI/180

int dist=0;
float radiusA=0.0;
float radiusB=0.0;
float xAngle= 10.0;
float yAngle= 20.0;
float vrx = 0.0;
float vry = 0.0;
int cal_cnt = 0;

char xCoordinate[] = "00000";
char yCoordinate[] = "00000";
char zCoordinate[] = "00000";


void setup() {
  //led.begin(16,2);
  lidarLite.begin(0,true);
  lidarLite.configure(0);
  Serial.begin(9600);
  
  servoX.attach(2);
  servoY.attach(3);
  servoX.write(xAngle);
  servoY.write(yAngle);
  
  pinMode(pinAutoButton, INPUT);
}

void loop() {
  //richiamo funzioni
  biasCorrection();
  
  if(pinAutoButton == HIGH){
    manualMotion();
  } else {
    automaticMotion();
  }

  
  radiusA = (xAngle -80.0) * degToRad;
  int posX = int(dist*sin(radiusA));
  radiusB = (yAngle -70.0) * degToRad;
  int posY = int(dist*sin(radiusB));
  int posZ = int(dist*cos(radiusA)*cos(radiusB));
  
  sprintf(xCoordinate,"%d;",posX);
  sprintf(yCoordinate,"%d;",posY);
  sprintf(zCoordinate,"%d",posZ);
  Serial.print(xCoordinate);
  Serial.print(yCoordinate);
  Serial.println(zCoordinate);

  
  
  servoX.write(xAngle);
  servoY.write(yAngle);
}

void automaticMotion(){
  switch(s){
    case 0:
      xAngle += 0.2;
      if(xAngle -80.0 == 80.0){
        s=1;
        yAngle += 0.5;
      }
      break;
    case 1:
      xAngle -= 0.2;
      if(xAngle -80.0 == 0.0){
        s=0;
        yAngle += 0.5;
      }
      break;
  }
}

void manualMotion(){
  //accensione LED
  vrx = map(analogRead(pinVrXButton),0,1023,-5,+5);
  vry = map(analogRead(pinVrYButton),0,1023,-5,+5);

  xAngle = xAngle + vrx;
  yAngle = yAngle + vry;
}

void biasCorrection(){
  // At the beginning of every 100 readings,
  // take a measurement with receiver bias correction
  
  if ( cal_cnt % 100 == 0 ) {
    dist = lidarLite.distance();      // With bias correction
    //println(cal_cnt);
  } else {
    dist = lidarLite.distance(false); // Without bias correction
  }

  // Increment reading counter
  cal_cnt++;  
}