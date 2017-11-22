class Goalie{
  float goaliex, goaliey;
  float goaliespeed;
  float goalieleft, goalieright;
  float goaliewidth, goalieheight;
  
  Goalie(){
    goaliex = width/2;
    goaliey = height/4;
    goaliewidth = 100;
    goalieheight = 10;
    goalieright = width;
    goalieleft = 0;
    goaliespeed = 1;
  }
  
  void displaygoalie(){
    rectMode(CENTER);
    fill(0);
    rect(goaliex, goaliey, goaliewidth, goalieheight);
  }
  
  void movegoalie(){
    //println(goaliex);
    goaliex += goaliespeed;
    if ((goaliex >= goalieright-(goaliewidth/2)) || (goaliex <= goalieleft+(goaliewidth/2))){
      goaliespeed *= -1;
    }
  }
}