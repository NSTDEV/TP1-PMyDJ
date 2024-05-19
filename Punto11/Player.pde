class Player extends GameObject {
  Player(PVector position, float size) {
    super(position, size, "/assets/Priest.png");
  }

  void updatePosition() {
    position.x = mouseX;
    position.y = mouseY;
  }
}
