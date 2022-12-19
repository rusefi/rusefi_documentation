

[Wikipedia](https://en.wikipedia.org/wiki/Volkswagen_Passat_%28B6%29)

BOSCH MED9.1 ECU P/N 3C0 907 115 F

![x](OEM-Docs/VW/2006_Passat/B6_ecu_label.jpg)

Production	2005–2010 (B6)

2.0 Turbo FSI engine code BPY ???

Fuel Rail High Pressure Sensor 0 261 545059 [0261545059](OEM-Docs/Bosch/0261545006.pdf) 06D906051
Fuel Rail High Pressure sensor 0 261 545016 0261545016 06J906051D
0261545053 [Pressure Sensor Fluid PSS-140](OEM-Docs/Bosch/Bosch-Pressure-Sensor-Fluid-600.pdf)

Fuel Rail Pressure sensor connector 4D0971993

Fuel Tank Pressure Sensor / 


Injector 06F906036A

Injector connector 4D0971992 - pin 1 positive/pin 2 GND

MED 9.1

[rusEFI GDI dev board](MC33816-PT2001-dev-board)

[microRusEFI wiring](Hardware-microRusEFI-wiring)

Sensor Grounds:
22/94
53/94
56/94
78/94
29/60
52/60

Sensor Power:
58/94
80/94
28/60
37/60

![x](OEM-Docs/Bosch/connector_154.png)

<a name="94"/>

WARNING: my test mule is EARLY or LATE? TBD

# 94 pin connector T94

|Pin Number|Name   | Default function                         | OEM Color |
| ---:|:---------- |:-----------------------------------------| --- |
| 1/61   | **GND**    | ..Power GND term. 31                     | BRN |
| 2   | **GND**    | ..Power GND term. 31                     | BRN |
| 3   | **12v**    | +12v from ECU relay  term.15             | RED/WHT |
| 4   | **GND**    | Power GND term. 31                       | BRN |
| 5   | **12v**    | ..+12v from ECU relay  term.15           | RED/WHT |
| 6   | **12v**    | ..+12v from ECU relay  term.15           | RED/WHT |
| 12  | analog     | Radiator Coolant CLT P1-b                | BLU  |
| 19/79  | +5v        | ..MAP +5v                                | VIO   |
| 22/82  | analog GND | ..MAF GND                                | BLK   |
| 25  |            | brake light switch +12?                  | BLK/RED   |
| 27/87  | low side   | ..fuel pump control 20Hz PWM             | YEL/BLU   |
| 28/88  | low side   | ..coolant FAN control module 25Hz PMW    | YEL/VIO   |
| 32/92  | low side   | ..main relay control                     | GRN/YEL |
| 38/98  | analog     | ..MAP signal P2-b                        | GRY   |
| 53/113  | **GND**    | ..Sensor GND CLT MAP P1-b                | BLK |
| 56/116  | analog GND | ..Pedal GND                              | BLU/GRY   |
| 57/117  | analog input | ..Pedal signal #1 PPS                    | WHT/BLU   |
| 58/118  | +5v        | ..Pedal sensor power                     | GRN/GRY   |
| 64  |            | MAF signal                               | GRN    |
| 67  |            | ..CAN Low "yellow tape"                  | ORG/BRN   |
| 68  |            | ..CAN High "black tape"                   | ORG/BLK   |
| 69  | low side   | ECU Relay Control (CAN wake up)          | BRN/VIO  |
| 78/138  | analog GND | ..Pedal GND                              | VIO/BLK  |
| 79/139  | analog input | ..Pedal signal #2 PPS2                   | BLK/BLU   |
| 80/140  | +5v        | ..Pedal sensor power                     | BLK/RED   |
| 86  |            | K-line                                   |         |
| 87  | +12v       | Constant +12v from Fuse #25 10A term. 30 |         |
| 92  | +12v       | Constant +12v from Fuse #25 10A term. 30 | BLK/YEL |
|     |            |                                          |    |
End of 94 pin connector T94

<a name="60"/>

# 60 pin connector
|Pin Number|Name   | Default function                      | OEM Color | rusEFI Color |
| ---:|:---------- |:------------------------------------  | --- | --- |
| 1   | INJ neg    | .Injector #2 P5-t                      | RED/WHT | blue |
| 2   | INJ neg    | .Injector #1 P5-t                      | RED/BLK | white |
| 4   | low side   | ..Wastegate bypass valve                | VIO/WHT |
| 7   | analog in  | ..Fuel Low Pressure Sensor pin#2 P5-t, +5#37, GND#14              | VIO/GRN |
| 10  | analog in  | ..Engine CLT P4-b                       | GRN     |
| 12  | analog in  | ..[ETB](Vault-Of-Electronic-Throttle-Bodies-ETB) TPS Signal#1 ETB#1 | GRN/YEL |
| 13  | analog in  | ..Intake air temperatur IAT P4-b        | WHT     |
| 14  | **GND**    | ..Sensor GND (cam, LPFP, CLT, IAT)      | BRN/BLU |
| 15  |            | ..[ETB DC Motor](Vault-Of-Electronic-Throttle-Bodies-ETB)  positive ETB#5                       | VIO     |
| 16  | INJ neg    | .Injector #4 P5-t                      | RED/GRY | green |
| 17  | INJ neg    | .Injector #3 P5-t                      | RED/VIO | orange |
| 19  | low side   | ..Fuel pressure regulator valve 4 Ohm HPFP      | VIO/BRN |
| 20  | low side   | ..Camshaft valve #1                     | VIO/WHT |
| 25  | analog in  | ..Fuel High Pressure Sensor pin#2 P4-b            | GRY/BLU |
| 26  | 5v         | ..Sensor 5v power (cam, )               | BLK/GRY |
| 27  | analog in  | ..[ETB](Vault-Of-Electronic-Throttle-Bodies-ETB) TPS Signal#2 ETB#4 | BLU/GRN |
| 28  | 5v         | ..[ETB](Vault-Of-Electronic-Throttle-Bodies-ETB) +5v          ETB#2 | BLK/BLU |
| 29  | analog GND | ..[ETB](Vault-Of-Electronic-Throttle-Bodies-ETB) Signal GND   ETB#6 | VIO/BRN |
| 30  |            | ..[ETB DC Motor](Vault-Of-Electronic-Throttle-Bodies-ETB) neg ETB#3 | BRN/VIO |
| 32  | INJ pos    | .Injector #3 P5-t connected to #47     | BRN/VIO | green |
| 33  | INJ pos    | .Injector #1 P5-t                      | BRN/BLK | blue |
| 36  | Crank in   | ..VR Crank Negative                     | White   |
| 37  | 5v         | ..Sensor 5v power                       | BLK/GRN |
| 41  | High-Side  | ..Coil #2                               | BLU/GRY |
| 43  | High-Side  | ..Coil #3                               | RED/GRY |
| 44  | digital in | ..Cam position sensor                   | GRN/VIO |
| 47  | INJ pos    | .Injector #2 P5-t connected to #32     | BRN/WHT   | orange | 
| 48  | INJ pos    | .Injector #4 P5-t                      | BRN BRN/GRY   | white |
| 51  | Crank in   | ..VR Crank Positive                     | BRN |
| 52  | **GND**    | ..Sensor GND                            | BLK |
| 56  | High-Side  | ..Coil #4                               | GRY/BRN |
| 58  | High-Side  | ..Coil #1                               | VIO/GRY |
|     |            |                                       |         |
End of 60 pin connector T60

Injector #1: #33/#2

Injector #2: #47/#1 

Injector #3: #32/#17 

Injector #4: #48/#16 

[Passat-GDI-wiring](Passat-GDI-wiring)

"Early" 5 pages

![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_early_1_5.png)
"Early"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_early_2_5.png)
"Early"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_early_3_5.png)
"Early"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_early_4_5.png)
"Early"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_early_5_5.png)

