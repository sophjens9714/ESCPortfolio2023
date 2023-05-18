// Sophie Jensen | April 6, 2023 | Timeline
PImage mj1,mj2,mj3;
void setup() {
  size(950,400);
}

void draw() {
  background(#94F1E0);
  drawRef();
  histEvent(150,200,"Sep. 26, 1981",true, "Born in Saginaw, Michigan");
  histEvent(180,300,"1984",false, "Started playing tennis at 3 years old");
  histEvent(300,200,"1995",true, "Began playing tennis professionally");
  histEvent(330,300,"1999",false, "Won her first major singles title at the US Open");
  histEvent(500,200,"2012",true, "Claimed Olympic gold");
  histEvent(675,300,"2017",false, "At the Australian Open she won her 23rd major singles title");
  histEvent(690,200,"2018",true, "Beat Open Era record for most major single titles");
  histEvent(880,300,"2022",false, "Played last professional game at US Open");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(00000);
  text("Serena Williams Timeline", width/2,60);
  textSize(15);
  text("by Sophie Jensen", width/2,80);
  strokeWeight(2);
  line(50,250,900,250);
  line(50,245,50,255);
  line(900,245,900,255);
  textSize(13);
  text("1960",50,265);
  text("2023",900,265);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    line(x,y,x-20,y+50);
  } else {
    line(x,y,x-20,y-50);
  }
  rectMode(CENTER);
  fill(#ABCEbb);
  rect(x,y,100,30,10,10,10,10);
  fill(00000);
  text(title,x,y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY<y+15 && mouseY>y-15) {
    if(top) {
     text(detail,width/2,150); 
    } else {
    text(detail,width/2,150);
     }
  }
}
