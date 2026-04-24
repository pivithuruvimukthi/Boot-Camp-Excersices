int btnX = 140;
int btnY = 160;
int btnW = 120;
int btnH = 50;
boolean on = true;

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  if(on){
    fill(#1217FA);}
    else {
      fill(#FA1212);
    } 


rect(btnX, btnY, btnW, btnH);
fill(255);
textAlign(CENTER, CENTER);

if(on){
  text("ON", btnX + btnW/2, btnY + btnH/2);
}
else{text("OFF", btnX + btnW/2, btnY + btnH/2);}
}

void mousePressed() {
  if(mouseX > btnX && mouseX < btnX + btnW && mouseY > btnY && mouseY < btnY + btnH){
    on = !on;
  }
}
