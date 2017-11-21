Player ball;

void setup(){
  size(600, 800);
  
  ball = new Player();
  
}

void draw(){
  background(18, 183, 40);
  
  ball.display();
  
  ball.move(0,3);
}