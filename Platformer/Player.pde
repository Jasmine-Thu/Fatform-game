class Player {

  float x, y, r;
  float speedX;
  float speedY;

  Player( float xx, float yy) {
    x = xx;
    y = yy;
    speedX = 0;
    speedY = 0;
    r = 20;
  }

  void draw() {
    fill(45, 212, 224);
    circle(x, y, r);
    l.draw();
  }

  void update() {
    speedY += gravity;
    y += speedY;
    x += speedX;


    checkWalls();
  }

  void checkWalls() {
    for (Block b : blocks) {
      if ( y> height - r) {
        speedY =0;
        y = height-r ;
      }
      if ( y< r) {
        speedY =0;
        y = r ;
      }
      if ( x+r > width - 100) {
        x = width -50;
        println( " hit right");
        b.x -= 4;
        e.pos.x -= 4;
      }

      if ( x+r < 100) {
        x= r;
        println( "hit left");
        b.x +=4;
        e.pos.x +=4;
      }
    }
  }

  void moveLeft() {
    //speedX = - 2;
    x -=5;
  }

  void moveRight() {
    x +=5;
    //speedX =  2;
  }

  void jump() {
    speedY -= 10;
  }

  void shoot(Bullet l) {
    l.shoot(this);
  }
}
