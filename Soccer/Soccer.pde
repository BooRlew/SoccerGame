Ball ball;
Goalie goalie;
KickDirection kick;

boolean ballmoving = false;
float xSpeed, ySpeed;

void setup(){
  size(600, 800);
  
  ball = new Ball();
  goalie = new Goalie();
  kick = new KickDirection(); 
}

void draw(){
  background(18, 183, 40);
  
  ball.display();
  goalie.displaygoalie();
  goalie.movegoalie();
  kick.kickChange();
  
  if (ballmoving == true){
    ball.move();
  }
}

void mousePressed(){
  ballmoving = true;
}