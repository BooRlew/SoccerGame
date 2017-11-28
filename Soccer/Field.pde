class Field{
  
  //data
  float netSpace;
  float postSize;
  
  //constructor
  Field(){
    netSpace = 150;
    postSize = 25;
  }
  
  //behaviour
  void display(){
    ellipseMode(CENTER);
    fill(255);
    ellipse(netSpace, 5, postSize, postSize);
    ellipse(width - netSpace, 5, postSize, postSize);
  }
   
}