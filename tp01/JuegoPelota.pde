private Ball ball;
private Platform platform;
private int attempts; 

public void setup() {
  size(600, 400);
  ball = new Ball(300, 200, 20, 3, 3);
  platform = new Platform(250, 380, 100, 10);
  attempts=3;
}

public void draw() {
  background(#FA67F3);

  ball.update();
  ball.display();
  ball.checkEdges();
  ball.checkPlatform(platform);

  platform.display();
  platform.move();

 // Mostrar intentos restantes
  textSize(24);
  fill(#9B0093);
  text("Intentos: " + attempts, 10, 30);


   // Game Over
  if (ball.y > height) {
    attempts--; // Restar un intento
    if (attempts > 0) {
      // Reiniciar la bola
      ball = new Ball(300, 200, 20, 3, 3);
    } else {
      textSize(32);
      fill(#9B0093);
      text("¡Game Over!", width/2 - 100, height/2);
      noLoop();
    }
  }
  
}
