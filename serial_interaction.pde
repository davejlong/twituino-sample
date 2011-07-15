/*
  Copyright (C) 2011  [David Long](http://davejlong.com)

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>. 
*/
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
