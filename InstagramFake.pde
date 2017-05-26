
PImage img;
float size = 1;
PFont font;
void setup () {
img = loadImage("johnny.jpg");
size(857, 857);
}
void draw () {
 image(img, 0, 0, height * size, width * size);
if(keyPressed && key == ' '){
tint(0, 153, 204);  // Tint blue
} else {
  tint(255, 255, 255);
}
if(keyPressed && key == CODED){
  if(keyCode == LEFT) {
    background(192);
size += 0.25;
image(img, 0, 0, height, width);
  } else {
     if(keyCode == RIGHT) {
       background(192);
    size -= 0.25;
    image(img, 0, 0, height, width);
}
if(keyPressed && key == CODED){
  if(keyCode == UP) {
  translate(width/2, height/2);
  rotate(PI);
  image(img, 0, 0, height, width);
  }
  if(keyPressed && key == CODED){
    if(keyCode == DOWN){
      text("Coppell High school 2017", 128, 800);
      textSize(50);
    }
  }
}
  }
}
}