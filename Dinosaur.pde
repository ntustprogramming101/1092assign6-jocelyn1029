class Dinosaur extends Enemy{
  // Requirement #4: Complete Dinosaur Class

  final float TRIGGERED_SPEED_MULTIPLIER = 5;
  float speed = 1f;
  float currentSpeed = speed;

  // HINT: Player Detection in update()

  Dinosaur(float x, float y){
    super(x, y);
  }

  void display(){
    pushMatrix();
    translate(x, y);
    if (currentSpeed > 0) {
      scale(1, 1);
      image(dinosaur, 0, 0, w, h);
    } else {
      scale(-1, 1);
      image(dinosaur, -w, 0, w, h);
    }  
    popMatrix();
  }

  void update(){
    if(player.y == y && abs(currentSpeed) == speed) {
      if((player.x > x && currentSpeed > 0) || (player.x < x && currentSpeed < 0)){
        currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;
      }
    }

    if(player.y != y && abs(player.y - y) >= h && abs(currentSpeed) == speed * TRIGGERED_SPEED_MULTIPLIER){
      currentSpeed /= TRIGGERED_SPEED_MULTIPLIER;
    }

    if(x + w >= width || x <= 0) currentSpeed *= -1;
    x += currentSpeed;
  }

  /*
  float currentSpeed = speed
  If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
    currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
  }
  */
}
