
microRusEFI should be set for Hall

High-side jumper should be set for +12v


https://rusefi.com/forum/viewtopic.php?t=1677

https://rusefi.com/wiki/index.php?title=Vehicle:Mazda_Miata_2003

https://github.com/rusefi/rusefi/wiki/Hardware/pnp_microRusEfi_nb2/hw72nb.pdf

| Pin Number | Name     | Type ID      | Default function                                     |
| ----------:|:-------- | ------------ |:---------------------------------------------------- |
| 2A  | Inj 1           | Low-Side     | Injector #1                           |
| 2B  | Fan             | Low-Side     | Radiator Fan Control Relay Output     |
| 2C  | A/C Fan         | x            | x                                     |
| 2D  | Inj 2           | Low-Side     | Injector #2                           |
| 2G  | Inj 3           | Low-Side     | Injector #3                           |
| 2J  | Inj 4           | Low-Side     | Injector #4                           |
| 2O  | rusEFI WBO      | x            | x                                     |
| 2M  | Fuel Pump       | Low-Side     | Fuel Pump Relay Output                |
| 2R  | MIL             | Low-Side     | Check Engine Light output             |
| 2P  | IAC Feed        | x            | x                                     |
| -          |    -     | -            | -                                     |
| 3A  | GND             | Ground       | Ground                                |
| 3B  | GND             | Ground       | Ground                                |
| 3F  | Coil #1         | High-Side    | Coil #1 control                       |
| 3I  | Coil #2         | High-Side    | Coil #2 control                       |
| 3H  | Main Relay      | Low-Side     | Main Relay Control                    |
| 3K  | rusEFI USB PWR  | x            | x                                     |
| 3L  | rusEFI CAN H    | x            | x                                     |
| 3M  | Alternator      | High-Side    | Alternator Control Output             |
| 3N  | rusEFI CAN L    | x            | x                                     |
| 3O  | Tach            | High-Side    | Tachometer Output                     |
| 3V  | Cam             | Hall Input   | Cam shaft Hall Input                  |
| 3U  | Alt Warn        | x            | x                                     |
| 3Y  | Crank           | Hall Input   | Crank shaft Hall Input                |
| 3Z  | rusEFU USB GND  | x            | x                                     |
| -          |    -     | -            | -                                     |
| 4A  | GND             | Ground       | Ground                                |
| 4D  | VVT Feed        | x            | x                                     |
| 4K  | rusEFI 5v out   | 5v           | External MAP sensor power             |
| 4N  | IAT             | x            | x                                     |
| 4O  | GND             | GND          | Sensor Ground                         |
| 4P  | CLT             | Temp Input   | Coolant Temperature Sensor Input      |
| 4S  | Key             | 12V          | +12v from Ignition Key                |
| 4V  | TPS             | x            | x                                     |
| 4X  | MAF not routed  | x            | x                                     |
| 4AF | Main Relay Power| 12V          | +12v from Main Relay                  |


| xx  | x               | x            | x                                     |



[InteractiveBOM](https://rusefi.com/docs/ibom/hw72nb_0.2.html)


# Photos
https://github.com/rusefi/rusefi/wiki/Hardware/pnp_microRusEfi_nb2/MREAdapter72_0_2_front.jpg
https://github.com/rusefi/rusefi/wiki/Hardware/pnp_microRusEfi_nb2/MREAdapter72_0_2_back.jpg