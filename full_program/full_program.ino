#include <SoftwareSerial.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>

const char* ssid     = "DIGI-8N2x";
const char* password = "salem2015";
SoftwareSerial swSer(14, 12, false, 256);
unsigned long mytime;

/* Don't hardwire the IP address or we won't get the benefits of the pool.
 *  Lookup the IP address for the host name instead */
IPAddress timeServerIP; // time.nist.gov NTP server address
const char* ntpServerName = "time.nist.gov";
const int NTP_PACKET_SIZE = 48;		// NTP time stamp is in the first 48 bytes of the message
byte packetBuffer[ NTP_PACKET_SIZE]; //buffer to hold incoming and outgoing packets
unsigned int localPort = 2390;      // local port to listen for UDP packets

// A UDP instance to let us send and receive packets over UDP
WiFiUDP udp;
byte gu8_PreviousGoodHour = 8;
byte gu8_NbOfErrors = 0;

void gogu_InitSerial()
{
  Serial.begin(115200);
  swSer.begin(115200);

  Serial.println("\nSoftware serial test started");

  Serial.println();
  Serial.println();
}

void gogu_WifiConnect()
{
  Serial.print("Connecting to ");
  Serial.println(ssid);
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");  
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  
  Serial.println("Starting UDP");
  udp.begin(localPort);
  Serial.print("Local port: ");
  Serial.println(udp.localPort());
}

byte gogu_ReturnCurentHour()
{

  byte lu8_returnValue;
  
  //get a random server from the pool
  WiFi.hostByName(ntpServerName, timeServerIP); 

  sendNTPpacket(timeServerIP); // send an NTP packet to a time server
  // wait to see if a reply is available
  delay(1000);
  
  int cb = udp.parsePacket();
  if (!cb) {
    Serial.println("no packet yet");
    return 255;
  }
  else {
//    Serial.print("packet received, length=");
//    Serial.println(cb);
//    // We've received a packet, read the data from it
    udp.read(packetBuffer, NTP_PACKET_SIZE); // read the packet into the buffer

    //the timestamp starts at byte 40 of the received packet and is four bytes,
    // or two words, long. First, esxtract the two words:

    unsigned long highWord = word(packetBuffer[40], packetBuffer[41]);
    unsigned long lowWord = word(packetBuffer[42], packetBuffer[43]);
    // combine the four bytes (two words) into a long integer
    // this is NTP time (seconds since Jan 1 1900):
    unsigned long secsSince1900 = highWord << 16 | lowWord;
    Serial.print("Seconds since Jan 1 1900 = " );
    Serial.println(secsSince1900);

    // now convert NTP time into everyday time:
 //   Serial.print("Unix time = ");
    // Unix time starts on Jan 1 1970. In seconds, that's 2208988800:
    const unsigned long seventyYears = 2208988800UL;
    // subtract seventy years:
    unsigned long epoch = secsSince1900 - seventyYears;
    // print Unix time:
//    Serial.println(epoch);

  	int UTC_hour 	= (epoch  % 86400L) / 3600;


    lu8_returnValue = UTC_hour + 2;
	
    // print the hour, minute and second:
//    Serial.print("The UTC time is ");       // UTC is the time at Greenwich Meridian (GMT)
//    Serial.print((epoch  % 86400L) / 3600); // print the hour (86400 equals secs per day)
//    Serial.print(':');
//    if ( ((epoch % 3600) / 60) < 10 ) {
//      // In the first 10 minutes of each hour, we'll want a leading '0'
//      Serial.print('0');
//    }
//    Serial.print((epoch  % 3600) / 60); // print the minute (3600 equals secs per minute)
//    Serial.print(':');
//    if ( (epoch % 60) < 10 ) {
//      // In the first 10 seconds of each minute, we'll want a leading '0'
//      Serial.print('0');
//    }
//    Serial.println(epoch % 60); // print the second
  }
  
	return lu8_returnValue;

}

// send an NTP request to the time server at the given address
unsigned long sendNTPpacket(IPAddress& address)
{
//  Serial.println("sending NTP packet...");
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;

  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:
  udp.beginPacket(address, 123); //NTP requests are to port 123
  udp.write(packetBuffer, NTP_PACKET_SIZE);
  udp.endPacket();
}

void setup() {
  // put your setup code here, to run once:
  gogu_InitSerial();
  gogu_WifiConnect();
}

void print_ESP_time()
{
    // put your main code here, to run repeatedly:
  Serial.print("Time: ");
  mytime = millis();
  //prints time since program started
  Serial.println(mytime);
  // wait a second so as not to send massive amounts of data
  delay(5000);
}

void loop() 
{
  // print_ESP_time();
  byte lu8_localHour;
  
  if (  WiFi.status() == WL_CONNECTED)
  {
    Serial.print("\n Still Connected!\n");
  }
  else
  {
    gogu_WifiConnect();
  }

  lu8_localHour = gogu_ReturnCurentHour();
  
  Serial.print("Local Hour : ");
  if (lu8_localHour != 255)
  {
    gu8_NbOfErrors = 0;
    gu8_PreviousGoodHour = lu8_localHour;
    Serial.println(lu8_localHour);
  }
  else
  {
    gu8_NbOfErrors++;
    if (gu8_NbOfErrors > 60)
    {
      gu8_PreviousGoodHour = 8;
      //ESP.restart();
    }
    Serial.print(" Error, no hour received; previous hour was: ");
    Serial.println(gu8_PreviousGoodHour);
  }
  
  // wait ten seconds before asking for the time again
  delay(20000);
   
}
