Ball ball;
Goalie goalie;

boolean ballmoving = false;
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
  //goalie.movegoalie();
  
  if (ballmoving == true){
    ball.move(xSpeed,ySpeed);
  }
}

void mousePressed(){
  ballmoving = true;
}