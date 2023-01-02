# Proteus v0.2 Pinout & Wiring

```diff
- Not sure what board you have? Your probably have NEWER board and you are looking at the wrong page
```

## _NOTE: this pinout only applies to boards v0.2 and older (probably black).  [Interactive Pinout 0.3, 0.4, 0.5 and 0.6](https://rusefi.com/docs/pinouts/proteus/)_

## Black 35 Pin 776231-1 Right

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
| 17  | **GND**       | y     | Power GND                            |
| 18  | **GND**       | y     | Power GND                            |
| 19  |**Lowside #8** | y     | Injector #8                          |
| 20  |**Lowside #10**| y     | Injector #10                         |
| 21  |**Lowside #12**| y     | Injector #12                         |
| 22  | Ignition 3    | y     | Ignition cylinder 3                  |
| 23  |**Lowside #16**| y     | low-side output: fuel pump           |
| 24  | **GND**       | y     | Power GND                            |
| 25  | Ignition 12   | y     | Ignition cylinder 12                 |
| 26  | Ignition 11   | y     | Ignition cylinder 11                 |
| 27  | Ignition 10   | y     | Ignition cylinder 10                 |
| 28  | Ignition 9    | y     | Ignition cylinder 9                  |
| 29  | Ignition 8    | y     | Ignition cylinder 8                  |
| 30  | Ignition 7    | y     | Ignition cylinder 7                  |
| 31  | Ignition 6    | y     | Ignition cylinder 6                  |
| 32  | Ignition 5    | y     | Ignition cylinder 5                  |
| 33  | Ignition 4    | y     | Ignition cylinder 4                  |
| 34  | Ignition 2    | y     | Ignition cylinder 2                  |
| 35  | Ignition 1    | y     | Ignition cylinder 1                  |

## Black 23 Pin 776228-1 Middle

|Pin Number|Name   | Type ID | Default function                   |
| ---:|:---------- | ----- |:------------------------------------ |
| 1   | DIGITAL 2  | din   | Digital trigger/switch input         |
| 2   | DIGITAL 3  | din   | Digital trigger/switch input         |
| 3   | DIGITAL 4  | din   | Digital trigger/switch input         |
| 4   | VR2 pos    | vr    | Variable Reluctance #2 positive      |
| 5   | VR1 pos    | vr    | Variable Reluctance #1 positive      |
| 6   | USB SHIELD | usb   | USB                                  |
| 7   | USB D-     | usb   | USB                                  |
| 8   | ETB1-      | y     | ETB 1 negative                       |
| 9   | DIGITAL 5  | y     | Digital trigger/switch input         |
| 10  | DIGITAL 1  | y     | Digital trigger/switch input         |
| 11  | DIGITAL 6  | y     | Digital trigger/switch input         |
| 12  | VR2 neg    | vr    | Variable Reluctance #2 negative      |
| 13  | VR1 neg    | vr    | Variable Reluctance #1 negative      |
| 14  | USB D+     | usb   | USB                                  |
| 15  | ETB1+      | etb   | ETB 1 positive                       |
| 16  | CAN-       | can   | CAN bus low                          |
| 17  | CAN+       | can   | CAN bus high                         |
| 18  | +12 raw    | 12v   | ignition power / ECU power source    |
| 19  | **GND**    | y     | Power GND                            |
| 20  | n/c        | nc    | Nothing! Nada...                     |
| 21  | ETB2-      | etb   | ETB 2 negative                       |
| 22  | ETB2+      | etb   | ETB 2 positive                       |
| 23  | +12V mr    | 12v   | ETB/high-side power supply from main relay  |

## White 35 Pin 776231-2 Left

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
| 29  | AV12       | av    | Analog Voltage Input #12             |
| 30  | AT2        | at    | Intake air temperature IAT           |
| 31  | AT4        | at    | Coolant temperature CLT              |
| 32  | 5V SENS 1  | 5v    | Analog Voltage +5 supply #1          |
| 33  | 5V SENS 2  | 5v    | Analog Voltage +5 supply #2          |
| 34  | KNOCK 1    |       | Not wired on v0.2                    |
| 35  | KNOCK 2    |       | Not wired on v0.2                    |

## Misc notes

- UB-20PMFP-LC7002 waterproof USB connector
- Hammond 1590XXFL metal enclosure
