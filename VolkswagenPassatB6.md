

[Wikipedia](https://en.wikipedia.org/wiki/Volkswagen_Passat_%28B6%29)

BOSCH MED9.1 ECU P/N 3C0 907 115 F

![x](oem_docs/VW/2006_Passat/B6_ecu_label.jpg)

Production	2005–2010 (B6)

2.0 Turbo FSI engine code BPY ???

Fuel Rail Pressure sensor 0261545016 06J906051D

Fuel Rail Pressure sensor connector 4D0971993

Injector 06F906036A

Injector connector 4D0971992

Maybe pin 1 is also positive and pin 2 is also GND for us?

# 94 pin connector T94

|Pin Number|Name   | Default function                   | OEM Color |
| ---:|:---------- |:------------------------------------ | --- |
| 1   | **GND**    |  Power GND                            | BRN |
| 2   | **GND**    |  Power GND                            | BRN |
| 3   | **12v**    |  +12v from ECU relay                 | RED/WHT |
| 4   | **GND**    |  Power GND                            | BRN |
| 5   | **12v**    |  +12v from ECU relay                 | RED/WHT |
| 6   | **12v**    |  +12v from ECU relay                 | RED/WHT |
| 12  |            |                                       |    |
| 32  | low side   | main relay control                    | GRN/YEL |
| 53  | **GND**    |  Sensor GND ?                         | BLK |
| 69  | low side | ECU Relay Control (CAN wake up)      | BRN/VIO |
| 92  | +12v       | Constant +12v from Fuse #25 10A | BLK/YEL |
|     |            |                                       |    |
End of 94 pin connector T94

# 60 pin connector
|Pin Number|Name   | Default function                      | OEM Color |
| ---:|:---------- |:------------------------------------  | --- |
|  4  | low side   | Wastegate bypass valve                | VIO/WHT   |
| 7   | analog in  | Fuel Low Pressure Sensor              | VIO/GRN |
| 14  | **GND**    | Sensor GND (cam, )                    | BRN/BLU |
| 19  | low side   | Fuel pressure regulator value         | VIO/BRN |
| 20  | low side   | Camshaft valve #1                     | VIO/WHT |
| 25  | analog in  | Fuel High Pressure Sensor             | GRN/BLU |
| 26  | 5v         | Sensor 5v power (cam, )               | BLK/GRY |
| 36  | Crank in   | VR Crank Negative                     | White |
| 37  | 5v         | Sensor 5v power                       | BLK/GRN |
| 44  | digital in | Cam position sensor                   | GRN/VIO |
| 51  | Crank in   | VR Crank Positive                     | BRN |
| 52  | **GND**    | Sensor GND                            | BLK |
|     |            | |

"Early" 5 pages

![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_early_1_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_early_2_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_early_3_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_early_4_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_early_5_5.png)

"Late" 5 pages

![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_late_1_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_late_2_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_late_3_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_late_4_5.png)
![ecu1](oem_docs/VW/2006_Passat/2006_passat_2.0t_late_5_5.png)


R17 Starter motor relay

Relay Control wire - RED/BLK
![x](oem_docs/VW/2006_Passat/ENPassatB6-blok-salon-6.jpg)

![x](oem_docs/VW/2006_Passat/starting.png)