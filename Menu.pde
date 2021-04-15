Button b1;

public void setup() {
  size(800,800);
  build();
}

public void draw() {
  b1.draw();
}

public void mouseReleased() {
  if (b1.isClicked()) {
    println("one clicked");
  }
}

public void build() {
  b1 = new Button(100,20,100,100,"One",#F0000F);
}
