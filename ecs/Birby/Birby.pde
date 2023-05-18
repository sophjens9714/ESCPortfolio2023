// Sophie Jensen | 25 April | Birby
boolean play;
Birb f1;
Egg f2;
Cat f3;
int score;
float eggDist, catDist;

void setup() {
  size(600, 600);
  f1 = new Birb();
  f2 = new Egg();
  f3 = new Cat();
  score = 0;
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    eggDist = dist(f1.x, f1.y, f2.x, f2.y);
    println(eggDist);
    catDist = dist(f1.x, f1.y, f3.x, f3.y);
    println(catDist);
    background(#F0EBB8);
    infoPanel();
    f1.display();
    f2.display();
    f3.display();

    if (eggDist<50) {
      score = score + 100;
      f3.x = int(random(25, 575));
      f3.y = int(random(50, 575));
      f2.x = int(random(25, 575));
      f2.y = int(random(50, 575));
    }

    if (catDist<50) {
      gameOver();
    }
    if (f1.y>height || f1.x<0 || f1.x>width) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    f1.move('w');
  } else if (key == 'a') {
    f1.move('a');
  } else if (key == 's') {
    f1.move('s');
  } else if (key == 'd') {
    f1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
}

void startScreen() {
  background(#73D3BC);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Birby", width/2, height/2);
  text("By: Sophie Jensen", width/2, 340);
  text("Press Space to Start", width/2, 380);
}

void gameOver() {
  background(#D37373);
  fill(255);
  text("Game Over", width/2, height/2);
  text("Score: " + score, width/2, 340);
  text("You Hit the Cat or the Wall :(", width/2, 380);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 50);
  fill(0);
  textSize(15);
  text("Score: " + score, 28, 30);
}
