class Player extends GameObject {
  Player(float x, float y, float size) {
    super(x, y, size, "/assets/Priest.png");
  }

  void updatePosition() {
    position.x = mouseX;
    position.y = mouseY;
  }
}
