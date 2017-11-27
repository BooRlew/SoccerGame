class KickDirection {
  //data
  float direction = 0;
  float timeInterval, lastChange;
  boolean isRising = true;
  float theta;

  //constructor
  KickDirection() {
    timeInterval = 10;
  }

  //behaviour
  float kickChange(Ball someBall) {
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

    //Create the indicator of direction
    theta = map(direction, -5, 5, 180, 0);
    theta = radians(theta);
    //println(theta);
    
    strokeWeight(5);
    
    line(width/2, height/2 + height/4, width/2 + 100 * cos(theta),height/2 + height/4 - 100 * sin(theta));
    
    pushMatrix();
    
    //draw the arrow
    fill(0);
    translate(width/2 + 100 * cos(theta),height/2 + height/4 - 100 * sin(theta));
    rotate((theta) * -1);
    triangle(0, 0, -10, -5, -10, 5);
    
    strokeWeight(1);
    
    popMatrix();
    return direction;
  }

}