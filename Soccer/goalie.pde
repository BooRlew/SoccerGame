class goalie{
  float goaliex, goaliey;
  float goaliespeed;
  float goalieleft, goalieright;
  
  goalie(){
    goaliex = width/2;
    goaliey = height/4;
  }
  
  void movegoalie(){
    goaliex += goaliespeed;
    if ((goaliex >= goalieright) || (goaliex <= goalieleft)){
      goaliex *= -goaliespeed;
    }
  }
}