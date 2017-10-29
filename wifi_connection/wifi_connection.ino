#include <SoftwareSerial.h>
#include <ESP8266WiFi.h>

const char* ssid     = "DIGI-8N2x";
const char* password = "salem2015";
SoftwareSerial swSer(14, 12, false, 256);
unsigned long mytime;

void init_serial()
{
  Serial.begin(115200);
  swSer.begin(115200);

  Serial.println("\nSoftware serial test started");

  Serial.println();
  Serial.println();
}

void wifi_connect()
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
}

void setup() {
  // put your setup code here, to run once:
  init_serial();
  wifi_connect();
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
  print_ESP_time();

  if (  WiFi.status() == WL_CONNECTED)
  {
    Serial.print("\n Still Connected! \n");
  }
  else
  {
    wifi_connect();
  }
  
   
}
