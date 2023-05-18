//Michael Middleton| April 13, 2023| Shape Game
int x, y, score, tarX, tarY, tarSize, speed;
float dist;
boolean play;

void setup() {
  size(500, 500);
  x=width/2;
  y=height/2;
  score= 0;
  tarX= int(random(width));
  tarY= int(random(height));
  dist=3;
  tarSize=100;
  frameRate=30;
  speed=8;
}

void draw() {
  if (play==true) {
  } else {
    dist = dist(x, y, tarX, tarY);
    println(dist);
    background(#FFD35A);
    fill(0, 200, 0);
    if (x>width) {
      x=0+20;
    } else if (x<0) {
      x=width-20;
    } else if (y>height) {
      y=0+20;
    } else if (y<0) {
      y=height-20;
      {
        fill(#000000);
        ellipse(x, y, 20, 20);
        fill(#FFFFFF);
        rectMode(CENTER);
        rect(tarX, tarY, 20, 20);
        score();
        if (keyPressed) {
          if (key == 'w'|| key=='W') {
            y=y-3;
          } else if (key== 's'|| key=='S') {
            y=y+3;
          } else if (key=='a'|| key=='A') {
            x=x-3;
          } else if (key=='d'|| key=='D') {
            x=x+3;
          } else if (key=='q'|| key=='Q')
            x=x-3;
        }
      }
      }
    }
  }
void keyPressed(){
 if (key==CODED) {
      if (keyCode== UP) {
          y=y -speed;
        } else if (keyCode== DOWN) {
          y=y+speed;
        } else if (keyCode==LEFT) {
          x=x-speed;
      } else if (keyCode==RIGHT) {
        x+=speed;
      }
    }
  }
  
  void score() {
    fill(255,0,0, 128);
    rect(0, 0, width, 30);
    rectMode(CORNER);
    rect(0,0,width,30);
    fill(0);
    text("Score: " + score, 10, 25);
  }

  void target() {
    if (dist<20) {
      tarX = int(random(width));
      tarY = int(random(height));
      if (tarY<60)
        tarY=60;
      score=score+100;
    }
  }
