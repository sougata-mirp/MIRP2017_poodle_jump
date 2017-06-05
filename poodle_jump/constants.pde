int displayWidth=600, displayHeight=1000;
// Game State
// 0 -- Start Screen
// 1 -- Game Running Screen
// 2 -- Lose Screen
int gameState = 0;

// Velocity Constants
float PLAYER_HORIZ_VELOCITY = 20;
float PLAYER_VERT_VELOCITY = 35;
float MAX_VERT_VELOCITY = 15;

// Physical Constants
float gravity = 1.0;
float restitutionCoeff = 0.95;
float dragCoeff = 0.03;

// Background Color
color bgColor = color(255,253,231);

// Player Parameters
float playerX, playerY;
float playerVx, playerVy;
float playerRadius = 20;
color playerColor = color(179,157,219);

// Max possible Platforms
int lenPlatforms = 30;
// Average number of Platforms on Screen
int numPlatforms = 8;
// Array storing coordinates of Platform
float platforms[][] = new float [lenPlatforms][2];
//Current Platform Index
int platformIndex = 0;
// Platform Parameters
float platformLength = 50, platformHeight = 10;
float platformRadius = platformHeight*0.5;
color platformColor = color(139,195,74);

int score;

int startSize = 100;
color startColor = color(93,64,55);

int loseSize = 50;
color loseColor = color(93,64,55);

// Keyboard Controls
char LEFT = 'a', RIGHT = 'd', UP = 'w';
char RESET = 'r', PAUSE = 'p', START = 's';
boolean left, right, up, reset, pause, start;