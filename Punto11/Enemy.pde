class Enemy extends GameObject {
  private float lastFireballTime = 0;
  private float fireballInterval = 500; // Millisegundos

  Enemy(float x, float y, float size) {
    super(x, y, size, "/assets/Skull.png");
  }

  boolean detectPlayer(Player player) {
    PVector direction = PVector.sub(player.position, position);
    float angle = degrees(atan2(direction.y, direction.x));

    //Arriba y abajo
    return angle >= -15 && angle <= 15;
  }

  void fire(ArrayList<Fireball> fireballs, Player player) {
    if (millis() - lastFireballTime > fireballInterval && detectPlayer(player)) {
      PVector fireballDirection = PVector.sub(player.position, position).normalize();
      PVector fireballPos = PVector.add(position, fireballDirection.copy().mult(size / 2));

      fireballs.add(new Fireball(fireballPos, fireballDirection, 80, 4));
      lastFireballTime = millis();
    }
  }
}
