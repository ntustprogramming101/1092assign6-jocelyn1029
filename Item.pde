class Item {
	boolean isAlive;
	float x, y;
	float w = SOIL_SIZE;
	float h = SOIL_SIZE;

	void display(){
    //image(cabbage,x,y);
    //int r;
    //r=int(random(0,2));
    //if (r==0){
    //  image(cabbage,x,y);
    //}else{
    //  image(clock,x,y);
    //}
  }
	void checkCollision(Player player){
    if(this.x<player.x+SOIL_SIZE&&
    this.x+SOIL_SIZE>player.x&&
    this.y<player.y+SOIL_SIZE&&
    this.y+SOIL_SIZE>player.y){
    }
}

	Item(float x, float y){
		isAlive = true;
		this.x = x;
		this.y = y;
    //SOIL_SIZE * floor(random(SOIL_COL_COUNT))
    //SOIL_SIZE * ( i * 4 + floor(random(4)));
	}
}
