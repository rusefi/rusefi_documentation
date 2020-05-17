
Mazda Miata MX5 NB2 2001-2005 Standalone

[microRusEFI](Hardware_microRusEfi) should be set for Hall

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
| 4AE | EGR Boost Sensor| x            | kind of MAP?                          |
| 4AF | Main Relay Power| 12V          | +12v from Main Relay                  |


| xx  | x               | x            | x                                     |

x4 AUX low-side drivers

Extra pins: 

TE 316836-1 for 20 AWG to 22 AWG

TE 316838-1 for 16 - 18 AWG



[MREAdapter72 InteractiveBOM](https://rusefi.com/docs/ibom/hw72nb_0.2.html)


### OEM harness add-ons  

| Board   | stm32 pin  |   |
|-----|---|---|
| 2O  | AFR | Analog signal for external wide band oxygen controller |  
| 4U  | MAP| Manifold absolute pressure analog signal from external sensor | 
| 4K  | +5v | +5v feed for MAP sensor |
| 4AH | GND | Sensor ground | 


![x](installations/NB2_Miata_ECU_Connectors_Add-Ons.png)


### SD card wiring

| Board   | stm32 pin  |   |
|---|---|---|
|   | PC10  | SD card SPI Clock  |
|   | PC11  | SD card SPI MISO |
|   | PC12  | SD card SPI MOSI  |
|   | PB8  | SD card SPI Chip Select |

### Bluetooth/TTL wiring

| Board   | stm32 pin  |   |
|---|---|---|
|   | PC10  |   |
|   | PC11  |   |


# Photos
https://github.com/rusefi/rusefi/wiki/Hardware/pnp_microRusEfi_nb2/MREAdapter72_0_2_front.jpg
https://github.com/rusefi/rusefi/wiki/Hardware/pnp_microRusEfi_nb2/MREAdapter72_0_2_back.jpg


https://youtu.be/6IZcHCQl8yo



Case compatibility:

Toyota Camry 89661-3T270
89661-06691