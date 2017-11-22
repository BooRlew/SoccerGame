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
  }
  
  void displaygoalie(){
    rectMode(CENTER);
    fill(0);
    rect(goaliex, goaliey, goaliewidth, goalieheight);
  }
  
  void movegoalie(){
    goaliex += goaliespeed;
    if ((goaliex >= goalieright) || (goaliex <= goalieleft)){
      goaliex *= -goaliespeed;
    }
  }
}