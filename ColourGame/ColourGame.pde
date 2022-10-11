import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim MT;
Minim WT;
Minim LT;
AudioPlayer Song;

//color game

int Score;
int HScore;
int KeyCode;

float y;

int mode;
final int Intro = 0;
final int Game = 1;
final int Gameover = 2;
final int IntroClicks = 0;
final int GameClicks = 1;
final int GameOverClicks = 2;


PImage[] gifIntro;
int NOF;
int f;

PImage[] gifOutro;
int NOFO;
int FC;

int RN = (int) random(0, 7);
int RC = (int) random(0, 7);
float Half = random(0, 1);

//color pallete
color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;
color purple = #DF00E0;
color yellow = #FEFF03;
color orange = #FA9A1C;
color cyan = #05FFFD;
color black = #000000;
color white = #ffffff;

String[] words = {"RED", "GREEN", "BLUE", "PURPLE", "YELLOW", "ORANGE", "CYAN"};
color[] colors = {red, green, blue, purple, yellow, orange, cyan};

void setup() {
  size(800, 800);
  NOF = (57);
  gifIntro = new PImage[NOF];

  int i = 0;
  while (i < NOF) {
    gifIntro[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i++;

    f = 0;
  }

  NOFO = (19);
  gifOutro = new PImage[NOFO];

  i = 0;
  while (i < NOFO) {
    gifOutro[i] = loadImage("data2/frame_"+i+"_delay-0.1s.gif");
    i++;

    FC = 0;
  }

  y = 400;

  Score = 0;
  HScore = 0;

  mode = Intro;

  MT = new Minim(this);
  WT = new Minim(this);
  LT = new Minim(this);
}

void draw() {
  if (mode == Intro) {
    Intro() ;
  } else if (mode == Game) {
    Game();
  } else if (mode == Gameover) {
    Gameover();
  } else {
    println("Mode Error: Mode is" + mode);
  }
}
