# LIDAR_Laser_Project

## Aim of the project

The finality of this project is to scan a 3D ambient using a lidar laser attached to a couple of servomotors, which are controlled by the Arduino Mega, and then, via the serial connection, recreate the ambient with processing.
The orientation of the laser can be automatic, so the laser will start from the bottom left point and then take all the measures of the points, or manual, so the user can decide which part of the ambient has to be analyzed

## TO DO

#### Arduino

* [ ] LCD display control
* [ ] values transmitted in centimeters

#### Processing

* [x] draw the red line to indicate where the laser is pointing
* [x] create the class Point 
  * the class has to have some methods to extract the value of the coordinates from the Point object

##### Addictional things to do

* [ ] the color of the lines changes in according to the distance of the points from the origin
* [ ] check if the zoom function create problems in the execution od the program