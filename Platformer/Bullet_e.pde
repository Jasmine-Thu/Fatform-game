class Bullet_e {
  float r, g, b;
  PVector pos;
  PVector vel;

  //Bullet_e( float xx, float yy, float dxa, float dya) {
  //  pos = new PVector(xx, yy);
  //  vel = new PVector(dxa, dya);
  //}

  Bullet_e( PVector position, PVector velocity) {

    pos = position;
    vel = velocity;
  }

  void draw() {
    noStroke();
    fill(124, 18, 166);
    circle( pos.x, pos.y, 10);
  }

  void update() {
    pos.add(vel);
  }
}
