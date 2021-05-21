Lazer Lazer;
Invader[] Invaders = new Invader[20];
int k = 100;
int t = 50;
color c;
public void setup() {
  size(700,700);
  spawnInvaders();
}

public void draw() {
  background(#A08EAA);
  
  
    for (Invader v : Invaders) {
      if(v != null && v.active)
    v.draw();
  }
  
  if (Lazer != null && Lazer.active) {
    Lazer.move();
    for (Invader v : Invaders){
    if(v != null && v.active)
      Lazer.LazerVsInvader(v);
    }
    Lazer.draw();
  }
}

public void mouseReleased() {
   Lazer = new Lazer(350, 550);
}

private void spawnInvaders() {
  int n = 0;
  for (int i = 0; i < 4; i++) {
    for ( int j = 0; j < 5;j++){
    int x = j*k + 140;
    int y = i*t + 60;
    Invaders[n] = new Invader(x, y);
    n += 1;
    }
  }
}
