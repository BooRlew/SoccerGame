class Ball {
  //data
  float x, y;
  float dx, dy;
  
  KickDirection kick;
  //constructor
  Ball() {
    x = width/2;
    y = height/2 + height/4;
    
    kick = new KickDirection(); 
    
    dx = kick.kickX();
    dy = 3;
  }

  //behaviour
  void display() {
    //fill(255);
    ellipseMode(CENTER);
    ellipse(x, y, 50, 50);
  }

  void move(){//float _dx,float  _dy) {
    //dx = _dx;
    //dy = _dy;
    if (mousePressed) dx = kick.kickX();
    
    x += dx; 
    y -= dy;
    if (x <= 25) {
      //x = 30;
      dx *= -1; 
    }
    else if (x >= width - 25) { 
      //x = width-30;
      dx *= -1;
    }
  }
}