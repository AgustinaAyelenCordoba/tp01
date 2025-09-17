private Ball ball;
private Platform platform;
private int attempts; 
private boolean gameOver;

public void setup() {
  size(600, 400);
  resetGame(); 
}

public void draw() {
  background(#FA67F3);
 if (!gameOver) {
  ball.update();
  ball.display();
  ball.checkEdges();
  ball.checkPlatform(platform);
  platform.display();
  platform.move();

 // Mostrar intentos restantes
  textSize(24);
  fill(#9B0093);
  text("Intentos: " + attempts, 50, 30);


   // Game Over
  if (ball.y > height) {
    attempts--; // Restar un intento
    if (attempts > 0) {
      // Reiniciar la bola
      ball = new Ball(300, 200, 20, 3, 3);
    } else {
      gameOver = true; 
      }
    }
  } else {
    displayGameOver(); 
  }
}
  
private void resetGame() {
  ball = new Ball(300, 200, 20, 3, 3);
  platform = new Platform(250, 380, 100, 10);
  attempts = 3; 
  gameOver = false; 
}

private void displayGameOver() {
  textSize(32);
  fill(#9B0093);
  text("¡Game Over!", width / 2 , height / 2);
  drawRestartButton(); 
}

private void drawRestartButton() {
  fill(#B415E5); 
  rect(width / 2 - 50, height / 2 + 50, 100, 40); 
  fill(0); 
  textSize(16);
  textAlign(CENTER);
  text("Reiniciar", width / 2, height / 2 + 75); 
}

public void mousePressed() {
  
  if (gameOver && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
    resetGame(); 
  }
}
