class KickDirection {
  //data
  float direction = 0;
  float timeInterval, lastChange;
  boolean isRising = true;

  //constructor
  KickDirection() {
    //direction = 0;//random(-5, 5); 
    timeInterval = 500;
  }

  //behaviour
  float kickChange(Ball someBall) {
    //text(direction, width/2, height/2);
    if (!someBall.ballmoving) {
      if (millis() > lastChange + timeInterval) {
        if (isRising) {
          direction ++;
          lastChange = millis();
          if (direction >= 5) {
            isRising = false;
          }
        } else if (!isRising) {
          direction --;
          lastChange = millis();
          if (direction <= -5) {
            isRising = true;
          }
        }
      }
    }
    println(direction);
    return direction;
  }

}