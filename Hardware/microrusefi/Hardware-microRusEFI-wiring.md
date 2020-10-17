# Connector Pinout

![connector](Hardware/microrusefi/Hardware_microRusEfi_connector.png)

![microRusEfi photo](Hardware/microrusefi/Hardware_microRusEfi_connector.jpg)

Rear side of PCB

![microRusEfi image](Hardware/microrusefi/Hardware_microRusEfi_0_3_PCB_pinout.png)

![x](Hardware/microrusefi/microRusEfi_connectors/MRE_reality.jpg)

# Pin Descriptions

Each pin has a *Type ID*, which can be used to look up in the following tables what the pin is for, and what functions it can perform.

| Pin Number | Name     | Type ID | Default function                                     | rusEFI pigtail color |
| ----------:|:-------- | ------- |:---------------------------------------------------- | :-------- |
| 1  | **12V**          | 12V     | 12V supply from main relay output, see also pin #29  | white |
| 2  | **GND**          | pgnd    | Power GND                                      | white |
| 3  | **Lowside 2**    | ls      | Idle solenoid                                  | white |
| 4  | **ETB+**         | etb     | ETB+                                           | white |
| 5  | **12V**          | 12V     | 12V supply from Key (turn on/off power)        | black |
| 6  | **GND**          | pgnd    | Power GND                                      | black |
| 7  | **Lowside 1**    | ls      | VVT                                            | black |
| 8  | **ETB-**         | etb     | ETB-                                           | black |
| 9  | **Ignition 1**   | ign     | Ignition 1                                     | dark blue |
| 10 | **Ignition 2**   | ign     | Ignition 2                                     | dark blue |
| 11 | **Ignition 3**   | ign     | Ignition 3                                     | dark blue |
| 12 | **Ignition 4**   | ign     | Ignition 4                                     | dark blue |
| 13 | **GP out 6**     | gp_high | Alternator (see JP2 jumper note)               | yellow |
| 14 | **GP out 5**     | gp_high |            (see JP2 jumper note)               | yellow |
| 15 | **USB D-**       | usb     | USB white wire https://youtu.be/4v2VnP-YdlQ                                | yellow |
| 16 | **USB D+**       | usb     | USB green wire https://youtu.be/4v2VnP-YdlQ                                | yellow |
| 17 | **GND**          | sgnd    | Signal GND                                     | red |
| 18 | **AN Temp 1**    | at      | CLT sensor                                     | red |
| 19 | **AN Volt 4**    | av      | **Starting from version 0.5.0 this pin can be used as 5V input for USB connection through main connector (No need to open case to access micro-USB connector)** | red |
| 20 | **AN Volt 5**    | av      | Throttle position sensor (TPS)                 | red |
| 21 | **GND**          | sgnd    | Signal GND                                     | dark green |
| 22 | **AN Temp 4**    | at      |                                                | dark green |
| 23 | **AN Temp 2**    | at      | IAT sensor                                     | dark green |
| 24 | **AN Temp 3**    | at      |                                                | dark green |
| 25 | **Cam (hall)**   | hall    |                                                | light blue |
| 26 | **AN Volt 2**    | av      |                                                | light blue |
| 27 | **AN Volt 1**    | av      | MAP sensor                                     | light blue |
| 28 | **AN Volt 10**   | av      |                                                | light blue |
| 29 | **Main relay**   | mr      | Main relay control signal (low side)           | pink |
| 30 | **AN Volt 7**    | av      |                                                | pink |
| 31 | **AN Volt 3**    | av      | Throttle Pedal Position Sensor (PPS)           | pink |
| 32 | **AN Volt 6**    | av      | External wideband O2 sensor                    | pink |
| 33 | **GP out 3**     | gp_low (gp_pp)  | (IDLE stepper coil 2+)                 | orange |
| 34 | **GP out 2**     | gp_low (gp_pp)  | Fan relay (IDLE stepper coil 1-)       | orange |
| 35 | **GP out 1**     | gp_low (gp_pp)  | Fuel pump relay (IDLE stepper coil 1+) | orange |
| 36 | **AN Volt 8**    | av      |                                                | orange |
| 37 | **Injector 1**   | inj     | Injector 1                                     |
| 38 | **Injector 2**   | inj     | Injector 2                                     |
| 39 | **5V Sensor 2**  | 5v      | MAP sensor supply                              |
| 40 | **AN Volt 9**    | av      |                                                |
| 41 | **Injector 3**   | inj     | Injector 3                                     |
| 42 | **Injector 4**   | inj     | Injector 4                                     |
| 43 | **GP out 4**     | gp_low (gp_pp)  | (IDLE stepper coil 2+)                 |
| 44 | **5V Sensor 1**  | 5v      | TPS sensor supply                              |
| 45 | **VR+/Hall**     | vr/hall | Crank VR+/hall                                 |
| 46 | **VR-**          | vr      | Crank VR- (do not connect if hall)             |
| 47 | **CAN low**      | can     | CAN bus                                        |
| 48 | **CAN high**     | can     | CAN bus                                        |

In some cases without "main relay output +12v" both pins #1 and #5 should be connected to the single source of +12v.

Pin #1 feeds ETB H-bridge, battery voltage sense, gp5 & gp6 high-side +12v, TLE8888 H-bridges.

# Pin Types

These tables provide technical information about the different types of pin found on microrusEfi.

## Power

