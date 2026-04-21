void setup(){
  size(400,400);
}

void draw(){
  background(255, 255, 255);
    if(mouseX<200){
      fill(255, 0, 0);
    }
    else{
      fill(0,255,0);
    }
  rect(mouseX, mouseY, 100, 100);
}
