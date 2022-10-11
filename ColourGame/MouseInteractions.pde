void mousePressed() {
  //IntroClicks();
  //GameClicks();
  //GameOverClicks();
}


void mouseReleased() {
  if (mode == IntroClicks) {
    IntroClicks() ;
  } else if (mode == GameClicks) {
    GameClicks();
  } else if (mode == GameOverClicks) {
    GameOverClicks();
  }
}

void KeyReleased() {
  if (mode == Game) {
    if (KeyCode == LEFT) {
      if (mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 800 && RN == RC) {
    println("A");
    RollTheDice();
    y = 400;
    Score++;
    Song = WT.loadFile("SUCCESS.wav");
    Song.play();
      }
    else if (mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 800 && RN != RC) {
    println("D");
    L();
    Song = WT.loadFile("FAILURE.wav");
    Song.play();
  }
    }
    if (KeyCode == RIGHT) {
      if (mouseX > 420 && mouseX < 800 && mouseY > 0 && mouseY < 800 && RN != RC) {
    println("B");
    RollTheDice();
    y = 400;
    Score++;
    Song = WT.loadFile("SUCCESS.wav");
    Song.play();
  } else if (mouseX > 420 && mouseX < 800 && mouseY > 0 && mouseY < 800 && RN == RC) {
    println("C");
    L();
    Song = WT.loadFile("FAILURE.wav");
    Song.play();
  }
    }
  }
}
