/*****************************************************************
**  SCENE: This scene design consist of 3 interactive elements, **
**  it uses Arduino with 3 joysticks pluged into it. The potent-**
**  iometers and switches values are diplay on each joystick    **
**  card area.                                                  **
*****************************************************************/

//Images
PImage rocketIcon;
PImage xolabLogo;
PImage joystick_1;
PImage joystick_2;
PImage joystick_3;

// Sketch's fonts
PFont robotoRegular12;
PFont robotoRegular16;
PFont robotoRegular20;
PFont robotoRegular24;
PFont robotoRegular50;

// Color definitions
color green1 = color(29,185,84); 
color green2 = color(35, 124, 102); 
color gray1 = color(33, 33, 33);
color gray2 = color(83, 83, 83);
color white = color(255);
color black = color(0);

// Variable definitions
float squareX = 200.0;
int sliderButtonX = 32;
boolean direction = true;
boolean overSlider = false;
boolean locked = false;
int speedValue = 1;

// Arduino variables
int joystick1_PotA = 0;
int joystick1_PotB = 0;
int joystick1_SwitchA = 0;
int joystick2_PotA = 0;
int joystick2_PotA = 0;
int joystick3_SwitchA = 0;
int joystick3_SwitchB = 0;
int joystick3_SwitchC = 0;
int joystick3_SwitchD = 0;
int joystick3_SwitchE = 0;

void setup() {

   // Processing window size
  size(600, 400);

  // Loads image
  rocketIcon = loadImage("images/rocket_launch_24dp_FFFFFF.png");
  xolabLogo  = loadImage("images/xolabLogo.png");
  joystick_1 = loadImage("images/thumb_joystick.png");
  joystick_2 = loadImage("images/thumb-slide-joystick.jpeg");
  joystick_3 = loadImage("images/5_way _tactile_switch.jpeg");

  // Creates font
  robotoRegular12 = createFont("fonts/Roboto-Regular.ttf", 12);
  robotoRegular16 = createFont("fonts/Roboto-Regular.ttf", 16);
  robotoRegular20 = createFont("fonts/Roboto-Regular.ttf", 20);
  robotoRegular24 = createFont("fonts/Roboto-Regular.ttf", 24);
  robotoRegular50 = createFont("fonts/Roboto-Regular.ttf", 50);
}

void draw() {

  background(black);

  // Paddings (units -> px)
  int padding28 = 28;
  int statusBarHeight = 24;
  int topAppBarHeight = 45;
  int margin = 16;

  // Font size
  int fontSize12 = 12;
  int fontSize16 = 16;
  int fontSize20 = 20;
  int fontSize24 = 24;
  int fontSize50 = 50;

  // Draws Top App Bar
  noStroke(); 
  fill(gray1);
  rect(0, statusBarHeight, width, topAppBarHeight);

  // Draws cards (3)
  int numCards = 3;
  int cardWidth = (width - (margin * 4))/numCards;
  int roundCorners = 25;
  int cardIni = margin;
  fill(gray2);
  for (int i = 1; i <= numCards; i++) {
    rect(cardIni, statusBarHeight + topAppBarHeight + margin, cardWidth, height - statusBarHeight - topAppBarHeight - (margin * 2), roundCorners);
    cardIni = cardIni + margin + cardWidth;
  }

  // Draws status bar image
  int iconSize = 16;
  int iconOffset = 4;
  image(rocketIcon, width - margin - iconSize, iconOffset, iconSize, iconSize);

  // Draws top app bar image
  int logoWidth = 174;
  int logoHeight = 39;
  int logoOffset = 3;
  image(xolabLogo, (width/2) - (logoWidth/2), statusBarHeight + logoOffset, logoWidth, logoHeight);

  // Writes clock time
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  int textOffsetHeight = 6;
  String time = nf(h, 2) + ":" + nf(m, 2);
  fill(white);
  textFont(robotoRegular16, fontSize16);
  text(time, margin, statusBarHeight - textOffsetHeight);

  // Writes cards titles
  int cardTextX = margin * 2;
  String[] cardTitle = { "Thumb joystick", "Thumb slide joy.", "5 way tactile sw." };
  textFont(robotoRegular20, fontSize20);
  for (int i = 0; i < cardTitle.length; i++) {
    text(cardTitle[i], cardTextX, statusBarHeight + topAppBarHeight + margin + padding28);
    cardTextX = cardTextX + margin + cardWidth;
  }

  // Writes card subtitle
  cardTextX = margin * 2;
  String[] cardSubTitle = { "2 potentiometers and 1 sw.", "2 potentiometers", "5 switches" };
  textFont(robotoRegular12, fontSize12);
  for (int i = 0; i < cardSubTitle.length; i++) {
    text(cardSubTitle[i], cardTextX, statusBarHeight + topAppBarHeight + margin + padding28 * 2);
    cardTextX = cardTextX + margin + cardWidth;
  }

  // Writes card number variable
  textFont(robotoRegular50, fontSize50);
  text(speedValue, margin * 2, statusBarHeight + topAppBarHeight + margin + (padding28 * 5));

  // Writes card number variable subtitle
  cardTextX = margin * 2;
  String[] cardSubVar = { "Joystick 1 values", "Joystick 2 values", "Joystick 3 values" };
  textFont(robotoRegular12, fontSize12);
  for (int i = 0; i < cardSubVar.length; i++) {
    text(cardSubVar[i], cardTextX, statusBarHeight + topAppBarHeight + margin + padding28 * 6);
    cardTextX = cardTextX + margin + cardWidth;
  }

 

  // Draws slider line
  strokeWeight(4);
  stroke(white);
  line((margin * 2), statusBarHeight + topAppBarHeight + margin + (padding28 * 8), cardWidth, statusBarHeight + topAppBarHeight + margin + (padding28 * 8));

  
}