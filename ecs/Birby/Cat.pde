class Cat{
  int x,y;
  PImage cat;
  
  Cat() {
    x = int(random(25,575));
    y = int(random(50,575));
    cat = loadImage("New Piskel (2).png");
  }
  
  void display() {
    imageMode(CENTER);
    image(cat,x,y);
  }
  
  void move(int tempX, int tempY){
    x = tempX;
    y = tempY;
  }
}
