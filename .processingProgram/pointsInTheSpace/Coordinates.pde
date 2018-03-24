//+----------------------------------------------------------------+
//| function to split the content of element at the array index (i)|
//| into the coordinates (x,y,z) of the point                      |
//+----------------------------------------------------------------+

void splitting(String coordinates){
  Point p;

  //search the division marks
  int firstIndex = coordinates.indexOf(';');
  int secondIndex  = coordinates.indexOf(';', (firstIndex+1));
  
  //get the value of the coordinates
  String xStr = coordinates.substring(0,firstIndex);
  String yStr = coordinates.substring(firstIndex, secondIndex);
  String zStr = coordinates.substring(secondIndex, '\0');
  
  p = new Point(int(xStr),int(yStr),int(zStr));

  points.append(p);
}



//+----------------------------------------------------------------+
//| function to display all the points memorized until now         |
//+----------------------------------------------------------------+


void display(int max){
  Point p = new Point();

  for(int i = 0; i < max; i++){
    p = points.get(i);
    x = p.xValue();
    y = p.yValue();
    z = p.zValue();
        
    //stroke(colour);
    if(i!=0){
      line(xP,yP,zP,x,y,z);
    }

    xP = x;
    yP = y;
    zP = z;
  }
}