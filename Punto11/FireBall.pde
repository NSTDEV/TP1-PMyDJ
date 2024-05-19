class Fireball extends GameObject {
  private PVector direction;
  private float speed;
  private boolean hasHit;

  Fireball(PVector position, PVector direction, float size, float speed) {
    super(position, size, "/assets/Fire.png");
    this.direction = direction.copy();
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
