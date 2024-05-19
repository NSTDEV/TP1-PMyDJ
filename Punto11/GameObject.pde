class GameObject {
  protected PVector position;
  protected PImage sprite;
  protected float size;
  
  GameObject(PVector position, float size, String imageName) {
    this.position = position;
    this.size = size;
    sprite = loadImage(imageName);
    sprite.resize((int)size, (int)size);
  }
  
  void display() {
    imageMode(CENTER);
    image(sprite, position.x, position.y);
  }
}
