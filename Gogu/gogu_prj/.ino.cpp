#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2017-11-04 21:30:42

#include "Arduino.h"
#include <SoftwareSerial.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include "gogu.h"
#include "gogu.h"
#include <DHT.h>
void setup() ;
void loop() ;
boolean gogu_ReturnCurentHour(S_TIME_STRUCT *time) ;
void sendNTPpacket(IPAddress& address) ;
float gogu_getDHT_data() ;
void gogu_InitSerial() ;
void gogu_WifiConnect() ;

#include "gogu_prj.ino"

#include "internet_time.ino"
#include "sendToBlynk.ino"
#include "temperature_management.ino"
#include "wifi.ino"

#endif
