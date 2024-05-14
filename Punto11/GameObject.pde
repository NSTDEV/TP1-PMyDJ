class GameObject {
  PVector position;
  PImage image;
  float size;
  
  GameObject(float x, float y, float size, String imageName) {
    position = new PVector(x, y);
    this.size = size;
    image = loadImage(imageName);
    image.resize((int)size, (int)size); //Redimensionar la imagen al tamaño del objeto
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
  }
}
