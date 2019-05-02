// Date: 30 April 2019
// Main author: Jack Neis
// Title: Blackout

Screen[] scrnManager;
int scnCount;
void setup() {
  size(800, 450);
  scnCount = 0;
  scrnManager = new Screen[3];
  scrnManager[0] = new StartScreen(color(50), 30);
  scrnManager[1] = new GameScreen(color(100, 0, 100));
  scrnManager[2] = new EndScreen();
}

void draw() {
  scrnManager[scnCount].show();
}

void keyPressed() {
  if(scnCount == 0) {
    scrnManager[scnCount].checkKey();
  }
}

void mousePressed() {
  if(scnCount == 0) {
    scrnManager[scnCount].checkClick();
  }
}
