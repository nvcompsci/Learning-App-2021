public class Ship extends Entity {
  PVector vel;
  int x;
  int y;

  public Ship(int x, int y) {
    super(#ffffff, 20, 20, x, y);
    vel = new PVector(0, 0);
  }
  public void move(int x) {
    vel = new PVector(x, 0);
  }
  public void update() {
    this.pos.add(vel);
  }
  private void LazerVsBorder() {
    if (this.pos.x > width
      || this.pos.x < 0
      || this.pos.y > height);
  }
}
