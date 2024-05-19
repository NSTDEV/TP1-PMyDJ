Player player;
Enemy enemy;
ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

void setup() {
  size(800, 600);
  player = new Player(new PVector(0, 0), 50);
  enemy = new Enemy(new PVector(width / 3, height / 2), 80);
  
  noCursor();
}

void draw() {
  background(0);

  player.display();
  player.updatePosition();
  enemy.display();

  enemy.fire(fireballs, player);

  for (int i = fireballs.size() - 1; i >= 0; i--) {
    Fireball fireball = fireballs.get(i);
    fireball.move();
    fireball.display();

    if (fireball.shouldRemove(player)) {
      fireballs.remove(i);
    }
  }
}
