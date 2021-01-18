# Proteus v0.3 Pinout & Wiring

## _NOTE: this pinout only applies to boards v0.3 and newer (green). [If you have v0.2 or older (probably black), then use the pinout found here!](Hardware-Proteus-Wiring-v02)_

## Black 35 Pin 776231-1

|Pin Number|Name      | Type ID | Default function                   |
| ---:|:------------- | ----- |:------------------------------------ |
|  1  |Highside #2    | hs    | output                               |
|  2  |Highside #1    | hs    | output                               |
|  3  |**Lowside #1** | ls    | Injector #1                          |
|  4  |**Lowside #3** | ls    | Injector #3                          |
|  5  |**Lowside #5** | ls    | Injector #5                          |
|  6  |**Lowside #6** | ls    | Injector #6                          |
|  7  |**Lowside #7** | ls    | Injector #7                          |
|  8  |**Lowside #9** | ls    | Injector #9                          |
|  9  |**Lowside #11**| ls    | Injector #11                         |
| 10  |**Lowside #13**| ls    | low-side output: main relay          |
| 11  |**Lowside #14**| ls    | low-side output                      |
| 12  |**Lowside #15**| ls    | low-side output: radiator fan relay  |
| 13  |Highside #3    | hs    | output                               |
| 14  |Highside #4    | hs    | output                               |
| 15  |**Lowside #2** | ls    | Injector #2                          |
| 16  |**Lowside #4** | ls    | Injector #4                          |
| 17  | **GND**       | gnd   | Power GND                            |
| 18  | **GND**       | gnd   | Power GND                            |
| 19  |**Lowside #8** | ls    | Injector #8                          |
| 20  |**Lowside #10**| ls    | Injector #10                         |
| 21  |**Lowside #12**| ls    | Injector #12                         |
| 22  | Ignition 3    | hl    | Ignition cylinder 3                  |
| 23  |**Lowside #16**| ls    | low-side output: fuel pump           |
| 24  | **GND**       | gnd   | Power GND                            |
| 25  | Ignition 12   | hl    | Ignition cylinder 12                 |
| 26  | Ignition 11   | hl    | Ignition cylinder 11                 |
| 27  | Ignition 10   | hl    | Ignition cylinder 10                 |
| 28  | Ignition 9    | hl    | Ignition cylinder 9                  |
| 29  | Ignition 8    | hl    | Ignition cylinder 8                  |
| 30  | Ignition 7    | hl    | Ignition cylinder 7                  |
| 31  | Ignition 6    | hl    | Ignition cylinder 6                  |
| 32  | Ignition 5    | hl    | Ignition cylinder 5                  |
| 33  | Ignition 4    | hl    | Ignition cylinder 4                  |
| 34  | Ignition 2    | hl    | Ignition cylinder 2                  |
| 35  | Ignition 1    | hl    | Ignition cylinder 1                  |

## Black 23 Pin 776228-1
|Pin Number|Name   | Type ID | Default function                   |
| ---:|:---------- | ----- |:------------------------------------ |
| 1   | DIGITAL 2  | din   | Digital trigger/switch input         |
| 2   | DIGITAL 3  | din   | Digital trigger/switch input         |
| 3   | DIGITAL 4  | din   | Digital trigger/switch input         |
| 4   | VR2 pos    | vr    | Variable Reluctance #2 positive      |
| 5   | VR1 pos    | vr    | Variable Reluctance #1 positive      |
| 6   | ETB1-      | etb   | ETB 1 negative                       |
| 7   | ETB1+      | etb   | ETB 1 positive                       |
| 8   | ETB2-      | etb   | ETB 2 negative                       |
| 9   | DIGITAL 5  | din   | Digital trigger/switch input         |
| 10  | DIGITAL 1  | din   | Digital trigger/switch input         |
| 11  | DIGITAL 6  | din   | Digital trigger/switch input         |
| 12  | VR2 neg    | vr    | Variable Reluctance #2 negative      |
| 13  | VR1 neg    | vr    | Variable Reluctance #1 negative      |
| 14  | Reserved   |       | Reserved for future use              |
| 15  | ETB2+      | etb   | ETB 2 positive                       |
| 16  | CAN-       | can   | CAN bus low                          |
| 17  | CAN+       | can   | CAN bus high                         |
| 18  | +12 raw    | 12v   | Ignition power / ECU power source<br/>Connect this pin to the output of your ignition switch.|
| 19  | **GND**    | gnd   | Power GND                            |
| 20  | **GND**    | gnd   | Power GND                            |
| 21  | Reserved   |       | Reserved for future use              |
| 22  | Reserved   |       | Reserved for future use              |
| 23  | +12V mr    | 12v   | Power supply from main relay.<br/>Connect this pin to the output of the car's main relay that also powers injectors, coils, etc.<br/>Supplies power to electronic throttle drivers and high side outputs.### |

