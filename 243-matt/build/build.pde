void setup() {
  size(1000,1000, OPENGL);
  background(0);
  smooth();
}

void draw() {
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  stroke(255,random(10,255));
  strokeCap(ROUND);
  strokeJoin(ROUND);
  strokeWeight(3);
  fill(0,100);
  translate(mouseX,mouseY);
  ellipse(sin(random(px*speed)),sin(random(px*speed)), random(px*speed), random(px*speed));

  stroke(255, random(10,100));
  strokeCap(ROUND);
  strokeJoin(ROUND);
  strokeWeight(3);
  fill(255,10);
  rotate(random(360));
  curve(random(px*speed), random(py*speed), random(px*speed), sin(random(py*speed)),random(px*speed), random(py*speed), random(px*speed), random(py*speed));
  //ellipse(sin(random(px*speed)),sin(random(px*speed)), random(px*speed), random(px*speed));

  stroke(255,random(10,255));
  strokeCap(ROUND);
  strokeJoin(ROUND);
  strokeWeight(3);
  fill(0,100);
  ellipse(sin(random(px*speed)),sin(random(px*speed)), random(px*speed), random(px*speed));
}

void keyPressed() {
  if (key == 's') {
    saveFrame();
  }
}