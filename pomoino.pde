int bluePin = 9;
int greenPin = 10;
int redPin = 11;
int buzzerPin = 8;


void setup(){
pinMode(redPin, OUTPUT);
pinMode(greenPin, OUTPUT);
pinMode(bluePin, OUTPUT);
pinMode(buzzerPin, OUTPUT);
}

void setColor(int redVal, int greenVal, int blueVal){
analogWrite(redPin, redVal);
analogWrite(greenPin, greenVal);
analogWrite(bluePin, blueVal);
}

void stopWarning(){
  tone(buzzerPin, 220, 2000);
  delay(2000);
}

void startMusic(){
  tone(buzzerPin, 261);
  delay(50);
  tone(buzzerPin, 293);
  delay(50);
  tone(buzzerPin, 329);
  delay(50);
  tone(buzzerPin, 349);
  delay(50);
  tone(buzzerPin, 392);
  delay(50);
  tone(buzzerPin, 440);
  delay(50);
  tone(buzzerPin, 493, 500);
}

void stopMusic(){
  tone(buzzerPin, 493);
  delay(50);
  tone(buzzerPin, 440);
  delay(50);
  tone(buzzerPin, 392);
  delay(50);
  tone(buzzerPin, 349);
  delay(50);
  tone(buzzerPin, 329);
  delay(50);
  tone(buzzerPin, 293);
  delay(50);
  tone(buzzerPin, 261, 500);
}

void ticTac(int minutes){
  int miliseconds = minutes * 1000)
  for (int i =0; i < miliseconds; i++){
  tone(buzzerPin, 130);
  delay(50)
  tone(buzzerPin, 260);
  }
}

void startTaskTime(int minutes){
  setColor(255,0,0);
  int miliseconds = minutes * 1000;
  delay(miliseconds);
}

void startRestTime(int minutes){
  setColor(0,255,0);
  int miliseconds = minutes * 1000;
  delay(miliseconds);
}

void loop(){
startTaskTime(1);
stopMusic();
startRestTime(1);
startMusic();
}

