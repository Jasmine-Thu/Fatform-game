class Enemy {

  float w, h;
  float speedX;
  float speedY;
  PVector pos;
  PVector gun;
  boolean isAlive;
  int life;

  Enemy( float xx, float yy, float ww, float hh) {
    w = ww;
    h = hh;
    speedX = 0;
    speedY = 0;
    pos = new PVector(xx, yy);
    gun = new PVector(0, 0);
    isAlive = true;
    life=3;
  }

  void draw() {
    if (isAlive) {
      image(img1, pos.x, pos.y, w, h);
      shoot();
    }
  }
  void move() {
    pos.x -= 0.6;
    if (pos.x< 0) {
      pos.x = width ;
    }
  }
  void pointAt() {
    gun = new PVector(p.x - pos.x, p.y - pos.y );
    gun.normalize();
    //gun.mult(100);
  }
  void shoot() {
    bulletes.add( new Bullet_e( pos.copy(), gun.copy()));
  }
  
   boolean isKilled(Bullet l){ 
     if( dist(l.x, l.y, pos.x,pos.y) <= l.r + w/2) {
       life -= 1;
       l.reset(); 
         if (life<=0){
           isAlive = false;
         }
 
     }
     return isAlive== false; 
   }
}
