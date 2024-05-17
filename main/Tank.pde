class Tank extends GameObject {
  float angle, shootRange;
  boolean shooting = false;
  Bullet bullet;

  Tank(float x, float y, float size, float shootRange, String spriteRoute) {
    super(x, y, size, spriteRoute);
    this.shootRange = shootRange;
    this.angle = 0;
  }

  void rotateToTarget(float targetX, float targetY) {
    float distancia = dist(this.x, this.y, targetX, targetY);
    if (distancia < shootRange) {
      float dx = targetX - this.x;
      float dy = targetY - this.y;
      this.angle = atan2(dy, dx);
    }
  }

  void shoot(float targetX, float targetY) {
    float distance = dist(this.x, this.y, targetX, targetY);
    if (distance < shootRange && !shooting) {
      bullet = new Bullet(this.x, this.y, 35, this.angle, "/assets/BulletTank.png");
      shooting = true;
    }
  }

  void reload() {
    if (shooting && bullet != null) {
      bullet.mover();
      bullet.draw();
      if (bullet.targetFocus()) {
        shooting = false;
        bullet = null;
      }
    }
  }

  void draw() {
    pushMatrix();
    rotate(angle);
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
