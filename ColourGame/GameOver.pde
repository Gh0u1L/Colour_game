
void Gameover() {
  image(gifOutro[FC], 0, 0, width, height);
  //println(frameCount);
  if (frameCount % 2 == 0)
    FC++;
  if (FC == NOFO) FC = 0;

  if (mouseX > 0 && mouseX < 100 && mouseY > 700 && mouseY < 800) {
    fill(white);
  } else {
    fill(black);
  }
  rect(0, 700, 100, 100);

  fill(red);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("INTRO", 50, 750);

  textSize(90);
  text("SCORE:", 350, 225);
  text("HIGH SCORE:", 275, 425);
  println(Score);


  text(Score, 550, 225);
  HighScore();

  Song = WT.loadFile("FAILURE.wav");
  Song.play();
}

void GameOverClicks() {
  if (mouseX > 0 && mouseX < 100 && mouseY > 700 && mouseY < 800) {
    mode = Intro;
    Score = 0;
  }
}

void HighScore() {
  if (HScore < Score) {
    HScore = Score;
    //text(HScore, 585, 425);
  }
  text(HScore, 585, 425);
}
