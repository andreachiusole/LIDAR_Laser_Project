//+----------------------------------------------------------------+
//| function to display all the points memorized until now         |
//+----------------------------------------------------------------+


void display(int M){
  Point p = new Point();

  for(int i = 0; i < M; i++){
    p = points.get(i);
    x = p.xValue();
    y = p.yValue();
    z = p.zValue();
        
    //stroke(colour);
    if(i != 0){
      line(xP,yP,zP,x,y,z);
    } 

    if(i == M){
      //stroke(RED);
      line(x,y,z,0,0,0);
    }

    xP = x;
    yP = y;
    zP = z;
  }
}