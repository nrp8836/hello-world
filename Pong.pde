boolean gameStart = false;
int radius = 20;
float speedX = 5;
float speedY = 5;
float speed = 2.0;
float x;
float y;
int directionX = 1;
int directionY = 1;
PFont font;
PImage img;
int start;
int score = 0;

void setup() {
size(1000, 720);
img = loadImage("giphy.gif");
font = loadFont("AngsanaUPC-Bold-48.vlw");
start = millis();
background(0);
textFont(font);
smooth();
ellipseMode(RADIUS);
x = width/2;
y = height/2;
}

void draw() {
image(img, 0, 0);
textSize(144);
fill(105, 232, 89);{
text("PONG", 700, 175);
int timer = millis()-start;
text(timer/1000, 700, 375);
}
fill(160, 2, 2);{
rect(0, 0, 30, height);//left paddle
}
fill(249, 250, 18);{
rect(960, mouseY, 30, 100);//right paddle
}
x = x + speedX;
y = y + speedY;

ellipse(x, y, radius, radius);//ball


x += speed * directionX;
y += speed * directionY;

 if (( x > 939) && (y > mouseY) && (y < mouseY + 100)){
  speedX = speedX * -1;
   directionX = -directionX;
 }
if ((x < radius)) {
  speedX = speedX * -1;
directionX = -directionX; // Flip direction
} else if ((x > width-radius)){
gameStart = false;
x = 500;
y = 150;
}
if ((y > height-radius) || (y < radius)) {//bounce off top
  speedY = speedY * -1;
directionY = -directionY;
}// Flip direction
if (x <= radius){
  score += 1;
  }
textSize(142);
text(score, 750, 475);
}