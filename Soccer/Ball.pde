class Ball{
  //data
  float x, y;
  
  //constructor
  Ball(){
    x = width/2;
    y = height/2 + height/4; 
  }
  
  //behaviour
  void display(){
    fill(255);
    ellipseMode(CENTER);
    ellipse(x, y, 50, 50);
  
  }
  
  void move(float dx, float dy){
    if (x <= 25 || x <= width - 25){
      dx *= -1; 
    }
    x += dx; 
    y -= dy;
  }
  
  
  
  
}