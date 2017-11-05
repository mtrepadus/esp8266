################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
..\blink_led.ino \
..\gogu_prj.ino \
..\internet_time.ino \
..\sendToBlynk.ino \
..\temperature_management.ino \
..\wifi.ino 

CPP_SRCS += \
..\.ino.cpp 

LINK_OBJ += \
.\.ino.cpp.o 

INO_DEPS += \
.\blink_led.ino.d \
.\gogu_prj.ino.d \
.\internet_time.ino.d \
.\sendToBlynk.ino.d \
.\temperature_management.ino.d \
.\wifi.ino.d 

CPP_DEPS += \
.\.ino.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
.ino.cpp.o: ..\.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

blink_led.o: ..\blink_led.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

gogu_prj.o: ..\gogu_prj.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

internet_time.o: ..\internet_time.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

sendToBlynk.o: ..\sendToBlynk.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

temperature_management.o: ..\temperature_management.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

wifi.o: ..\wifi.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Sloeber\sloeber\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\proj\esp8266\Gogu\gogu_prj/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\trepa\Documents\Arduino\libraries\DHT" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SoftwareSerial" -I"C:\Sloeber\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


