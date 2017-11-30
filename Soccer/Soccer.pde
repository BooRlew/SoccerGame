Ball ball;
Goalie goalie;
KickDirection kick;
Field net;
kickspeed power;


float xSpeed, ySpeed;

void setup() {
  size(600, 800);
  frameRate(100);

  ball = new Ball();
  goalie = new Goalie();
  kick = new KickDirection();
  power = new kickspeed();
  net = new Field();
}

void draw() {
  background(18, 183, 40);

  goalie.displaygoalie();
  goalie.movegoalie();
  
  net.display();
  
  if (ball.ballmoving == true) {
  } else {
    text(kick.kickChange(ball), width/2, height/2);
    text(kick.kickChange(ball), width/2+25, height/2+25);
  }
  ball.display();

  if (ball.ballmoving == true) {
    ball.move();
  }
  float cx = ball.x;
  float cy = ball.y;
  float r = 25;
  float sx = goalie.goaliex;
  float sy = goalie.goaliey;
  float sw = goalie.goaliewidth;
  float sh = goalie.goalieheight;

  boolean hit = circleRect(cx, cy, r, sx, sy, sw, sh);
  if (hit) {
    //ball.dx *= -1;
    ball.dy *= -1;
  }
}

boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  float testX = cx;
  float testY = cy;

  if (cx < rx)         testX = rx;      
  else if (cx > rx+rw) testX = rx+rw;   
  if (cy < ry)         testY = ry;      
  else if (cy > ry+rh) testY = ry+rh;   

  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  if (distance <= radius) {
    return true;
  }
  return false;
}

void mousePressed() {
  ball.ballmoving = true;
  ball.dx = kick.direction;
  ball.dy = power.ballspeed;
}