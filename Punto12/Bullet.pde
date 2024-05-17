class Bullet extends GameObject {
  private float bulletSpeed, bulletDirection;

  Bullet(float x, float y, float size, float bulletDirection) {
    super(x, y, size, "/assets/BulletTank.png");
    this.bulletSpeed = 10;
    this.bulletDirection = bulletDirection;
  }

  void move() {
    x += bulletSpeed * cos(bulletDirection);
    y += bulletSpeed * sin(bulletDirection);
  }

  boolean targetFocus() {
    return x < 0 || x > width || y < 0 || y > height;
  }

  void draw() {
    pushMatrix();
    translate(x, y);
    rotate(bulletDirection);
    imageMode(CENTER);
    if (sprite != null) {
      image(sprite, 0, 0, size, size);
    } else {
      fill(255, 0, 0);
      ellipse(0, 0, size, size);
    }
    popMatrix();
  }
}
