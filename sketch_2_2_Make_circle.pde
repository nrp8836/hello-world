void setup() {
size(500, 500);
smooth();
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(225);
  }
  ellipse(mouseX, mouseY, 80, 80);
}