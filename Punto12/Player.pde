class Player extends GameObject {

  Player(PVector position, float size) {
    super(position, size, "/assets/Player.png");
  }

  void updatePosition() {
    position.set(mouseX, mouseY);
  }

  void display() {
    imageMode(CENTER);
    
    if (sprite != null) {
      image(sprite, position.x, position.y, size, size);
    } else {
      fill(255, 0, 0);
      ellipse(position.x, position.y, size, size);
    }
  }
}
