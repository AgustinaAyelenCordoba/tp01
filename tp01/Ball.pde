class Ball {
 private float x;
 private float y;
 private float size;
 private float dx, dy;

  Ball(float x, float y, float size, float dx, float dy) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.dx = dx;
    this.dy = dy;
  }

  public void update() {
    x += dx;
    y += dy;
  }

 public void display() {
  
    ellipse(x, y, size, size);
  }

 public void checkEdges() {
    if (x < 0 || x > width) dx *= -1;
    if (y < 0) dy *= -1;
  }

  public void checkPlatform(Platform p) {
    if (y + size/2 >= p.y &&
        x > p.x &&
        x < p.x + p.w) {
      dy *= -1;
      y = p.y - size/2; // Evita quedarse pegada
    }
  }
}
