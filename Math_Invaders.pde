Lazer Lazer;
Ship ship;
Invader[] Invaders = new Invader[20];
Button b1, b2;
int k = 100;
int t = 50;
color c;
public void setup() {
  size(700, 700);
  build();
  spawnInvaders();
  ship = new Ship(350, 550);
}

public void draw() {
  background(#1f001f);
  b1.draw();
  b2.draw();

  ship.draw();
  ship.update();

  for (Invader v : Invaders) {
    if (v != null && v.active)
      v.draw();
  }

  if (Lazer != null && Lazer.active) {
    Lazer.move();
    for (Invader v : Invaders) {
      if (v != null && v.active)
        Lazer.LazerVsInvader(v);
    }
    Lazer.draw();
  }
}

public void mouseReleased() {
  Lazer = new Lazer(350, 550);
}
public void build() {
  b1 = new Button(140, 80, 20, 20, "25", #F0000F);
  b2 = new Button(250, 350, 150, 50, "5*5", #aaaaaa);
}

private void spawnInvaders() {
  int n = 0;
  for (int i = 0; i < 4; i++) {
    for ( int j = 0; j < 5; j++) {
      int x = j*k + 140;
      int y = i*t + 80;
      Invaders[n] = new Invader(x, y);
      n += 1;
    }
  }
}
public void keyPressed() {

  if (keyCode == 68) {
    ship.move(5);
  } else if (keyCode == 65) {
    ship.move(-5);
  } else if (keyCode == 87) {
    Lazer = new Lazer(350, 550);
  }
}
public void keyReleased() {

  if (keyCode == 65) {
    ship.move(0);
  } else if (keyCode == 68) {
    ship.move(0);
  }
}
