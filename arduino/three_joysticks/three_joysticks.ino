const int buttonPin = 2;  // Push button connected to digital pin 2
bool buttonState;

void setup() {
  pinMode(buttonPin, INPUT_PULLUP);  // Enable internal pull-up resistor
  Serial.begin(9600);  // Start serial communication
}

void loop() {
  int joystick1pot1 = analogRead(A0);  // Read potentiometer on A0
  int joystick1pot2 = analogRead(A1);  // Read potentiometer on A1
  int joystick2pot1 = analogRead(A2);  // Read potentiometer on A2
  int joystick2pot2 = analogRead(A3);  // Read potentiometer on A3

  buttonState = digitalRead(buttonPin);

  int joystick1push = 0;
  if (buttonState == LOW) {
    joystick1push = 0;
  } else {
    joystick1push = 1;
  }

  // Send values in raw format: e.g. "512;678"
  Serial.print(joystick1pot1);
  Serial.print(",");
  Serial.print(joystick1pot2);
  Serial.print(",");
  Serial.print(joystick2pot1);
  Serial.print(",");
  Serial.print(joystick2pot2);
  Serial.print(",");
  Serial.print(joystick1push);
  Serial.print(",");
  Serial.print("2");
  Serial.print(",");
  Serial.print("3");
  Serial.print(",");
  Serial.println("4");

  delay(100);  // Adjust as needed
}
