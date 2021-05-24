public class Ship extends Entity {
  int x, y;
  
  public void move(){
    keyPressed();
  }
  
  public Ship(int x, int y) {
    super(#000000,20,20,x,y);
  }
}
