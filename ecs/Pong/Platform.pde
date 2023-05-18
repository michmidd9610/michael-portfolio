class Platform {
  int x, y;
  PImage platform;

  Platform() {
    x=width/2;
    y=height-100;
    platform=loadImage("platform.png");
  }
  void display() {
    imageMode(CENTER);
    platform.resize(100, 100);
    image(platform, 40, y/2);
  }
  void move(char dir) {
    if (dir=='w') {
      y=y-20;
    } 
    if (dir=='s') {
      y=y+20;
    }
  }
}
