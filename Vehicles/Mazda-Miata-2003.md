[72 pin Connector](OEM-connectors#72-pin)

See also [Mazda Miata 2003 alt](Mazda-Miata-2003-alt)

For power see [Mazda Miata 2002 - Starting & Power](Mazda-Miata-2002#starting--power)

![Connector Face](Images/NB2 Miata ECU Connectors Drawing.png)

![Connector Face](Images/NB2_Miata_ECU_Connectors_Drawing_rusefi_harness.png)

Coil three wire plug:

middle wire GND

pin closer to the engine is +12v

pin further away from the engine signal

## Plug 1 (ECU connector #2)

"rusEfi harness" does not mean much - that's just the way I bundle 4-5 wires together on my cars

| pos | color        | desc                | type                              | rusEfi harness  |
| --- | ------------ | ------------------- | --------------------------------- | --------------- |
| 2A  | Yellow/Black | Injector \#1        |                                   | orange Y1       |
| 2B  | Red/Yellow   | Engine radiator fan |                                   | orange B4       |
| 2C  | Blue/White   | AC radiator fan     |                                   |                 |
| 2D  | Violet/Green | Injector \#2        |                                   | blue Y1         |
| 2E  | Light Green  | EGR Valve \#1 Coil  |                                   |                 |
| 2F  | White/Green  | EGR Valve \#2 Coil  |                                   |                 |
| 2G  | Yellow/Red   | Injector \#3        |                                   | white Y1        |
| 2H  | Pink/Black   | EGR Valve \#3 Coil  |                                   |                 |
| 2I  | Pink         | EGR Valve \#4 Coil  |                                   |                 |
| 2J  | Yellow/Green | Injector \#4        |                                   | green Y1        |
| 2K  |              | A/C Relay           |                                   |                 |
| 2L  |              | NA                  | Does not exist                    |                 |
| 2M  | Red/White    | Fuel Pump Relay     |                                   | red B4          |
| 2N  |              | VTCS Control        |                                   |                 |
| 2O  |              | NC                  |                                   |                 |
| 2P  | Orange       | IAC (positive) idle | \+12v wired to main relay via 4AF | red, short wire |
| 2Q  | Violet/Red   | IAC (negative) idle | low-side with diode               | blue b4         |
| 2R  | White/Blue   | MIL Control         | low-side                          | white Y1        |

## Plug 2 (ECU Connector #3)

| pos | color        | desc                      | type                                | rusEfi harness           |
| --- | ------------ | ------------------------- | ----------------------------------- | ------------------------ |
| 3A  | Black        | Injector GND              | ground                              | black Y1                 |
| 3B  | Black/Red    | PCM (ECU) GND             | ground                              | black W4, sliced for MAP |
| 3C  | Green/Yello  | Purge Control Solenoid    |                                     |                          |
| 3D  |              | EGR Boost sens. sol.      |                                     |                          |
| 3E  |              | CDCV Control              | (Evap canister?)                    |                          |
| 3F  | Brown/White  | Coil \#1                  | (cylinder 1 & 4)                    | white B4                 |
| 3G  |              | NA                        | Does not exist                      |                          |
| 3H  |              | Main relay control        | Low-side output                     | white or red, R5         |
| 3I  | Black/Yellow | Coil \#2                  | (cylinder 2 & 3)                    | orange B4                |
| 3J  | Black/Orange | Front O2 sens. heater GND | Presumably switched to GND in 'run' |                          |
| 3K  |              | NC                        |                                     |                          |
| 3L  |              | NC                        |                                     |                          |
| 3M  | Grey/Red     | Alternator field ctrl.    | PWM signal to control voltage       | orange R5                |
| 3N  |              | NC                        |                                     |                          |
| 3O  | Green/Orange | Tach OUT                  | Drives tachometer                   | green B4                 |
| 3P  | White/Black  | Rear O2 sens. Signal      |                                     |                          |
| 3Q  | Green/White  | K-Line (serial comm.)     | Probably goes to OBDII              |                          |
| 3R  |              | NA                        | Does not exist                      |                          |
| 3S  |              | Immobilizer comm.         |                                     |                          |
| 3T  |              | VSS in                    |                                     | blue W3                  |
| 3U  |              | Alternator warn. light    |                                     |                          |
| 3V  |              | Camshaft Sensor           |                                     | blue W3                  |
| 3W  |              | NC                        |                                     |                          |
| 3X  |              | NC                        |                                     |                          |
| 3Y  |              | Crankshaft Sensor         |                                     | white W3                 |
| 3Z  |              | NC                        |                                     |                          |

## Plug 3 (ECU Connector #4)

| pos | color         | desc                       | type                                          | rusEfi harness         |
| --- | ------------- | -------------------------- | --------------------------------------------- | ---------------------- |
| 4A  | Black/Blue    | GND                        | ground                                        | black W4               |
| 4B  |               | Brake Switch               |                                               |                        |
| 4C  |               | Power Steering Switch      | (Presumably used for 'Idle Up')               |                        |
| 4D  | Yellow        | VVT Oil Control Valve pos. | \+12v wired to main relay via 4AF, short wire |                        |
| 4E  |               | DTM switching              | (Diagnostic Terminal?)                        |                        |
| 4F  |               | AC Pressure In             |                                               |                        |
| 4G  |               | NA                         | Does not exist                                |                        |
| 4H  |               | Neutral Switch             |                                               |                        |
| 4I  |               | Clutch Switch              |                                               |                        |
| 4J  |               | VTCS ca. switch            |                                               |                        |
| 4K  |               | NC                         |                                               |                        |
| 4L  | Lt GRN / RED  | Sensor +5V                 |                                               | red W3, sliced for MAP |
| 4M  |               | Knock sens. in             |                                               | white R5               |
| 4N  |               | IAT Sensor                 |                                               | green B2               |
| 4O  | BLK / RED     | Sensor GND                 | ground                                        | black B2               |
| 4P  | Red/Blue      | CLT Sensor                 |                                               | blue B2                |
| 4Q  |               | NA                         | Does not esist                                |                        |
| 4R  | Violet/Yellow | VVT Oil Control Valve neg. | low-side driver                               | white B2               |
| 4S  | Black/White   | \+12V engine fuse 15A      | ECU power source, run/start                   | red B2                 |
| 4T  |               | Alternator output voltage  | (seems to be feedback from alt.)              |                        |
| 4U  |               | NC                         | extra main relay for diode                    | red, short wire        |
| 4V  | Green/Black   | TPS Sensor output          |                                               | green B2               |
| 4W  |               | Front O2 Sensor Signal     |                                               |                        |
| 4X  | Pink          | MAF Sensor                 |                                               | orange B2              |
| 4Y  |               | NA                         | Does not exist                                |                        |
| 4Z  | Pink/Black    | ECU - TCM                  | Communication for A/T                         |                        |
| 4AA | Red           | Rear O2 Sensor             |                                               |                        |
| 4AB |               | FTP Sensor                 | Fuel Tank Pressure                            |                        |
| 4AC |               | ECU - TCM                  | Communication for A/T                         |                        |
| 4AD |               | Fuel Level Sensor          |                                               |                        |
| 4AE |               | EGR Boost Pressure Sensor  |                                               |                        |
| 4AF | white/Red     | \+12v from main relay      |                                               | red, short wire        |
| 4AG | Blue/Red      | Bat+ (Hot all times)       | 12v 10A fuse from battery                     |                        |
| 4AH |               | Evap                       |                                               |                        |

| desc       | type   | rusEfi harness |
| ---------- | ------ | -------------- |
| MAP signal | analog | blue           |
| AFR signal | analog | white          |

![Wiring Diagram](Images/Mazda_miata_2003.png)

Individual pages for printing:
![Wiring Diagram](Images/Mazda_miata_2003_page_1.png)

![Wiring Diagram](Images/Mazda_miata_2003_page_2.png)

![Wiring Diagram](Images/Mazda_miata_2003_page_3.png)

## Automatic Transmission

see [Mazda Miata 2001 - Automatic Transmission](Mazda-Miata-2001#automatic-transmission)



![Wiring Diagram](oem_docs/Mazda/2003_Miata/Mazda_miata_2003_at.png)

## Immobilizer

NALDEC NC87 67 790 MAZDA MX5 EUNOS MK2 MK2.5 BURGLAR ALARM MODULE NC8767790 is not an immobilizer 


US immobilizer
![Wiring Diagram](Images/2001_miata_immobilizer.png)


## Wiper Motor
![Wiring Diagram](Images/2003_miata_wiper_motor.png)

## Charging

![Wiring Diagram](Images/2003_miata_charging.png)

## Air Conditioning

![Wiring Diagram](Images/2003_miata_ac.png)

See also [Mazda Miata 2002](Mazda-Miata-2002)

## Starting & power

In start or run ECU is powered from Engine Fuse 15A (behind left side of dash) via 4S. (This is different from 2002 - nothing on 4S in 2002)

ECU controls main relay via 3H. (This is different from 2002 - nothing on 3H in 2002)

ECU gets +12v from main relay output 4AF which is used as +12v source for VVT (4D) and IAC (2P).

Fly-back diode - stripe facing +12 - is needed between VVT 4D (power, stripe side) and VVT control 4R.

Fly-back diode - stripe facing +12 - is needed between IAC 2P (power, stripe side) and IAC control 2Q.

See http://rusefi.com/forum/viewtopic.php?f=3&t=906&p=25018l#p25018

For ignition key see [Mazda Miata 2002 - Starting & Power](Mazda-Miata-2002#starting--power)

## Misc

Two timing marks - the left one is TDC
