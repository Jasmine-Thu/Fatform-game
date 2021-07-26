class Enemy{
  
  float x,y,r;
  float speedX;
  float speedY;
  
  Enemy( float xx, float yy){
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
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
