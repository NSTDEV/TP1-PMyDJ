class Player extends GameObject {

  Player(float x, float y, float size) {
    super(x, y, size, "/assets/Player.png");
  }

  void updatePosition() {
    this.x = mouseX;
    this.y = mouseY;
  }

  void draw() {
    pushMatrix();
    translate(x, y);
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
