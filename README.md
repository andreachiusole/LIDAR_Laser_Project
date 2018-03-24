# LIDAR_Laser_Project

## Aim of the project

The finality of this project is to scan a 3D ambient using a lidar laser attached to a couple of servomotors, which are controlled by the Arduino Mega, and then, via the serial connection, recreate the ambient with processing.
The orientation of the laser can be automatic, so the laser will start from the bottom left point and then take all the measures of the points, or manual, so the user can decide which part of the ambient has to be analyzed

## The LIDAR-Lite v3 sensor

This sensor is an high-performance optical distance measurement sensor from Garmin™.
The range of the sensor goes from 5 cm to 40 m and his sensibility is +/- 2.5 cm at distances greater than 1 meter.

![sensor image](https://static.garmincdn.com/en/products/010-01722-00/g/cf-lg.jpg)

## TO DO

#### Arduino

* [ ] LCD display control
* [ ] values transmitted in centimeters

#### Processing

* [x] draw the red line to indicate where the laser is pointing
* [x] create the class Point 
  * [x] the class has to have some methods to extract the value of the coordinates from the Point object

##### Addictional things to do

* [x] the color of the lines changes in according to the distance of the points from the origin
* [ ] check if the zoom function create problems in the execution od the program
