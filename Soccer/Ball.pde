class Player{
  //data
  float x, y;
  
  //constructor
  Player(){
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
    x += dx; 
    y -= dy;
  }
  
  
  
  
}