//+----------------------------------------------------------------+
//| function to split the content of element at the array index (i)|
//| into the coordinates (x,y,z) of the point                      |
//+----------------------------------------------------------------+

void splitting(int index){
  //get the string of the coordinates of the point to draw
  String coordinates = points.get(index);
  
  //search the division marks
  int firstIndex = coordinates.indexOf(';');  // sostituibile con 7
  int secondIndex  = coordinates.indexOf(';', (firstIndex+1));
  
  //get the value of the coordinates
  String xStr = coordinates.substring(0,firstIndex);
  String yStr = coordinates.substring(firstIndex, secondIndex);
  String zStr = coordinates.substring(secondIndex, '\0');
  
  x = int(xStr);
  y = int(yStr);
  z = int(zStr);
  
  //same thing for the previous point to make the line
  coordinates = points.get(index-1);
  
  //search the division marks
  firstIndex = coordinates.indexOf(';');
  secondIndex  = coordinates.indexOf(';', (firstIndex+1));
  
  //get the value of the coordinates
  String xPStr = coordinates.substring(0,firstIndex);
  String yPStr = coordinates.substring(firstIndex, secondIndex);
  String zPStr = coordinates.substring(secondIndex, '\0');
  
  xP = int(xPStr);
  yP = int(yPStr);
  zP = int(zPStr);
  
}