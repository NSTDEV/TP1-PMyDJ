Tank tank;
Player player;

void setup() {
  size(1000, 700);
  tank = new Tank(width / 2, height / 2, 110, 250);
  player = new Player(mouseX, mouseY, 55);
  
  noCursor();
}

void draw() {
  background(#8bac0f);
  
  tank.rotateToTarget(mouseX, mouseY);
  tank.shoot(mouseX, mouseY);
  tank.reload();
  player.draw();
  player.updatePosition();
  
  translate(width / 2, height / 2);
  tank.draw();
}
