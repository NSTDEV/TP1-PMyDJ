class GameObject {
  float x, y, size;
  PImage sprite;

  GameObject(float x, float y, float size, String spriteRoute) {
    this.x = x;
    this.y = y;
    this.size = size;
    if (spriteRoute != null && !spriteRoute.isEmpty()) {
      this.sprite = loadImage(spriteRoute);
    }
  }
}
