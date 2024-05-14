class GameObject {
  PVector position;
  float size;

  GameObject(float x, float y, float size) {
    this.position = new PVector(x, y);
    this.size = size;
  }

  //Imagen/forma.
  void display(int objColor) {
    fill(objColor);
    ellipse(position.x, position.y, size, size);
  }
}
