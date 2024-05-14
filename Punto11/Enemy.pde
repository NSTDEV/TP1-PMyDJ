class Enemy extends GameObject {
  float fieldOfView = radians(30); // 30 degrees in radians
  float lastFireballTime = 0;
  float fireballInterval = 500; // Millisegundos

  Enemy(float x, float y, float size) {
    super(x, y, size);
  }

  //Arco para mostrar la visión de 30 grados.
  void displayFieldOfView() {
    noFill();
    stroke(255, 0, 0);
    arc(position.x, position.y, size * 4, size * 4, -fieldOfView / 2, fieldOfView / 2);
  }

  boolean detectPlayer(Player player) {
    PVector direction = PVector.sub(player.position, position);
    float angle = degrees(direction.heading());

    // Normalizar el ángulo en el rango de 0 a 360 grados
    if (angle < 0) {
      angle += 360;
    }

    // Verificar si el ángulo está dentro del campo de visión de 30 grados hacia la derecha
    return angle >= 345 || angle <= 15; // Ajustado en 0 grados (derecha)
  }

  void fire(ArrayList<Fireball> fireballs, Player player) {
    if (millis() - lastFireballTime > fireballInterval && detectPlayer(player)) {
      PVector fireballDirection = PVector.sub(player.position, position).normalize();
      PVector fireballPos = PVector.add(position, fireballDirection.copy().mult(size / 2));
      
      fireballs.add(new Fireball(fireballPos, fireballDirection, 10, 4));
      lastFireballTime = millis();
    }
  }
}
