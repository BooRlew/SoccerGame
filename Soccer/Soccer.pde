Ball ball;
Goalie goalie;

boolean ballmoving = false;
float xSpeed, ySpeed;

void setup(){
  size(600, 800);
  
  ball = new Ball();
  goalie = new Goalie();
  
  //xSpeed = 1;
  //ySpeed = 2;
  
}

void draw(){
  background(18, 183, 40);
  
  ball.display();
  goalie.displaygoalie();
  //goalie.movegoalie();
  
  if (ballmoving == true){
    ball.move();//xSpeed,ySpeed);
  }
}

void mousePressed(){
  ballmoving = true;
}