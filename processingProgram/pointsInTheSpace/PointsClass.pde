//+----------------------------------------------------------------+
//| Class that defines the type of the points                      | 
//+----------------------------------------------------------------+



class Point{
  
  //variables declaration
  int a = 0;
  int b = 0;
  int c = 0;
  
  //variables initializations
  Point(int d, int e, int f){
    a=d;
    b=e;
    c=f;
  }
  
  //methods
  int xValue(){
    return(a);
  }

  int yValue(){
    return(b);
  }

  int zValue(){
    return(c);
  }
}