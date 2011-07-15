int relayPin = 13;
int incomingByte = 0;

void setup(){
  pinMode(relayPin, OUTPUT);
  Serial.begin(9600);
  digitalWrite(relayPin, HIGH);
  //Serial.println('Arduino is ready!');
}

void loop(){
  if(Serial.available() > 0){
    incomingByte = Serial.read();
    Serial.println(incomingByte);
    if(incomingByte == 49){
      Serial.println(1);
      digitalWrite(relayPin, HIGH);
    }else{
      Serial.println(0);
      digitalWrite(relayPin, LOW);
    }
  }
}
