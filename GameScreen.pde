class GameScreen extends Screen {
  
  public GameScreen(color c) {
    bGround = c;
  }
  
  @Override
  public void show() {
    background(bGround);
  }
  
}