## White 35 Pin 776231-2
|Pin Number|Name   | Type ID | Default function                   |
| ---:|:---------- | ----- |:------------------------------------ |
| 1   | **GND**    | sgnd  | Sensor GND                           |
| 2   | **GND**    | sgnd  | Sensor GND                           |
| 3   | **GND**    | sgnd  | Sensor GND                           |
| 4   | **GND**    | sgnd  | Sensor GND                           |
| 5   | **GND**    | sgnd  | Sensor GND                           |
| 6   | **GND**    | sgnd  | Sensor GND                           |
| 7   | **GND**    | sgnd  | Sensor GND                           |
| 8   | **GND**    | sgnd  | Sensor GND                           |
| 9   | 5V SENS 1  | 5v    | Analog Voltage +5 supply #1          |
| 10  | 5V SENS 2  | 5v    | Analog Voltage +5 supply #2          |
| 11  | +12V out   | 12v   | 12V protected output for sensors     |
| 12  | +12V out   | 12v   | 12V protected output for sensors     |
| 13  | AV1        | av    | Analog Voltage Input #1              |
| 14  | AV3        | av    | Analog Voltage Input #3              |
| 15  | AV5        | av    | Analog Voltage Input #5              |
| 16  | AV7        | av    | Analog Voltage Input #7              |
| 17  | AV9        | av    | Analog Voltage Input #9              |
| 18  | AV11       | av    | Analog Voltage Input #11             |  
| 19  | AT1        | at    | Analog Thermistor Input #1           |
| 20  | AT3        | at    | Analog Thermistor Input #3           |
| 21  | 5V SENS 1  | 5v    | Analog Voltage +5 supply #1          |
| 22  | 5V SENS 2  | 5v    | Analog Voltage +5 supply #2          |
| 23  | **GND**    | sgnd  | Sensor GND                           |
| 24  | AV2        | av    | Analog Voltage Input #2              |
| 25  | AV4        | av    | Analog Voltage Input #4              |
| 26  | AV6        | av    | Analog Voltage Input #6              |
| 27  | AV8        | av    | Analog Voltage Input #8              |
| 28  | AV10       | av    | Analog Voltage Input #10             |
| 29  | **GND**    | sgnd  | Sensor GND                           |
| 30  | AT2        | at    | Intake air temperature               |
| 31  | AT4        | at    | Analog Thermistor Input #4           |
| 32  | 5V SENS 1  | 5v    | Analog Voltage +5 supply #1          |
| 33  | 5V SENS 2  | 5v    | Analog Voltage +5 supply #2          |
| 34  | ~KNOCK 1~  |       | ~Knock input 1~ - Due to a hardware defect, knock hardware can't work on v0.3 :( |
| 35  | ~KNOCK 2~  |       | ~Knock input 2~ |

## Misc notes
- UB-20PMFP-LC7002 waterproof USB connector
- Hammond 1590XXFL metal enclosure
