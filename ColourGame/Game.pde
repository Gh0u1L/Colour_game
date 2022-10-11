void Game() {
  background(black);
  textSize(60);
  fill(white);
  text("Matching", 200, 400);
  text("Not Matching", 600, 400);
  fill(white);
  stroke(white);
  rect(380, 0, 40, 800);

  Song = MT.loadFile("MUSIC.mp3");
  Song.play();

  textAlign(CENTER, CENTER);
  SP();

  y++;

  if (y == 850) {
    mode = Gameover;
  }
}

void SP() {
  fill(colors[RC]);
  text(words[RN], width/2, y);
}
void RollTheDice() {
  RN = (int) random(0, 7);
  RC = (int) random(0, 7);
  Half = random(0, 1);
  if (Half > 0.5) {
    RC = RN;
  } else if (Half < 0.5) {
    while (RN == RC && RN > 4 && RN < 8) {
      RN = RN - 1;
    }
    while(RN == RC && RN > 0 && RN < 4) {
      RN = RN + 1;
    }
  }
  //if (Half < 0.5) {
  //  RN = 4;
  //  RC = 1;
}



void L() {
  mode = Gameover;
}

void GameClicks() {
  println (RN == RC, mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 800);

  if (mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 800 && RN == RC) {
    println("A");
    RollTheDice();
    y = 400;
    Score++;
    Song = WT.loadFile("SUCCESS.wav");
    Song.play();
  } else if (mouseX > 420 && mouseX < 800 && mouseY > 0 && mouseY < 800 && RN != RC) {
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
  } else if (mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 800 && RN != RC) {
    println("D");
    L();
    Song = WT.loadFile("FAILURE.wav");
    Song.play();
  }
}
