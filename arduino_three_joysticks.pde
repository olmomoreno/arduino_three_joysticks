/*****************************************************************
**  SCENE: This scene design consist of 3 interactive elements, **
**  it uses Arduino with 3 joysticks pluged into it. The potent-**
**  iometers and switches values are diplay on each joystick    **
**  card area.                                                  **
*****************************************************************/

// Libraries
import processing.serial.*;

//Serial
Serial port;

//PGraphics
PGraphics layerCursor1;
PGraphics layerCursor3;

//Images
PImage rocketIcon;
PImage xolabLogo;
PImage[] joystick = new PImage[3];

// Sketch's fonts
PFont robotoRegular12;
PFont robotoRegular16;
PFont robotoRegular20;
PFont robotoRegular24;
PFont robotoRegular60;

// Color definitions
color green1 = color(29,185,84); 
color green2 = color(35, 124, 102); 
color gray1 = color(33, 33, 33);
color gray2 = color(83, 83, 83);
color white = color(255);
color black = color(0);

// Arduino variables
int[] joystickVal = new int[10];
int cursor1X = 105;
int cursor1Y = 314;
int cursor2X = 299;
int cursor2Y = 314;
int cursor3X = 493;
int cursor3Y = 314;

void setup() {

   // Processing window size
  size(600, 400);

  // Creates layerCursor1 & layerCursor1
  layerCursor1 = createGraphics(width, height);
  layerCursor3 = createGraphics(width, height);

  // Loads image
  rocketIcon = loadImage("images/rocket_launch_24dp_FFFFFF.png");
  xolabLogo  = loadImage("images/xolabLogo.png");
  joystick[0] = loadImage("images/thumb_joystick.png");
  joystick[1] = loadImage("images/thumb-slide-joystick.jpeg");
  joystick[2] = loadImage("images/5_way _tactile_switch.jpeg");

  // Creates font
  robotoRegular12 = createFont("fonts/Roboto-Regular.ttf", 12);
  robotoRegular16 = createFont("fonts/Roboto-Regular.ttf", 16);
  robotoRegular20 = createFont("fonts/Roboto-Regular.ttf", 20);
  robotoRegular24 = createFont("fonts/Roboto-Regular.ttf", 24);
  robotoRegular60 = createFont("fonts/Roboto-Regular.ttf", 60);

  // Initialize joystick_val array
  for(int i = 0; i < joystickVal.length; i++){
    joystickVal[i] = i;
  }

  printArray(Serial.list());  // Show available ports in console
  port = new Serial(this, Serial.list()[0], 9600);  // Replace [0] if needed
  port.bufferUntil('\n');
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
  int fontSize60 = 60;

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

  // Draws image background frame
  int iconFrameSize = 46;
  int iconFrameX = cardWidth - iconFrameSize;
  int iconFrameYOffset = 10;
  roundCorners = 10;
  fill(white); 
  for(int i = 0; i < 3; i++){
    rect(iconFrameX, statusBarHeight + topAppBarHeight + margin + (padding28 * 3) + iconFrameYOffset, iconFrameSize, iconFrameSize, roundCorners);
    iconFrameX = iconFrameX + margin + cardWidth;
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

  // Draws cards image
  int imageSize = 40;
  int imageOffset = 3;
  iconFrameX = cardWidth - iconFrameSize;
  for (int i = 0; i < joystick.length; i++) {
    image(joystick[i], iconFrameX + imageOffset, statusBarHeight + topAppBarHeight + margin + (padding28 * 3) + iconFrameYOffset + imageOffset, imageSize, imageSize);
    iconFrameX = iconFrameX + margin + cardWidth;
  }

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

  // Writes cards numbers variables
  cardTextX = margin * 2;
  String[] joystickPotentiometer = { "X: ", "Y: " };
  int paddingIndex = 4;
  int joystickValIndex = 0;
  textFont(robotoRegular24, fontSize24);

  // Text variables for card 1
  for(int i = 0; i < joystickPotentiometer.length; i++){
    text(joystickPotentiometer[i] + joystickVal[joystickValIndex], cardTextX, statusBarHeight + topAppBarHeight + margin + (padding28 * paddingIndex));
    paddingIndex++;
    joystickValIndex++;
  }
  paddingIndex = 4;
  cardTextX = cardTextX + margin + cardWidth;

  // Text variables for card 2
  for(int i = 0; i < joystickPotentiometer.length; i++){
    text(joystickPotentiometer[i] + joystickVal[joystickValIndex], cardTextX, statusBarHeight + topAppBarHeight + margin + (padding28 * paddingIndex));
    paddingIndex++;
    joystickValIndex++;
  }
  cardTextX = cardTextX + margin + cardWidth;

  // Text variables for card 3
  int textOffset = 1;
  textFont(robotoRegular60, fontSize60);
  text(joystickVal[4], cardTextX, statusBarHeight + topAppBarHeight + margin + (padding28 * 5) - textOffset);

  // Writes card number variable subtitle
  cardTextX = margin * 2;
  String[] cardSubVar = { "Joystick 1 values", "Joystick 2 values", "Joystick 3 values" };
  textFont(robotoRegular12, fontSize12);
  for (int i = 0; i < cardSubVar.length; i++) {
    text(cardSubVar[i], cardTextX, statusBarHeight + topAppBarHeight + margin + padding28 * 6);
    cardTextX = cardTextX + margin + cardWidth;
  }

  // Draws card 1 cursor
  int cursorAreaOffset = 5;
  fill(white);
  int cursorSize = 10;
  int cursorULimit = statusBarHeight + topAppBarHeight + margin + padding28 * 6 + cursorAreaOffset + cursorSize;
  int cursorDLimit = statusBarHeight + topAppBarHeight + margin + padding28 * 10 - cursorAreaOffset - cursorSize/2;
  int cursor1RLimit = cardWidth - cursorSize/2;
  int cursor1LLimit = margin * 2 + cursorSize/2;
  int jv0UpBound = 0;
  int jv0LowBound = 1023;
  int jv1UpBound = 1023;
  int jv1LowBound = 0;
  cursor1X = int(map(joystickVal[0], jv0LowBound, jv0UpBound, cursor1LLimit, cursor1RLimit));
  cursor1Y = int(map(joystickVal[1], jv1LowBound, jv1UpBound, cursorULimit, cursorDLimit));
  
  // Draws cursor 1 in canvas
  int layerCursor1X = margin * 2;
  int layerCursor1Y = statusBarHeight + topAppBarHeight + margin + padding28 * 6 + cursorAreaOffset;
  int brushAreaWidth = 146 + layerCursor1X;
  int brushAreaHeight = 102 + layerCursor1Y;
  layerCursor1.beginDraw();
  if(joystickVal[4] == 0){  // If joystick button pressed, green brush draw is erased
    layerCursor1.stroke(gray2);       // Gray brush
    layerCursor1.strokeWeight(1);     // Brush thickness
    for(int z = layerCursor1Y; z < brushAreaHeight; z++){
      for(int y = layerCursor1X; y < brushAreaWidth; y++){
        layerCursor1.point(y, z);
      }
    }
  }
  else{ // Green brush is drawn
    layerCursor1.beginDraw();
    layerCursor1.stroke(green1);      // White brush
    layerCursor1.strokeWeight(5);     // Brush thickness
    layerCursor1.point(cursor1X, cursor1Y);
  }
  layerCursor1.endDraw();
  image(layerCursor1, 0, 0);   // Draw the persistent brush layerCursor1
  circle(cursor1X, cursor1Y, cursorSize);

  // Draws card 2 cursor
  int cursor2RLimit = margin + cardWidth * 2 - cursorSize/2;
  int cursor2LLimit = margin * 3 + cardWidth + cursorSize/2;
  int jv2UpBound = 860;
  int jv2LowBound = 100;
  int jv3UpBound = 180;
  int jv3LowBound = 920;
  cursor2X = int(map(joystickVal[2], jv2LowBound, jv2UpBound, cursor2LLimit, cursor2RLimit));
  cursor2Y = int(map(joystickVal[3], jv3LowBound, jv3UpBound, cursorULimit, cursorDLimit));
  if(cursor2X < cursor2LLimit) cursor2X = cursor2LLimit;
  if(cursor2X > cursor2RLimit) cursor2X = cursor2RLimit;
  if(cursor2Y < cursorULimit)  cursor2Y = cursorULimit;
  if(cursor2Y > cursorDLimit)  cursor2Y = cursorDLimit;
  circle(cursor2X, cursor2Y, cursorSize);

  // Draws card 3 cursor
  int cursor3RLimit = width - margin * 2 - cursorSize;
  int cursor3LLimit = width - cardWidth + cursorSize/2;
  if(joystickVal[5] == 0) cursor3Y++;
  if(joystickVal[6] == 0) cursor3Y--;
  if(joystickVal[7] == 0) cursor3X--;
  if(joystickVal[8] == 0) cursor3X++;
  if(cursor3X < cursor3LLimit) cursor3X = cursor3LLimit;
  if(cursor3X > cursor3RLimit) cursor3X = cursor3RLimit;
  if(cursor3Y < cursorULimit)  cursor3Y = cursorULimit;
  if(cursor3Y > cursorDLimit)  cursor3Y = cursorDLimit;
  circle(cursor3X, cursor3Y, cursorSize);

  // Draws cards cursor areas
  cursorAreaOffset = 10;
  int cursorAreaWidth = 146;
  int squareIni = margin * 2;
  noFill();
  stroke(white);
  strokeWeight(1);
  for (int i = 0; i < 3; i++) {
    rect(squareIni, statusBarHeight + topAppBarHeight + margin + padding28 * 6 + cursorAreaOffset, cursorAreaWidth, padding28 * 4 - cursorAreaOffset, roundCorners );
    squareIni = squareIni + margin + cardWidth;
  }
}

// Serial event manager
void serialEvent(Serial port) {
  String line = port.readStringUntil('\n');
  if (line != null) {
    line = trim(line);
    parseLine(line);
  }
}

// Parse line manager
void parseLine(String line) {
  String[] values = split(trim(line), ",");
  if (values.length == 10) {
    joystickVal[0] = int(values[0]); // Thumb Joystick Potentiometer X
    joystickVal[1] = int(values[1]); // Thumb Joystick Potentiometer Y
    joystickVal[2] = int(values[2]); // Thumb Slide Joystick Potentiometer X
    joystickVal[3] = int(values[3]); // Thumb Slide Joystick Potentiometer Y
    joystickVal[4] = int(values[4]); // Thumb Joystick Push Button

    int p = 5;
    for (int i = 0; i < 4; i++) {
      joystickVal[p] = int(values[5 + i]); // 5 Way Tactile Switches
      p++;
    }
  }
}