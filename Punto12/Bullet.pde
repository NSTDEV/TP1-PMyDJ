class Bullet extends GameObject {
  private float bulletSpeed, bulletDirection;

  Bullet(PVector position, float size, float bulletDirection) {
    super(position, size, "/assets/BulletTank.png");
    this.bulletDirection = bulletDirection;
    bulletSpeed = 10;
  }

  void move() {
    position.x += bulletSpeed * cos(bulletDirection);
    position.y += bulletSpeed * sin(bulletDirection);
  }

  boolean bulletCollision() {
    boolean hit = false;

    if (position.x < 0 || position.x > width || position.y < 0 || position.y > height) {
      hit = true;
    }
    
    return hit;
  }

  void display() {
    pushMatrix(); //Guarda la matriz de actual.
    imageMode(CENTER);
    translate(position.x, position.y);
    rotate(bulletDirection);
    
    if (sprite != null) {
      image(sprite, 0, 0, size, size);
    } else {
      fill(255, 0, 0);
      ellipse(0, 0, size, size);
    }
    
    popMatrix();
  }
}
