class Tank extends GameObject {
  private float angle, shootRange, lastBullet, bulletInterval;
  private ArrayList<Bullet> bullets;

  Tank(PVector position, float size, float shootRange) {
    super(position, size, "/assets/Tank.png");
    this.shootRange = shootRange;
    
    angle = 0;
    bullets = new ArrayList<>();
    bulletInterval = 500;
    lastBullet = 0;
  }

  void focusAndFire(PVector target) {
    float distance = dist(position.x, position.y, target.x, target.y);

    if (distance < shootRange) {
      PVector distanceCoordinates = new PVector(target.x - position.x, target.y - position.y);
      angle = atan2(distanceCoordinates.y, distanceCoordinates.x);

      if (millis() - lastBullet > bulletInterval) {
        bullets.add(new Bullet(new PVector(position.x, position.y), 35, angle));
        lastBullet = millis();
      }
    }
  }

  void reload() {
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      b.move();
      b.display();

      if (b.shouldRemove(player)) {
        bullets.remove(i);
      }
    }
  }

  void display() {
    pushMatrix(); //Guarda la matriz actual.
    imageMode(CENTER);
    translate(position.x, position.y);
    rotate(angle);

    image(sprite, 0, 0, size, size);

    popMatrix();
    reload();
  }
}
