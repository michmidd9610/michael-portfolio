class Ball {
  int x, y, xspeed, yspeed;
  PImage ball;
  boolean d;

  Ball() {
    x=width/2;
    y=height-100;
    xspeed=5;
    yspeed=5;
  }
  void display() {
    ellipse(x,y,50,50);

  }
  void move() {
    y+=yspeed;
    x+=xspeed;
    if (x<25) {
      xspeed*=-1;
    } else if (x>width-25) {
      xspeed*=-1;
    } else if (y<25) {
      yspeed*=-1;
    } else if (y>height-25) {
      yspeed*=-1;
    }
  }
}
