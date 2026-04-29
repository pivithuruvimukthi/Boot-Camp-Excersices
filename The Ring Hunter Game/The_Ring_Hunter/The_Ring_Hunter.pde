float ballX = 170, ballY = 500;
float ballSize = 35;
float vy = 0, gravity = 0.5, jumpStrength = -11;
int score = 0, lives = 3;

boolean gameOver = false;

ArrayList<Platform> platforms = new ArrayList<Platform>();
ArrayList<Ring> rings = new ArrayList<Ring>();
ArrayList<Robot> robots = new ArrayList<Robot>();

void setup() {
size(1000, 700);
smooth();

platforms.add(new Platform(100, 580, 150));
platforms.add(new Platform(330, 500, 150));
platforms.add(new Platform(270, 360, 150));
platforms.add(new Platform(520, 420, 150));
platforms.add(new Platform(750, 480, 150));
platforms.add(new Platform(100, 240, 150));
platforms.add(new Platform(410, 250, 150));

rings.add(new Ring(225, 210));
rings.add(new Ring(340, 330));
rings.add(new Ring(580, 390));
rings.add(new Ring(790, 450));
rings.add(new Ring(450, 230));

robots.add(new Robot(110, 240 - 45));
robots.add(new Robot(500, 250 - 45));
//robots.add(new Robot(350, 500 - 45));
}
void draw() {
background(100, 180, 255);
text(frameCount/60, 100, 100);

if (gameOver) {
showGameOver();
return;
}

drawSpikes();

for (Platform p : platforms) p.display();

for (int i = rings.size()-1; i >= 0; i--) {
Ring r = rings.get(i);
r.display();
if (dist(ballX, ballY, r.x, r.y) < 30) {
rings.remove(i);
score += 10;
}
}

for (Robot rb : robots) {
rb.display();
if (dist(ballX, ballY, rb.x + 20, rb.y + 20) < 35) {
resetPlayer();
}
}

updatePlayer();
drawUI();
}

void drawSpikes() {
fill(255, 50, 0);
noStroke();
for (int i = 0; i < width; i += 40) {
triangle(i, height, i + 20, height - 60, i + 40, height);
}
}

void updatePlayer() {
fill(50, 255, 50);
stroke(0);
strokeWeight(2);
ellipse(ballX, ballY, ballSize, ballSize);

vy += gravity;
ballY += vy;

boolean onGround = false;
for (Platform p : platforms) {
if (ballX > p.x && ballX < p.x + p.w &&
ballY + ballSize/2 > p.y &&
ballY + ballSize/2 < p.y + 30 && vy > 0) {
ballY = p.y - ballSize/2;
vy = 0;
onGround = true;
}
}

if (keyPressed) {
if (keyCode == LEFT) ballX -= 6;
if (keyCode == RIGHT) ballX += 6;
if (key == ' ' || keyCode == UP) {
if (onGround) vy = jumpStrength;
}
}

if (ballY + ballSize/2 > height - 40) {
resetPlayer();
}
}

void resetPlayer() {
lives--;
ballX = 170;
ballY = 500;
vy = 0;

if (lives <= 0) {
gameOver = true;
}
}

void drawUI() {
fill(255);
stroke(0);
rect(770, 30, 180, 50, 10);

fill(0);
textAlign(LEFT);
textSize(22);
text("Score = " + nf(score, 2), 790, 63);

fill(255, 0, 0);
for (int i = 0; i < lives; i++) {
drawHeart(800 + (i*40), 100, 20);
}
}

void drawHeart(float x, float y, float size) {
beginShape();
vertex(x, y);
bezierVertex(x - size/2, y - size/2, x - size, y + size/3, x, y + size);
bezierVertex(x + size, y + size/3, x + size/2, y - size/2, x, y);
endShape(CLOSE);
}

void showGameOver() {
background(0);

fill(255, 0, 0);
textAlign(CENTER);
textSize(60);
text("GAME OVER", width/2, height/2 - 40);

fill(255);
textSize(25);
text("Press R to Restart", width/2, height/2 + 20);
}

void keyPressed() {
if (gameOver && (key == 'r' || key == 'R')) {
restartGame();
}
}

void restartGame() {
gameOver = false;
score = 0;
lives = 3;

ballX = 170;
ballY = 500;
vy = 0;

rings.clear();
addRings();
}

void addRings() {
rings.add(new Ring(125, 210));
rings.add(new Ring(340, 330));
rings.add(new Ring(580, 390));
rings.add(new Ring(790, 450));
//rings.add(new Ring(570, 170));
}
