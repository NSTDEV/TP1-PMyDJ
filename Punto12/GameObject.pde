class GameObject {
  protected PVector position;
  protected float size;
  protected PImage sprite;

  GameObject(PVector position, float size, String spriteRoute) {
    this.position = position;
    this.size = size;
    if (spriteRoute != null && !spriteRoute.isEmpty()) {
      this.sprite = loadImage(spriteRoute);
    }
  }
}
