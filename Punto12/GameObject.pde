class GameObject {
  protected PVector position;
  protected float size;
  protected PImage sprite;

  GameObject(PVector position, float size, String spriteRoute) {
    this.position = position;
    this.size = size;
    
    sprite = loadImage(spriteRoute);
  }

  void display() {
    imageMode(CENTER);
    image(sprite, position.x, position.y, size, size);
  }
}
