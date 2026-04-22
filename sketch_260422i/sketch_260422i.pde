void setup(){
  size(400,400);
}

void draw(){  
  target(random(20,380), random(100,380));
}

void target(float xPos, float yPos){
  fill(0,255,0);
  circle(xPos,yPos,150);
  
  fill(#F51919);
  circle(xPos,yPos,100);
  
  fill(#0FF0EA);
  circle(xPos,yPos,50);
}
