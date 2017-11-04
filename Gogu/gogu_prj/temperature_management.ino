#include <DHT.h>

#define DHTTYPE DHT11
#define DHTPIN  2

DHT dht(DHTPIN, DHTTYPE, 11); // 11 works fine for ESP8266
float humidity, temp_f;  // Values read from sensor


float gogu_getDHT_data()
{
	dht.begin();
	delay(500);

	temp_f = dht.readTemperature(true);

	if (isnan(temp_f))
	{
		Serial.println("ERROR : DHT11 temperature!!");
		temp_f = 255;
	}
	else
	{
		Serial.print("DHT11 temperature : ");
		Serial.println(temp_f);
	}
	return temp_f;
}