Tank tank;
PImage player;

void setup() {
  size(1000, 700);
  tank = new Tank(width / 2, height / 2, 110, 250, "/assets/Tank.png");
  player = loadImage("/assets/Player.png");
  player.resize(70, 70);
  
  noCursor();
}

void draw() {
  background(#8bac0f);
  
  tank.rotateToTarget(mouseX, mouseY);
  tank.shoot(mouseX, mouseY);
  tank.reload();
  image(player, mouseX, mouseY);
  
  translate(width / 2, height / 2);
  tank.draw();
}
