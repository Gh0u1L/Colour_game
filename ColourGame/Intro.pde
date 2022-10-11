
void Intro() {
  image(gifIntro[f], 0, 0, width, height);
  //println(frameCount);
  f++;
  if (f == NOF) f = 0;
  textSize(75);
  fill(red);
  textAlign(CENTER, CENTER);
  text("COLOUR GAME", 400, 300);
  text("CLICK TO START", 400, 500);

  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    fill(blue);
  } else {
    fill(black);
  }
  rect(500, 600, 200, 100);

  textSize(60);
  fill(white);
  text("START", 600, 640);

  Song = MT.loadFile("MUSIC.mp3");
  Song.play();
}

void IntroClicks() {
  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    mode = Game;
  }
}
