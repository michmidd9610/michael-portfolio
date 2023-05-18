class Ball {
  int x, y, xspeed, yspeed;
  PImage ball;
  boolean d;

  Ball() {
    x=width/2;
    y=height-100;
    ball=loadImage("ball.png");
    xspeed=5;
    yspeed=5;
  }
  void display() {
    imageMode(CENTER);
    ball.resize(100, 100);
    image(ball, x/2, y/2);
  }
  void move() {
    y+=yspeed;
    x+= xspeed;
    if (x<0) {
      xspeed*=-1;
    } else if (x>500) {
      xspeed*=-1;
    } else if (y<0) {
      yspeed*=-1;
    } else if (y>800) {
      yspeed*=-1;
    }
    //if (d) {
    //  y+= xspeed;
    //} else {
    //  y-= yspeed;
    //}
    //if (x >=width-10||x<=10) {
    //  xspeed+= -1;
    //}
    //if (y>=height-10|| y<=10) {
    //  yspeed= yspeed * -1;
    //}
  }
}
