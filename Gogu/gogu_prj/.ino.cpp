#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2017-11-05 10:25:17

#include "Arduino.h"
#include "gogu.h"
#include <SoftwareSerial.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include "gogu.h"
#include "gogu.h"
#include <DHT.h>
#include "gogu.h"
void gogu_setPinDirection(byte pinNumber, byte pinDirection) ;
void gogu_blinkLed(byte ledNumber, byte blinks) ;
void setup() ;
void loop() ;
boolean gogu_ReturnCurentHour(S_DATA_STRUCT *time) ;
void sendNTPpacket(IPAddress& address) ;
boolean gogu_getDHT_data(S_DATA_STRUCT *climate) ;
void gogu_InitSerial() ;
void gogu_WifiConnect() ;

#include "gogu_prj.ino"

#include "blink_led.ino"
#include "internet_time.ino"
#include "sendToBlynk.ino"
#include "temperature_management.ino"
#include "wifi.ino"

#endif
