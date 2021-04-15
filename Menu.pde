Button b1, b2;

public void setup() {
  size(800,800);
  build();
}

public void draw() {
  b1.draw();
  b2.draw();
}

public void mouseReleased() {
  if (b1.isClicked()) {
    println("one clicked");
  }
  if (b2.isClicked()) {
    println(b2.title);
  }
}

public void build() {
  b1 = new Button(100,20,100,100,"One",#F0000F);
  b2 = new Button(500,130,200,75,"Two",#00CC22);
}
