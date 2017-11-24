class KickDirection {
  //data
  int direction = 0;
  float timeInterval, lastChange;
  boolean isRising = true;

  //constructor
  KickDirection() {
    //direction = 0;//random(-5, 5); 
    timeInterval = 500;
  }

  //behaviour
  void kickChange() {
    //text(direction, width/2, height/2);
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
  
  int kickX() {
    return direction;
  }

}