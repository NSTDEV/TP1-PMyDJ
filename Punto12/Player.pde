class Player extends GameObject {

  Player(PVector position, float size) {
    super(position, size, "/assets/Player.png");
  }

  void updatePosition() {
    position.set(mouseX, mouseY);
  }
}
