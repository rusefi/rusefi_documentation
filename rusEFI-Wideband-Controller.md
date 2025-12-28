# rusEFI Wideband Controller

*Also see [Wide Band Sensors](Wide-Band-Sensors) for general information regarding wideband oxygen sensors.*

Base CAN ID: 400 (decimal) = 0x190 (11-bit standard ID). This number increments by 2xN for the N-th controller.

Bytes 2-3 are the lambda, scaled by 0.0001. The range is 0.5 to 2.0.

[Turbine Research on YouTube](https://www.youtube.com/watch?v=tb7ZC1hpdyI) has created a great video on setting up the rusEFI Wideband Controller.

## FAQ

*__Q:__ I am trying to test on the bench but the heater is not on. What's wrong?*  
__A:__ We control the heater based on RPM; there is also an option to force the heater on for bench testing.

*__Q:__ The red LED is dimly lit. What's going on?*  
__A:__ We only preheat mildly until the engine is running.

*__Q:__ Why would you need CAN for rusEFI WBO?*  
__A:__ We control the heater based on RPM; also the WBO compensates for battery voltage based on CAN info.

## 042 mini WBO Pinout

[connector info](https://rusefi.com/forum/viewtopic.php?p=43705#p43705)

![Bosch LSU 4.9 connector pinout](Images/diagrams/Bosch_LSU_4.9_connector_pinout.png)

F042 module pinout

| Pin Number | Function | Notes |
|:---:|:---:| ---|
| 1 | Ground | Connect to chassis ground |
| 2 | LSU Ip | Connect to sensor pin 1 |
| 3 | LSU Heater - | Connect to sensor pin 3 |
| 4 | LSU Heater + | Connect to sensor pin 4 |
| 5 | No connection | |
| 6 | 12v Supply | Connect to fuel pump supply or independent relay controlled by ECU |
| 7 | No connection | |
| 8 | LSU Vm | Connect to sensor pin 2 |
| 9 | LSU Rtrim | Connect to sensor pin 5 |
| 10 | LSU Un | Connect to sensor pin 6 |
| 11 | CAN H | CAN bus high |
| 12 | CAN L | CAN bus low |

On a couple of legacy Hellen boards we use a JST XH2.54 XH 2.54mm connector for WBO

![Hellen WBO Pinout](Hardware-files/Hellen/hellen72-wbo.jpg)

## LED Decoding

| Blue LED | Green LED | Meaning |
|:--------:|:---------:| -----|
| off | fast flash | sensor warming up |
| off | slow flash | Sensor hot, operating normally |
| flashing | off | See error code table below |
| alternating | alternating | Bootloader, see below |

## Firmware Update

rusEFI's own wideband module requires one time initial programming. The self-contained version of the board relies on a custom USB header, while the module integrated into Hellen ECUs requires usage of ST-Link programmer hardware via TC2030 or breakout SWD pins.

initial programming binary at [https://github.com/mck1117/wideband/tree/master/for_rusefi](https://github.com/mck1117/wideband/tree/master/for_rusefi)

At the moment only known to work using STM32Cube software, not STLink utility. In the case of Hellen ECUs, 5v via USB is required.

## Error Codes

Green LED off and blue LED flashing indicates an error. The blue LED will blink a certain number of times, with a 2 second pause, then repeat.

| Blinks | Meaning |
| --- |:--- |
| 3 | Sensor failed to heat up within 30 seconds |
| 4 | Sensor overheated after entering closed loop mode |
| 5 | Sensor unexpectedly cold after entering closed loop mode (bad wiring?) |

### Bootloader LED Codes

| Blink pattern | Meaning |
| --- |:--- |
| alternating slowly | Firmware integrity check failed, please retry firmware upgrade. |
| alternating quickly | Waiting for bootloader entry command, only occurs for ~1 second before launching the firmware |

## Setting it up in TunerStudio

In order for the WBO to work, the following conditions (and maybe more) have to be met:

* Under "Controller" -> "Can Bus Communication" -> "Enable rusEFI Can Broadcast" = "true" must be set
* Under "Sensors" -> "EGO Sensor" -> "Enable Can Wideband" = "true" must be set

There was also an opinion voiced that the board needs to see voltage on the "vBatt ADC Input" pin. This is as yet unconfirmed.

## Source Code

[The hardware and software source code are hosted here.](https://github.com/mck1117/wideband)

## Forum Thread

[Wideband Controller — rusEFI Forum](https://rusefi.com/forum/viewtopic.php?f=4&t=1856)

## Index Selection

[https://github.com/mck1117/wideband/issues/11](https://github.com/mck1117/wideband/issues/11)

## Firmware

We support loading firmware from SD card for updates or rollback see https://github.com/rusefi/rusefi/pull/8870

[Classic 2023 firmware](https://github.com/andreika-git/hellen-one/tree/master/modules/wbo/fw-releases/Wideband%20f0_module%202023-dec)

## Fabrication

* Power board with 5v (WBO module produces it's own 3v from supplied 5v)
* Tag-Connect-TC2030 to upload
* Power cycle to confirm green LED blinking

![x](Hardware-files/Hellen/hellen-wbo-F042-soldering-map.jpg)
