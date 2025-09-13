class Platform {
 private float x;
 private float y;
 private float w;
 private float h;

  Platform(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  public void display() {

    rect(x, y, w, h);
  }

  public void move() {
    if (keyPressed) {
      if (keyCode == LEFT) x -= 5;
      if (keyCode == RIGHT) x += 5;
    }
  }
}
