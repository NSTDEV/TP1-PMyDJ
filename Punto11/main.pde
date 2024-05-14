Player player;
Enemy enemy;
ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

void setup() {
  size(600, 400);
  player = new Player(width / 2, height / 2, 20);
  enemy = new Enemy(width / 4, height / 2, 20);
}

void draw() {
  background(255);

  player.display(color(0, 255, 0));
  enemy.display(color(255, 0, 0));
  enemy.displayFieldOfView();

  enemy.fire(fireballs, player);

  for (int i = fireballs.size() - 1; i >= 0; i--) {
    Fireball fireball = fireballs.get(i);
    fireball.move();
    fireball.display(color(255, 150, 0));

    if (fireball.hasHit(player) || fireball.isOffScreen()) {
      fireballs.remove(i);
    }
  }
}

void update(){
  player.updatePosition();
}
