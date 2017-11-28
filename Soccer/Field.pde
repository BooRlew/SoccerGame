class Field {

  //data
  float netSpace;
  float postSize;
  float postY;

  //constructor
  Field() {
    netSpace = 150;
    postSize = 25;
    postY = 5;
  }

  //behaviour
  void display() {
    fill(0, 0);
    strokeWeight(5);
    stroke(255);

    //draw circle at top of crease
    ellipseMode(CENTER);
    ellipse(width/2, 250, 250, 200);

    //draw boxes of the crease
    rectMode(CORNER);
    fill(18, 183, 40);
    rect(50, postY, width - 100, 250);
    fill(0, 0);

    rect(netSpace, postY, width - netSpace * 2, 100);

    //make goal line go all the way across
    line(0, postY, width, postY);
    
    //draw penalty mark
    fill(255);
    ellipse(width/2, 175, 4, 4);


    strokeWeight(1);
    stroke(0);
    
    //draw posts
    fill(240, 240, 240);
    ellipse(netSpace, postY, postSize, postSize);
    ellipse(width - netSpace, postY, postSize, postSize);
  }
}