| ID | Type | Notes & Limits |
|----|-------------| ---- |
| 12V  | Power supply        | 9-22V operating, 5A fuse recommended           |
| pgnd | Power ground        | Solidly ground directly to chassis or engine block. |
| sgnd | Signal ground       | Sensor ground.  ***Do not ground to engine!***
| 5v   | 5V sensor supply    | 5V supply for external sensors.  200mA maximum per pin.


## Stepper

| Pin  | Name                | Notes & Limits                                                                       |
|------|---------------------| ------------------------------------------------------------------------------------ |
| #33 | GP4 | Coil #2 |
| #34 | GP2 | Coil #1 |
| #35| GP1 | Coil #1 |
| #43 | GP4 | Coil #2 |



## Input

| ID   | Type                | Notes & Limits                                                                       | Possible functions |
|------|---------------------| ------------------------------------------------------------------------------------ | --- |
| at   | Analog temperature  | Analog temperature (thermistor) input.  <mark>2.7k/TBD</mark> pullup resistor to 5v  | Thermistor temperature sensor, fuel level sender (variable resistor type) |
| av   | Analog voltage      | Analog voltage input.  500k pull down to GND                                         | Analog voltage sensor (MAP, TPS, acc pedal, oil pressure, etc)
| vr   | Variable reluctor   | VR crank input                                                                       | VR sensors including crank, cam, vehicle speed
| hall | Hall cam/crank      | <mark>TBD pull up to 5v</mark> hall sensor for cam/crank                             | Hall sensors including crank, cam, vehicle speed

## Output

| ID | Type | Notes & Limits | Possible functions |
|----|-------------| ---- | --- |
| inj  | Injector output     | Low side, 2.2A maximum<br/>**Only saturated (high impedance) injectors are supported.** | Injector, general purpose low side |
| ign  | Ignition output     | 5V push-pull, 250mA maximum   | Ignition coil, general purpose 5V push-pull
| ls   | High power low side | General purpose low side output, 4.5A maximum | General purpose low side, injector
| gp_high | General purpose high side | General purpose high side push output, 5V/12V (internally selectable based on JP2 jumper) 250mA maximum | General purpose 5V/12V high side, ignition coil
| gp_low | General purpose low side | General purpose low side pull output, 12V 500mA maximum                            | General purpose low side
| gp_pp  | General purpose Push-Pull | General purpose push-pull (low and high side) output, 600mA | Bipolar IDLE stepper, relays, solenoids |
| mr   | Main relay          | Dedicated main relay output.  Low side turned on with power, 800mA maximum. | Main relay
| etb  | Electronic throttle | Dedicated electronic throttle outputs.  Connect a brushed motor<br/>throttle body directly to these two pins.

## Communication

| ID | Type | Notes & Limits |
|----|-------------| ---- |
| usb | USB     | USB tuning interface
| can | CAN bus | CAN communication

USB cable green wire: USB D+ DATA+

USB cable white wire: USB D- DATA-

USB cable black wire: ground

[HOWTO wire external USB](https://youtu.be/4v2VnP-YdlQ)

USB cable red wire: +5v (would not work via microRusEfi connector for versions < 0.5.0)

## Hall type Crank sensor

See TLE8888 datasheet figure 71
R9=DNP
R15=DNP
R17=2.7K pull-up to 5v

R12=10K
R13=0R


![front hall](Hardware/microrusefi/Hardware_microRusEfi_0_1_assembled_front_hall_setup.jpg)
![front lower](Hardware/microrusefi/Hardware_microRusEfi_0_1_assembled_front_lower.jpg)



# Extra pins

microRusEFI exposes the following pins in addition to the primary 48 pin connector:

J4:

![x](Hardware/microrusefi/J4.png)
| N | Name | Possible functions (not all listed!) |
|----|-------------| ---- |
| 9 | GNS | GND
| 4 | VDD | 3.3V
| 1 | 5V | 5V
| 2 | 12V | 12V from Main Relay
| 3 | PB8 | I2C1_SCL or CAN1_RX
| 6 | PB9 | I2C1_SDA or CAN1_TX
| 8 | PC10 | SPI3_SCK or USART3_TX or UART4_TX
| 5 | PC11 | SPI3_MISO or USART3_RX or UART4_RX
| 10 | PC12 | SPI3_MOSI or USART3_CK or UART5_TX
| 7 | PA15 | SPI3_NSS (Chip Select)

Three GPIOs are available on J2 (SWD) connector. If you are not going to use debuger J2 connector can be used for other purposes.
| N | Name | Possible functions (not all listed!) |
|----|-------------| ---- |
| 7, 8 | GND | GND |
| 1, 2 | 5V | 5V |
| 3, 4 | VDD | 3.3V |
| 5 | SCK | SWD clock or PA14 gpio (no alternative functions) |
| 9 | SWDIO | SWD data or PA13 gpio (no alternative functions) |
| 6 | SWO | SWD/JTAG data out (?) or SPI1_SCK or SPI3_SCK |
| 10 | NRST | CPU reset input (active low) |

For HW version 0.5.0 and newer some additional GPIOs are available on testpoints around STM32.

![x](Hardware/microrusefi/J8_9_10.png)
Please refer to PCB layout for exact positions of this testpoints (no silk refdefs on PCB).

| Tespoint | GPIO | Possible functions (not all listed!) |
|----|-------------| ---- |
| J6 | PE0 | GPIO |
| J8 | PB7 | USART1_RX or TIM4_CH2 |
| J9 | PC13 | GPIO only |
| J10 | PE6 | TIM9_CH2 |
| J11 | PE5 | TIM9_CH1 |
| J16 | PD0 | CAN1_RX |

Please refer to STM32F407 chip documentation for full list of alternative functions of GPIOs listed above.
