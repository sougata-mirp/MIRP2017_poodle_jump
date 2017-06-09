void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  if (gamestate == 0)
    drawStartScreen();
   if (gamestate == 2)
    drawLoseScreen();
    if (gamestate == 1)
    drawGameScreen();
  
}

void drawStartScreen() {
}

void drawLoseScreen() {
}

void drawGameScreen() {
}

void drawPlayer() { 
  background
  fill (playerColor);
  ellipse(playerX,playerY,playerRadius ,playerRadius );
}

void drawPlatforms() {
}

void resetGame(){
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
  // Create Initial Set of Platforms
}

void displayScore() {
  // Show Player Score in a corner
}