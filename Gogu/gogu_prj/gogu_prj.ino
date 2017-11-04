#include <SoftwareSerial.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include "gogu.h"


const char* ssid     = "DIGI-8N2x";
const char* password = "salem2015";
SoftwareSerial swSer(14, 12, false, 256);
S_TIME_STRUCT timeStruct;

byte gu8_PreviousGoodHour = 8;
byte gu8_NbOfErrors = 0;


void setup() {
  // put your setup code here, to run once:
  gogu_InitSerial();
  gogu_WifiConnect();
}

void loop()
{
  // print_ESP_time();
  byte lu8_localHour = 0;

  if (  WiFi.status() == WL_CONNECTED)
  {
    Serial.print("\n Still Connected!\n");
  }
  else
  {
    gogu_WifiConnect();
  }

  lu8_localHour = gogu_ReturnCurentHour(&timeStruct);


  Serial.print("Local Hour : ");
  if (lu8_localHour != 0)
  {
    gu8_NbOfErrors = 0;
    gu8_PreviousGoodHour = timeStruct.hour;
    Serial.print(timeStruct.hour);
    Serial.println(timeStruct.minutes);
  }
  else
  {
    gu8_NbOfErrors++;
    if (gu8_NbOfErrors > 6)
    {
      gu8_PreviousGoodHour = 8;
      //ESP.restart();
    }
    Serial.print(" Error, no hour received; previous hour was: ");
    Serial.println(gu8_PreviousGoodHour);
  }

  gogu_getDHT_data();

  if((lu8_localHour >= 8) && (lu8_localHour >= 22))
  {

  }
  else
  {

  }
  // wait ten seconds before asking for the time again
  delay(20000);

}
