class Fireball extends GameObject {
  PVector direction;
  float speed;
  boolean hasHit;

  Fireball(PVector pos, PVector dir, float size, float speed) {
    super(pos.x, pos.y, size, "/assets/Fire.png");
    this.direction = dir.copy();
    this.speed = speed;
  }

  void move() {
    position.add(direction.copy().mult(speed));
  }

  boolean shouldRemove(Player player) {
    if(dist(position.x, position.y, player.position.x, player.position.y) < (size + player.size) / 2){
      hasHit = true;
    } else if(position.x < 0 || position.x > width || position.y < 0 || position.y > height){
      hasHit = true;
    } else {
      hasHit = false;
    }
    return hasHit;
  }
}
