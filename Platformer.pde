float gravity = 0.1;
Player p = new Player( 200,300);
Enemy e = new Enemy( 700, 400);
Block b = new Block( 300, 300, 100,100);
void setup(){
  size( 800,600);
  ellipseMode(RADIUS);
}

void draw(){
  background(225);
  p.draw();
  p.update();
  e.draw();
  //e.update();
  b.draw();
  b.isHit(p);
}

void keyPressed(){
    if( key == 'z'){
      p.moveLeft();
    }
    
      if( key == 'm'){
       p.moveRight();
     }
     if (key == ' '){
      p.jump();
     }
}
