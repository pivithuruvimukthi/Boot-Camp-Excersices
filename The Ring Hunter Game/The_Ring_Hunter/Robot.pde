class Robot {
float x, y;
Robot(float x, float y) {
this.x = x;
this.y = y;
}
void display() {
stroke(0);
strokeWeight(2);
fill(80);
rect(x, y, 40, 35, 5);

fill(0);
rect(x+5, y+25, 30, 10, 2);

fill(255);
rect(x+10, y+10, 20, 8);

line(x+20, y, x+20, y-12);
ellipse(x+20, y-12, 5, 5);
}
}
