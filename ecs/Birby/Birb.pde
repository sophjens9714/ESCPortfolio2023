class Birb{
  int x,y;
  PImage birb;
  
  Birb() {
    x = width/2;
    y = height-100;
    birb = loadImage("New Piskel.png");
  }
  
  void display() {
    imageMode(CENTER);
    birb.resize(170,170);
    image(birb,x,y);
  }
  
  void move(char dir){
    if(dir == 'w') {
      y = y - 10;
    } else if(dir == 'a') {
      x = x - 10;
    } else if(dir == 's') {
      y = y + 10;
    } else if(dir == 'd') {
      x = x + 10;
    }
  }
}
