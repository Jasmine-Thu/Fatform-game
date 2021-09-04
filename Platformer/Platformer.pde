float gravity = 0.4;
Player p = new Player( 350, 100);
Enemy e = new Enemy( 700, 452, 60, 80);
Bullet l = new Bullet(p.x, p.y);
PImage img;
PImage img1;
ArrayList <Block> blocks = new ArrayList < Block>();
ArrayList<Bullet_e> bulletes = new ArrayList<Bullet_e>();

void setup() {
  size( 1024, 512);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  img = loadImage("platform.png");
  img1 = loadImage("enemy.png");
  blocks.add(new Block(300, 300, 100, 30));
  blocks.add(new Block(535, 200, 100, 30));
  blocks.add(new Block(770, 350, 100, 30));
  blocks.add(new Block(1050, 250, 100, 30));
}

void draw() {
  image(img, 0, 0);
  p.draw();
  p.update();
  for ( Block b : blocks) {
    b.draw();
    b.isHit(p);
    b.move();
  }
  l.update();
  e.draw();
  e.pointAt();
  e.move();

  for (Bullet_e bes : bulletes) {
    bes.draw();
    bes.update();
  }
}



void keyPressed() {
  if ( key == 'z') {
    p.moveLeft();
  }

  if ( key == 'c') {
    p.moveRight();
  }
  if (key == ' ') {
    p.jump();
  }
  if (key=='s') {
    p.shoot(l);
  }
}
