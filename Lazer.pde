public class Lazer extends Entity {
  //fields
  public PVector vel, force;
  public boolean active = true;

  //constructor
  public Lazer(int x, int y) {
    super(#FDD023, 2, 20, x, y);
    float angle = 3 * PI/2;
    vel = PVector.fromAngle(angle);
    force = PVector.fromAngle(angle);
  }

  public void move() {
    this.pos.add(vel);
    this.vel.add(force);
  }

  private void LazerVsBorder() {
    if (this.pos.x > width
      || this.pos.x < 0
      || this.pos.y > height)
    {
      this.active = false;
    }
  }
  
  private void LazerVsInvader(Invader o) {
    if (this.getCollisionBox().intersects(o.getCollisionBox())) {
      this.active = false;
      o.active = false;
    }
  }
}
