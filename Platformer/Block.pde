
class Block{
  float x,y,w,h;
  
  Block( float xx, float yy, float ww, float hh){
    x = xx;
    y = yy;
    w = ww;
    h = hh;
  }
  void draw(){
    fill(156, 95, 20);
    rect( x,y,w,h);
  }
  
    
    boolean isHit( Player p){
     if( p.y > y - h/2 - p.r && p.y < y + h/2 +p.r && p.x >x - w/2 - p.r && p.x < x+ w/2 + p.r ){
       if( p.y -p.r> y-h/2 ){
          p.speedY = -p.speedY/2;
          p.y = y +h/2 + p.r;
          println("hitting bottom");
       }
      
       if(p.y + p.r < y + h/2){

          p.y = y- h/2 - p.r;
          p.x -=2; 
          println("hitting top");
       }
        
      if(p.x - p.r <x - w/2  ){

           p.speedY = -p.speedY/2;
          println("hittingleft");
       }
       if(p.x +p.r > x+ w/2 ){

         p.speedY = -p.speedY/2;
          println("hitting right");
       }
       return true;
     }
      
     return false; 
      
      
  }

    void move(){   
    x -= 2;
   if(x< 0){
    x = width ;

   }
    }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
