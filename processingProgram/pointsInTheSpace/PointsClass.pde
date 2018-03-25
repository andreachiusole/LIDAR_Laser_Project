//+----------------------------------------------------------------+
//| Class that defines the type of the points                      | 
//+----------------------------------------------------------------+

class Point{
  private:
    //variables declaration
    int x = 0;
    int y = 0;
    int z = 0;
  
    //variables initializations
    Point(int a, int b, int c){
      x = a;
      y = b;
      z = c;
    }
  
  public:
    //methods
    int xValue(){
      return(x);
    }
    int yValue(){
      return(y);
    }
    int zValue(){
      return(z);
    }
}