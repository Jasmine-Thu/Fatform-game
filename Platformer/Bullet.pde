 class Bullet{
 float x;
 float y;
 float r;
 float vx;
 float vy; 
 
 Bullet( float xx, float yy){
   x=xx;
   y=yy;
   vx=0;
   vy=0;
   r =10;
 }
 
 void draw(){
   fill(45, 212, 224);
   circle(x,y,r);
 }
 
 void update(){
    x=x+vx;
    vy=vy+gravity;
    y=y+vy;
    if (y>=height-50){
      vy=0;
      y=height-50;
    }
 }
 
 void shoot(Player p){
   x=p.x;
   y=p.y;
   vx=10;
 }
    void reset() { 
      x = -150; 
      y = -100; 
   }

}
