Tank tank;
Player player;

void setup() {
  size(900, 700);
  tank = new Tank(new PVector(width / 2, height / 2), 110, 250);
  player = new Player(new PVector(mouseX, mouseY), 55);

  noCursor();
}

void draw() {
  background(#8bac0f);

  tank.focusAndFire(player.position);
  tank.display();
  
  player.updatePosition();
  player.display();
}
