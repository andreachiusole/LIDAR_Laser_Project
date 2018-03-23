//+----------------------------------------------------------------+
//| functions for the serial data reception from Arduino to        |
//| Processing of the coordinates of the points.                   |
//| The data that processing will receive is in this format:       |
//|            string("xxxxx;yyyyy;zzzzz\n")                    |
//+----------------------------------------------------------------+

void serialEvent(Serial myPort){
  
  String str = myPort.readStringUntil('\n');
  
  if (str != null) {
    str = str.substring(0,(str.length()-1));
    points.append(str);
    pointsNumber++;
    myPort.clear();
  }
  
}