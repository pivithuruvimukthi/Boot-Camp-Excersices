void setup() {
  size(400, 400);
  noStroke();
}

void draw()
{
  color skyColor = color(157, 238, 247);
  color groundColor = color(156, 245, 170);
  color leafColor = color(82, 144, 97);
  color trunkColor = color(95, 57, 26);
  
  background(skyColor);
  
  //Ground Color
  fill(groundColor);
  rect(0, height/2, width, height/2);
  
  //Tree Trunk
  fill(trunkColor);
  rect(80, 150, 20, 100);
  
  //Tree Leaves
  fill(leafColor);
  ellipse(90, 120, 70, 90);
  
  String welcomeMessage = "Hello from University of Vavuniya";
  textAlign(CENTER, CENTER);
  text(welcomeMessage, width/2, height/2);
  
}
