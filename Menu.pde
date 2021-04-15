Button b1, b2, b3;
int scene = 1;

public void setup() {
  size(800, 800);
  build();
}

public void draw() {
  background(220);

  if (scene == 1) {
    b1.draw();
    b2.draw();
  } else if (scene == 2) {
    b3.draw();
  }
}

public void mouseReleased() {
  if (scene == 1) {
    if (b1.isClicked()) {
      println("one clicked");
    }
    if (b2.isClicked()) {
      scene = 2;
      println(b2.title);
    }
  } else if (scene == 2) {
    if (b3.isClicked()) {
      scene = 1; 
      println(b3.title);
    }
  }
}

public void build() {
  b1 = new Button(100, 20, 100, 100, "One", #F0000F);
  b2 = new Button(500, 130, 200, 75, "Show Scene Two", #00CC22);
  b3 = new Button(300, 300, 400, 400, "Return to Menu", #2200FF);
}
