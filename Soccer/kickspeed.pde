class kickspeed{
  float ballspeed;  
  float timeInterval, lastChange;
  boolean isRising = true;
  float theta;
  
  kickspeed(){
    ballspeed = 0;
  }
  float kicksSpeed(Ball someBall) {
    //set the 'x' speed of the ball based on time passed
    if (!  someBall.ballmoving) {
      
      if (millis() > lastChange + timeInterval) {
        
        if (isRising) {
          ballspeed += 0.1;
          lastChange = millis();
          
          if (ballspeed >= 3.5) {
            isRising = false;
          }
        } else if (!isRising) {
          ballspeed -= 0.1;
          lastChange = millis();
          
          if (ballspeed <= -3.5) {
            isRising = true;
            }
          }
        }
      }
    
  
  ////Create the indicator of direction
  //  theta = map(ballspeed, -5, 5, 180, 0);
  //  theta = radians(theta);
  //  //println(theta);
    
  //  strokeWeight(5);
    
  //  line(width/2, height/2 + height/4, width/2 + 100 * cos(theta),height/2 + height/4 - 100 * sin(theta));
    
  //  pushMatrix();
    
  //  //draw the arrow
  //  fill(255);
  //  translate(width/2 + 100 * cos(theta),height/2 + height/4 - 100 * sin(theta));
  //  rotate((theta) * -1);
  //  triangle(0, 0, -10, -5, -10, 5);
    
  //  strokeWeight(1);
    
  //  popMatrix();
    return ballspeed;
  }
}