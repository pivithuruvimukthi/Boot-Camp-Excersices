class Platform {
float x, y, w;
Platform(float x, float y, float w) {
this.x = x;
this.y = y;
this.w = w;
}
void display() {
fill(255);
stroke(0);
strokeWeight(3);
rect(x, y, w, 30, 15);
}
}
