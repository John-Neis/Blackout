class StartScreen extends Screen {

  /*
   * Inherited from Screen: 
   *   bGround
   */

  protected float omega;
  protected float dC;
  private int size;
  private String message;

  public StartScreen(color c, int size) {
    bGround = c;
    this.size = size;
    dC = 0;
    message = "Press any key";
  }

  public void show() {
    background(bGround);

    dC = 100 * sin(omega) + 150;
    omega += 0.05;
    if (omega > TWO_PI) omega = 0;

    textSize(size);
    if(checkMouseOver()) {
      fill(dC, 50, 50);
    } else {
      fill(dC);
    }
    text(message, width/2 - textWidth(message)/2, 3 * height/4 + (textAscent() + textDescent())/2);
  }
  
  private boolean checkMouseOver() {
    float x = width/2 - textWidth(message)/2;
    float y = 3 * height/4 + (textAscent() + textDescent())/2;
    
    boolean cond1 = mouseX >= x;
    boolean cond2 = mouseX <= x + textWidth(message);
    boolean cond3 = mouseY >= y - (textAscent() + textDescent());
    boolean cond4 = mouseY <= y;
    return cond1 && cond2 && cond3 && cond4;
  }
  
}
