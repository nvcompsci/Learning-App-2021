Ship Ship;
Invader[] Invaders = new Invader[10];
int k = 80;
int t = 40;
public void setup() {
  size(700,700);
  spawnInvaders();
}

public void draw() {
  background(220);
  
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
  for (int i = 0; i < Invaders.length; i++) {
    int x = k += 45;
    int y = t += 2;
    
    Invaders[i] = new Invader(x, y);
  }
}
