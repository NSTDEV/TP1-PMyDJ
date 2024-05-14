Player player;
Enemy enemy;
ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

void setup() {
  size(800, 600);
  player = new Player(width / 2, height / 2, 50);
  enemy = new Enemy(width / 4, height / 2, 80);
}

void draw() {
  background(0);

  player.display();
  enemy.display();
  player.updatePosition();

  enemy.fire(fireballs, player);

  for (int i = fireballs.size() - 1; i >= 0; i--) {
    Fireball fireball = fireballs.get(i);
    fireball.move();
    fireball.display();

    if (fireball.hasHit(player) || fireball.isOffScreen()) {
      fireballs.remove(i);
    }
  }
}
