//==============================================================================================================
// three_joysticks.ino
// Sketch tested on an Arduino UNO board
// This Arduino sketch works with a Porcessing sketch (aduino_three_joysticks.pde)
// The wiring of this sketch is described in XXX
// This sketch reads the values of the following joysticks and send it to the Porcessing sketch by serial communication:  
//    a) Thumb Joystick, 3 potentiometers, 1 push button (SparkFun SKU: COM-09032, https://www.sparkfun.com/thumb-joystick.html)
//    b) Thumb Slide Joystick, 2 potentiometers (SparkFun SKU: COM-09426, https://www.sparkfun.com/thumb-slide-joystick.html)
//    c) 5-way Tactile Switch, 5 push buttons (SparkFun SKU: COM-10063, https://www.sparkfun.com/5-way-tactile-switch.html)
// Digital input pin list:
//    D2 = Thumb Joystic Switch A
//    D3 = 5-way Tactile Switch 3
//    D4 = 5-way Tactile Switch 6
//    D5 = 5-way Tactile Switch 1
//    D6 = 5-way Tactile Switch 4
//    D7 = 5-way Tactile Switch 2 (Center)
// Abalog input pin list:
//    A0 = Thumb Joystick Potentiometer X
//    A1 = Thumb Joystick Potentiometer Y
//    A2 = Thumb Slide Joystick Potentiometer X
//    A3 = Thumb Slide Joystick Potentiometer Y

//============================================================================================================== 
// Global Variables

// Digital inputs
const int pushButton[6] = {2, 3, 4, 5, 6, 7}; // Push buttons connected to digital pin 2 to 7

// Push button variable array
bool buttonState[6]; // Push buttons values are stored into the array

// Digital input positions
int firstDigitalPinInput = 2;
int lastDigitalPinInput = 7;

// Analog values array
  int joystickPotentiometer[4];

//==============================================================================================================  
void setup() {

  // Enable internal pull-up resistor
  for(int i = firstDigitalPinInput; i <= lastDigitalPinInput; i++){
    pinMode(pushButton[i - 2], INPUT_PULLUP);  
  }

  Serial.begin(9600);  // Start serial communication
}

// Start main loop ============================================================================================
void loop() {

  // Analog input positions
  int firstPotentiometer = 0;
  int lastPotentiometer = 3;

  // Read analog inputs (pins A0 to A4) and store value in joystickPotentiometer
  for(int i = firstPotentiometer; i <= lastPotentiometer; i++){ 
    joystickPotentiometer[i] = analogRead(i);
  }

  // Read digital inputs (pins 2 to 7) and store the value in buttonState
  for(int i = firstDigitalPinInput; i <= lastDigitalPinInput; i++){ 
    buttonState[i - 2] = digitalRead(i);
  }

  // Send values in raw format: e.g. "512;678"
  for(int i = firstPotentiometer; i <= lastPotentiometer; i++){ 
    Serial.print(joystickPotentiometer[i]);
    Serial.print(",");
  }

  // Send values in integer format: e.g. "1" or "0"
  int pushButtonValue = 0;
  for(int i = firstDigitalPinInput; i <= lastDigitalPinInput - 1; i++){ 
    pushButtonValue = booleanIntegerSelector(buttonState[i - 2]); // Select integer value from boolean
    Serial.print(pushButtonValue); // Send the integer value
    Serial.print(","); // Send a coma as separator
  }
  pushButtonValue = booleanIntegerSelector(buttonState[lastDigitalPinInput - 2]); // Select integer value from boolean
  Serial.println(pushButtonValue); // Send last value with new line format

  delay(1); // Delay 1 milisecond
  
}// End of main loop ==========================================================================================

// booleanIntegerSelector() function ==========================================================================
// Boolean to integer selector
int booleanIntegerSelector(bool bolVal){
  int intVal = 0;
  if (bolVal == LOW) { // Check if boolean is zero
    intVal = 0; // Integer is zero
  } 
  else {
    intVal = 1; // Integer is one
  }
  return intVal; 
}// End booleanIntegerSelector() ===============================================================================
 
