class Block{
  float x,y,w,h;
  
  Block( float xx, float yy, float ww, float hh){
    x = xx;
    y = yy;
    w = ww;
    h = hh;
  }
  void draw(){
    rect( x,y,w,h);
  }
  
  boolean isHit( Player p){
    if( p.y> y- p.r && p.y <y + p.r && p.x > x- p.r && p.x < x +p.r){
      p.y = y;
      return true;
    }
    return false;
  }
    

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
