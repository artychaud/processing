PImage[] images;

PGraphics source;
PGraphics target;
PGraphics result;

PGraphics comp;

PGraphics artboard;

PImage buffer;
PImage currImage;

int POSTER_W = 580;
int POSTER_H = 810;

float TILES_X = POSTER_W / 5;
float TILES_Y = POSTER_H / 5;

int sx, sy, sw, sh, dx, dy, dw, dh;

float scalar = 1;

float offsetX = 0;
float offsetY = 0;

float coutoutW = 30;

float threshold = 150;

void setup() {
  size(1740, 810);

  source = createGraphics(POSTER_W, POSTER_H);
  target = createGraphics(POSTER_W, POSTER_H);
  result = createGraphics(POSTER_W, POSTER_H);
  artboard = createGraphics(900, 900);

  comp = createGraphics(POSTER_W, POSTER_H);

  images = new PImage[9];

  images[0] = loadImage("1.jpeg");
  images[1] = loadImage("2.jpeg");
  images[2] = loadImage("3.jpeg");
  images[3] = loadImage("4.jpeg");
  images[4] = loadImage("5.jpeg");
  images[5] = loadImage("6.jpeg");
  images[6] = loadImage("7.jpeg");
  images[7] = loadImage("8.jpeg");
  images[8] = loadImage("9.jpeg");

  currImage = images[int(random(images.length))];
}

void draw() {
  background(#00ff00);
  drawSource();
  drawTarget();
  drawResult();


  image(source, 0, 0);
  image(target, POSTER_W, 0);
  image(result, POSTER_W + POSTER_W, 0);
  noFill();
  stroke(#00ff00);
  strokeWeight(3);
  drawArtboard();

  rect(mouseX, mouseY, sw, sh);
  rect(mouseX + POSTER_W, mouseY, sw, sh);

  render();
}
