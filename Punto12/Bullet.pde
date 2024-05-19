class Bullet extends GameObject {
  private float speed, direction;
  private boolean hasHit;

  Bullet(PVector position, float size, float direction) {
    super(position, size, "/assets/BulletTank.png");
    this.direction = direction;
    
    speed = 10;
  }

  void move() {
    position.x += speed * cos(direction);
    position.y += speed * sin(direction);
  }

  boolean shouldRemove(Player player) {
    if (dist(position.x, position.y, player.position.x, player.position.y) < (size + player.size) / 2) {
      hasHit = true;
    } else if (position.x < 0 || position.x > width || position.y < 0 || position.y > height) {
      hasHit = true;
    } else {
      hasHit = false;
    }
    return hasHit;
  }

  void display() {
    pushMatrix(); //Guarda la matriz de actual.
    imageMode(CENTER);
    translate(position.x, position.y);
    rotate(direction);
    
    if (sprite != null) {
      image(sprite, 0, 0, size, size);
    } else {
      fill(255, 0, 0);
      ellipse(0, 0, size, size);
    }
    
    popMatrix();
  }
}
