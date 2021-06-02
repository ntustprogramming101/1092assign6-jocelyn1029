class Robot extends Enemy{
	// Requirement #5: Complete Dinosaur Class
  Laser laser;
	final int PLAYER_DETECT_RANGE_ROW = 2;
	final int LASER_COOLDOWN = 180;
	final int HAND_OFFSET_Y = 37;
	final int HAND_OFFSET_X_FORWARD = 64;
	final int HAND_OFFSET_X_BACKWARD = 16;
  Robot(float x, float y){
    super(x,y);
    laser=new Laser();
  }
  final float TRIGGERED_SPEED_MULTIPLIER = 5;
    float speed = 2f;

  void display(){
   int direction = (speed > 0) ? RIGHT : LEFT;
    pushMatrix();
    translate(x, y);
    if (direction == RIGHT) {
      scale(1, 1);
      image(robot, 0, 0, w, h); 
    } else {
      scale(-1, 1);
      image(robot, -w, 0, w, h); 
    }
    popMatrix();
    laser.update();
    laser.display();
    laser.fire(this.x,this.y,this.x+80,this.y+80);
  }

  void update(){
    x += speed;
    if(x >= width-SOIL_SIZE) speed*=-1;
    if(x <= 0) speed*=-1;
  }
	// HINT: Player Detection in update()
	/*

	boolean checkX = ( Is facing forward AND player's center point is in front of my hand point )
					OR ( Is facing backward AND player's center point (x + w/2) is in front of my hand point )

	boolean checkY = player is less than (or equal to) 2 rows higher or lower than me

	if(checkX AND checkY){
		Is laser's cooldown ready?
			True  > Fire laser from my hand!
			False > Don't do anything
	}else{
		Keep moving!
	}

	*/
}
