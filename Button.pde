import java.awt.Rectangle;

public class Button {
  public int x, y, w, h;
  public color c;
  public String title, text;
  public Rectangle clickArea;

  public Button(int x, int y, int w, int h, String title, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.title = title;
    this.c = c;
    this.clickArea = new Rectangle(x, y, w, h);
  }

  public void setTitle(String t) {
    this.title = t;
  }

  public void setText(String text) {
    this.text = text;
  }

  public void draw() {
    fill(c);
    rect(x, y, w, h);

    fill(0);
    textAlign(CENTER);
    text(title, x+w/2, y+h/2);
  }

  public boolean isClicked() {
    return this.clickArea.contains(mouseX, mouseY);
  }
}
