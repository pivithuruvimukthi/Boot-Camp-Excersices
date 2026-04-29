class Ring {
float x, y;
Ring(float x, float y) {
this.x = x;
this.y = y;
}
void display() {
noFill();
stroke(255, 215, 0);
strokeWeight(5);
ellipse(x, y, 25, 25);
strokeWeight(1);
}
}
