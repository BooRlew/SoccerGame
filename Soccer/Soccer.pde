Ball ball;

float xSpeed, ySpeed;

void setup(){
  size(600, 800);
  
  ball = new Ball();
  
  xSpeed = 3;
  ySpeed = 3;
  
}

void draw(){
  background(18, 183, 40);
  
  ball.display();
  
  ball.move(xSpeed,ySpeed);
}