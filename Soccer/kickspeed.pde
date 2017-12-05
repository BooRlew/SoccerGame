class kickspeed {
  float ballspeed = 1;
  float timeInterval, lastChange;
  boolean isRising = true;
  float theta;

  kickspeed() {
    //ballspeed = 0;
    timeInterval = 10;
  }
  float kickSpeed(Ball someBall) {
    //set the 'y' speed of the ball based on time passed
    if (!someBall.ballmoving && !powerLock) {

      if (millis() > lastChange + timeInterval) {

        if (isRising) {
          ballspeed += 0.1;
          lastChange = millis();

          if (ballspeed >= 6) {
            isRising = false;
          }
        } else if (!isRising) {
          ballspeed -= 0.1;
          lastChange = millis();

          if (ballspeed <= 1) {
            isRising = true;
          }
        }
      }
    }

    image(meter, width/4, height/2 + height/4, 15, 100);

    fill(0, 0);
    rectMode(CORNER);
    rect(width/4, height/2 + height/4, 15, 100);


    fill(255);

    theta = map(ballspeed, 1, 6, 100, 0);
    fill(255);
    triangle(width/4 + 4, height/2 + height/4 + theta, width/4 - 8, height/2 + height/4 + theta - 8, width/4 - 8, height/2 + height/4 + theta + 8);
    fill(0);

    return ballspeed;
  }
}