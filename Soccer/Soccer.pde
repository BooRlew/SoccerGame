Ball ball;
Goalie goalie;
KickDirection kick;
Field net;
kickspeed power;


float xSpeed, ySpeed;
int state, goals;

void setup() {
  size(600, 800);
  frameRate(100);

  state = 0;
  goals = 0;

  ball = new Ball();
  goalie = new Goalie();
  kick = new KickDirection();
  power = new kickspeed();
  net = new Field();
}

void draw() {
  println(state);
  background(18, 183, 40);

  textSize(30);
  text(goals, 10, 40);
  textSize(12);

  if (state == 0) {
    if (mouseX > 100 && mouseX < 500 && mouseY > 400 && mouseY < 600) {
      fill(10, 90, 20);
      if (mousePressed) {
        state = 1;
      }
    } else {
      fill(15, 140, 25);
    }
    rect(100, 400, 400, 200);
    fill(0);
    textSize(140);
    text("Start", 140, 540);
    textSize(12);
  }

  if (state == 1) {

    net.display();
    goalie.displaygoalie();
    goalie.movegoalie();

    if (ball.ballmoving == true) {
    } else {
      text(kick.kickChange(ball), width/2, height/2);
      text(power.kickSpeed(ball), width/2+25, height/2+25);
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

    if (ball.x > 150 && ball.x < width - 150 && ball.y < 10 && ball.y > -10) {
      goals ++;
      state = 3;
      
    } else if (ball.x < 150 || ball.x > width - 150 && ball.y < 0) {
      state = 3;
      
    } else if (ball.y > height) {
      state = 3;
    }
  }
  if (state == 3) {
    net.display();
    textSize(45);
    text("Click to play again", 100, 500);
    textSize(12);
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
  if (state == 1) {
    ball.dx = kick.direction;
    ball.dy = power.ballspeed;
    ball.ballmoving = true;
  } 
  if (state == 3) { 
    state = 1;
    ball = new Ball();
    goalie = new Goalie();
    kick = new KickDirection();
    power = new kickspeed();
    net = new Field();
  }
}