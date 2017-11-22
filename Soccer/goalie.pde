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
    //rect(100, 100, 100, 100);
  }
  
  void movegoalie(){
    goaliex += goaliespeed;
    if ((goaliex >= goalieright) || (goaliex <= goalieleft)){
      goaliex *= -goaliespeed;
    }
  }
}