//+----------------------------------------------------------------+
//| function to display all the points memorized until now         |
//+----------------------------------------------------------------+

void display(int M){
  private:
    Point p = new Point();
    int x=0, y=0, z=0, xP=0, yP=0, zP=0;
    int blue=0, red=0;

    for(int i = 0; i < M; i++){
      p = points.get(i);
      x = p.xValue();
      y = p.yValue();
      z = p.zValue();
      
      if(i != 0){
        //the color changes in according to the depth of the point 
        blue = map(z, 5, 40000, 0, 255);;
        red = 255-blue;
        stroke(red,blue,0);
        
        line(xP,yP,zP,x,y,z);
      } 

      //the last point will be connected with the Origin Point through a red line
      if(i == M-1){
        stroke(150,0,0);
        line(x,y,z,0,0,0);
      }

      xP = x;
      yP = y;
      zP = z;
    }
}