class kickspeed{
  float ballspeed;
  
  kickspeed(){
    ballspeed = 0;
  }
  void changespeed(){
    float kicksSpeed(Ball someBall) {
    //set the 'x' speed of the ball based on time passed
    if (!someBall.ballmoving) {
      
      if (millis() > lastChange + timeInterval) {
        
        if (isRising) {
          direction += 0.1;
          lastChange = millis();
          
          if (direction >= 3.5) {
            isRising = false;
          }
        } else if (!isRising) {
          direction -= 0.1;
          lastChange = millis();
          
          if (direction <= -3.5) {
            isRising = true;
          }
        }
      }
    }
  }
}