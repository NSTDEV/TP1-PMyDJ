class GameObject {
  protected PVector position;
  protected PImage image;
  protected float size;
  
  GameObject(PVector position, float size, String imageName) {
    this.position = position;
    this.size = size;
    image = loadImage(imageName);
    image.resize((int)size, (int)size);
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
  }
}
