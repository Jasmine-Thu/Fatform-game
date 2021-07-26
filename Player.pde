class Player{
  
  float x,y,r;
  float speedX;
  float speedY;
  
  Player( float xx, float yy){
    x = xx;
    y = yy;
    speedX = 0;
    speedY = 0;
    r = 50;
  }
  
  void draw(){
    circle(x,y,r);
  }
  
  void update(){
   speedY += gravity; 
    y += speedY;
    
    checkWalls();
  }
  
  void checkWalls(){
    if( y> height - r){
      speedY =0;
      y = height-r ;
    }
    
    if( x+r > width - 100){
      x = width -50;
      println( " hit right");
      b.x -= 4;
      e.x -= 4;
    }
    
    if( x+r < 100){
      x= r;
      println( "hit left");
      b.x +=4;
      e.x +=4;
    }
  }
  
  void moveLeft(){
    x -=4;
  }
  
   void moveRight(){
     x +=4;
  }
  
  void jump(){
      speedY -= 2;   
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
