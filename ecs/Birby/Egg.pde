class Egg{
  int x,y;
  PImage egg;
  
  Egg() {
    x = int(random(25,575));
    y = int(random(25,575));
    egg = loadImage("New Piskel (1).png");
  }
  
  void display() {
    imageMode(CENTER);
    image(egg,x,y);
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
