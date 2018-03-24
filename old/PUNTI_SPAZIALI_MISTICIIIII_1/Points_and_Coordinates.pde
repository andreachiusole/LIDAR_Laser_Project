//+----------------------------------------------------------------+
//| function to split the content of element at the array index (i)|
//| into the coordinates (x,y,z) of the point                      |
//+----------------------------------------------------------------+

void splitting(String coordinates){
  
  //search the division marks
  int firstIndex = coordinates.indexOf(';');  // sostituibile con 7
  int secondIndex  = coordinates.indexOf(';', (firstIndex+1));
  
  //get the value of the coordinates
  String xStr = coordinates.substring(0,firstIndex);
  String yStr = coordinates.substring(firstIndex, secondIndex);
  String zStr = coordinates.substring(secondIndex, '\0');
    
  points.append(float(xStr));
  points.append(float(yStr));
  points.append(float(zStr));
}


void display(int max){
  for(int i=1; i < max; i++){
    x=points.get(i*3);
    y=points.get((i*3)+1);
    z=points.get((i*3)+2);
        
    //stroke(colour);
    line(xP,yP,zP,x,y,z);
    
    xP=x;
    yP=y;
    zP=z;
  }
}