class Fireball extends GameObject {
  PVector direction;
  float speed;

  Fireball(PVector pos, PVector dir, float size, float speed) {
    super(pos.x, pos.y, size, "/assets/Fire.png");
    this.direction = dir.copy();
    this.speed = speed;
  }

  void move() {
    position.add(direction.copy().mult(speed));
  }

  boolean hasHit(Player player) {
    return dist(position.x, position.y, player.position.x, player.position.y) < (size + player.size) / 2;
  }

  boolean isOffScreen() {
    return position.x < 0 || position.x > width || position.y < 0 || position.y > height;
  }
}