"Late" 5 pages

![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_late_1_5.png)
"Late"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_late_2_5.png)
"Late"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_late_3_5.png)
"Late"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_late_4_5.png)
"Late"
![ecu1](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_late_5_5.png)


Charging

![x](OEM-Docs/VW/2006_Passat/2006_passat_2.0t_charging.png)

R17 Starter motor relay

Relay Control wire - RED/BLK
![x](OEM-Docs/VW/2006_Passat/ENPassatB6-blok-salon-6.jpg)

![x](OEM-Docs/VW/2006_Passat/starting.png)

[The fuel system in FSI engines](OEM-Docs/VW/2006_Passat/SSP_334_d1.pdf)

[Electronically Mapped Cooling System](OEM-Docs/VW/2006_Passat/VWUSA.COM_SSP_222_Electronically_Mapped_Cooling_System.pdf)

# Transmission

[Aisin TF-60SN Volkswagen transmission code 09G](OEM-Docs/VW/2006_Passat/automatic_transmission_09G_851503.pdf)

[Aisin-Warner-09G-Electronics-Anatomy-of-Shift-Controls-Rostra-Powertrain-Controls.pdf](OEM-Docs/VW/2006_Passat/Aisin-Warner-09G-Electronics-Anatomy-of-Shift-Controls-Rostra-Powertrain-Controls.pdf)

Transmission Input Speed sensor G182 and Output Speed sensor G195 are both Hall.

Solenoid Valve 1 N88 and Solenoid Valve 2 N89 are on/off.

# 52 pin connector
|Pin Number|Name     | Default function                      | OEM Color  |
| ---:|:------------ |:------------------------------------  | ---------- |
| 1   | ***GND***    | Ground                                | BRN        |
| 2   | ***GND***    | Ground                                | BRN        |
| 3   | +12v         | Hot all time                          | RED/BRN    |
| 4   |              | Solenoid #10 B1 Positive              |            |
| 5   |              | Solenoid #4 TC Positive               |            |
| 6   |              |                                       |            |
| 15  | high side    | Solenoid #2                           | VIO/GRY    |
| 16  | ???          | Solenoid #9 K2 ?                      | BRN/VIO    |
| 17  |              | Solenoid #6 Main Pressure Negative    |            |
| 18  | ???          | Solenoid #3 K3 ?                      | YEL/GRN    |
| 27  | +12v         | +12v in start/run                     | GRN/BLK    |
| 29  |              | Shift lock solenoid ?                 | VIO/YEL    |
| 30  | ???          | Solenoid #3 K3 ?                      | YEL/VIO    |
| 31  |              | Solenoid #6 Main Pressure Positive    |            |
| 32  |              | Solenoid #9 K2 ?                      | VIO/BLU    |
| 39  |              |                                       | BRN        |
| 42  |              |                                       |            |
| 42  |              |                                       |            |
| 43  |              | Solenoid #4 TC Negative               |            |
|     |              |                                       |            |
| 48  |              | Shift lock solenoid ?                 | VIO        |
| 50  |              |                                       | GRN        |
|     |              |                                       |            |
|     |              |                                       |            |


![x](OEM-Docs/VW/2006_Passat/09G.png)

![x](OEM-Docs/VW/2006_Passat/09G_table.png)


