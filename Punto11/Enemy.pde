class Enemy extends GameObject {
  private float lastFireballTime, fireballInterval;

  Enemy(PVector position, float size) {
    super(position, size, "/assets/Skull.png");
    lastFireballTime = 0;
    fireballInterval = 500; // Millisegundos
  }

  boolean detectPlayer(Player player) {
    PVector direction = PVector.sub(player.position, position);
    float angle = degrees(atan2(direction.y, direction.x));

    //Arriba y abajo
    return angle >= -30 && angle <= 30;
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
