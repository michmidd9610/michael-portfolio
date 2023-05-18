//Michael Middleton | 04 May 2023 | Pong
boolean play;
Platform p1;
Ball b1;
int score, level;
//int x, y;
PImage platform, ball;
float platformDist;



void setup() {
  size(500, 800);
  p1=new Platform();
  b1=new Ball();

  score=0;
  play=false;
}

void draw() {
  platformDist = dist(p1.x, p1.y, b1.x, b1.y);
  println(platformDist);
  if (play == false) {
    startScreen();
  } else {
    background(0);
    //drawBackground();
    infoPanel();
    p1.display();
    b1.display();
    b1.move();
    if (p1.y>800 || p1.y<0) {
      gameOver();
    }
  }
}
//void move(char dir) {
//  if (dir=='w') {
//p1.move
//  } else if (dir=='a') {
//    x=x-10;
//  } else if (dir=='s') {
//    y=y-10;
//  } else if (dir=='d') {
//    x=x+10;
//    if (platformDist<50) {
//      score = score + 100;
//      b1.x= int(random(500, 800));
//    }
//  }
//}

void keyPressed() {
  if (key=='w') {
    p1.move('w');
  } else if (key=='a') {
    p1.move('a');
  } else if (key=='s') {
    p1.move('s');
  } else if (key=='d') {
    p1.move('d');
  } else if (key=='q') {
    play=true;
  }
}

void startScreen() {
  background(0);
  fill(255);
  text("Pong", (width/2)-40, (height/2)-20);
  text("By Michael Middleton", (width/2)-40, (height/2));
  text("Press 'q' to start", (width/2)-40, (height/2)+20);
}

void gameOver() {
  background(0);
  fill(255);
  textSize(40);
  text("Game over", width/2, height/2);
  text("Score:" + score, width/2, 340);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 50);
  fill(255);
  text("Score:" + score, 50, 40);
}

//void drawBackground() {
//  fill (#000000);
//  rect(0, 750, width, 50);
//}
