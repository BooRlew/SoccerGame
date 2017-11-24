class KickDirection {
  //data
  float direction = 0;
  float timeInterval, lastChange;
  boolean isRising = true;

  //constructor
  KickDirection() {
    //direction = 0;//random(-5, 5); 
    timeInterval = 50;
  }

  //behaviour
  float kickChange(Ball someBall) {
    //text(direction, width/2, height/2);
    if (!someBall.ballmoving) {
      if (millis() > lastChange + timeInterval) {
        if (isRising) {
          direction += 0.1;
          lastChange = millis();
          if (direction >= 5) {
            isRising = false;
          }
        } else if (!isRising) {
          direction -= 0.1;
          lastChange = millis();
          if (direction <= -5) {
            isRising = true;
          }
        }
      }
    }
    println(direction);
    //rect(width/2 + direction*30, height/2 + height/6, 10, 10);
    line(width/2, height/2 + height/4, width/2 + direction*30, height/2 + height/6); 
    return direction;
  }

}