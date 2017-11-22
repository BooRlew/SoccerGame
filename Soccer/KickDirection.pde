class KickDirection{
  //data
  float direction;
  
  //constructor
  KickDirection() {
    direction = random(-5, 5); 
  }
  
  //behaviour
  float kickX(){
    return direction; 
  }
}