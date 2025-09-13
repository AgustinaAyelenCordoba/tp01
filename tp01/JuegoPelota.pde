private Ball ball;
private Platform platform;

public void setup() {
  size(600, 400);
  ball = new Ball(300, 200, 20, 3, 3);
  platform = new Platform(250, 380, 100, 10);
}

public void draw() {
  background(#FA67F3);

  ball.update();
  ball.display();
  ball.checkEdges();
  ball.checkPlatform(platform);

  platform.display();
  platform.move();

  // Game Over
  if (ball.y > height) {
    textSize(32);
    fill(#9B0093);
    text("¡Game Over!", width/2 - 100, height/2);
    noLoop();
  }
}
