class Ball {
  //data
  float x, y;
  float dx, dy;
  boolean ballmoving;

  //constructor
  Ball() {
    x = width/2;
    y = height/2 + height/4;

    ballmoving = false;

    dx = 0;
    dy = 0;
  }

  //behaviour
  void display() {
    fill(255);
    ellipseMode(CENTER);
    ellipse(x, y, 50, 50);
  }

  void move() {

    x += dx; 
    y -= dy;
    if (x <= 25) {
      //x = 30;
      dx *= -1;
    } else if (x >= width - 25) { 
      //x = width-30;
      dx *= -1;
    }
  }
}