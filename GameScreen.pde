class GameScreen extends Screen {
  
  public GameScreen(color c) {
    bGround = c;
  }
  
  public void show() {
    background(bGround);
  }
}
