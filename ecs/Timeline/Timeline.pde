//Michael Middleton | April 6, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#4553AA);
  drawRef();
  histEvent(150, 200, "3700 BC", true, "The first known sourdough was excavated from around this time, although few knew about it");
  histEvent(350, 300, "500", false,"Bakers experimented with rye as the main grain for bread");
  histEvent(300, 200, "400", true,"Experimentation with bread in Europe commenced");
  histEvent(450, 200, "550", true,"Romans experimented with fermentation of bread, making what we know of today as pannetone");
  histEvent(500, 300, "882", false, "Barm, the skimmings of brewing beer, were used to leaven bread");
  histEvent(600, 200, "1849", true, "The idea of sourdough was brought to the United States, but did not prove to be popular");
  histEvent(650, 300, "1898", false, "Sourdough starters spread to Canada,  via raccoon swap meets");
  histEvent(750, 200, "1907", true, "Poems about sourdough were written and passed along farmers");
  histEvent(850, 300, "2010", false, "Poems about sourdough were written and passed along farmers");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("Sourdough Timeline", width/2, 60);
  textSize(20);
  text("By Michael Middleton", width/2, 85);
  strokeWeight(3);
  line(50, 250, 900, 250);
  strokeWeight(2);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  textSize(14);
  text("3800 BC", 50, 265);
  text("2010", 900, 265);
  //histEvent();
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top ==true) {
    line(x, y, x-20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(222);
  strokeWeight(2);
  rect(x, y, 100, 30, 7);
  fill(#000000);
  text(title, x, y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15){
  if(top){
    fill(#FFFFFF);
  text(detail, width/2, 140);
  }  else{
    fill(#FFFFFF);
  text(detail, width/2, 140);
  }
  
  }
}
