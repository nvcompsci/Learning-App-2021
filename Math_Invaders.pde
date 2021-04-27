Ship Ship;
Invader[] Invaders = new Invader[20];
int k = 100;
int t = 50;
color c;
public void setup() {
  size(700,700);
  spawnInvaders();
}

public void draw() {
  background(#6B5B78);
  
  for (Invader v : Invaders) {
    v.draw();
  }
  
  if (Ship != null && Ship.active) {
    Ship.move();
    for (Invader v : Invaders)
      Ship.ShipVsInvader(v);
    Ship.draw();
  }
}

public void mouseReleased() {
   Ship = new Ship(350, 650);
}

private void spawnInvaders() {
  int n = 0;
  for (int i = 0; i < 4; i++) {
    for ( int j = 0; j < 5;j++){
    int x = j*k + 130;
    int y = i*t + 60;
    Invaders[n] = new Invader(x, y);
    n += 1;
    }
  }
}
