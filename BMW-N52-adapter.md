# BMW N52 146-pin Superseal adapter

This passive adapter routes the BMW N52 146-terminal DME interface to Superseal 60 + 34 + 26 connectors. The reference application is the **2011 BMW 328i Sedan (E90), 3.0L N52K**, in the MSV80 documentation set. Other N52 models and DME variants require comparison with their own wiring; this is not a blanket compatibility list for all N52 cars.

[Adapter schematics (PDF)](Hardware-files/adapters/BMW-N52-adapter/BMW-N52-146-superseal.pdf) | [Vehicle pinout](https://rusefi.com/docs/pinouts/BMW-N52-146/) | [Adapter pinout](https://rusefi.com/docs/pinouts/BMW-N52-adapter/)

[Reference wiring](OEM-Docs/Bmw/2011%20BMW%20328i%20n52.pdf) | [Reference terminal tables](OEM-Docs/Bmw/2011-BMW-328i-E90-N52K-ECU-pinout.md) | [ECU cable guides](BMW-N52.md)

## Numbering

Vehicle `1-7` means X60001 terminal 7, marked X01 on the board; the same rule applies to X02-X07. Superseal `7A` means terminal 7 of the 34-position A section of the 60-way connector. B is its 26-position section; C is the separate 34-way connector and D the separate 26-way connector. Use the connector-face images in the pinouts for orientation.

The adapter routes 119 vehicle terminals to 119 Superseal contacts. Superseal **12C is unconnected**. The other 27 vehicle terminals do not reach Superseal; a source-defined exception is described below.

## Jumper configuration

These are optional solder bridges. With a bridge open, the sensor line has its own Superseal contact. Closing it joins that line to the common PPS 1 sensor ground **11A** or sensor supply **19A**. Inspect the actual assembly and choose the bridges for the connected ECU and harness; do not short independent driven supplies together.

| Jumper | Vehicle terminal | Superseal contact | Connection when closed |
|---|---|---|---|
| JP1 | 1-10 | 8D | GNDA Analog/Sensor Ground (PPS 2, pedal terminal 1); joined to 11A (PPS 1 sensor ground) |
| JP2 | 1-11 | 14D | 5V Sensor Supply (PPS 2, pedal terminal 5); joined to 19A (PPS 1 5 V supply) |
| JP3 | 5-5 | 21D | Neutral sensor terminal 4 (ground assignment unconfirmed; JP3); joined to 11A (PPS 1 sensor ground) |
| JP4 | 5-14 | 18D | 5V Sensor Supply (TPS, throttle actuator terminal 2); joined to 19A (PPS 1 5 V supply) |
| JP5 | 5-27 | 20D | GNDA Analog/Sensor Ground (IAT, separate sensor or air mass meter terminal 4); joined to 11A (PPS 1 sensor ground) |
| JP6 | 7-20 | 17D | GNDA Analog/Sensor Ground (eccentric shaft sensor terminal 5); joined to 11A (PPS 1 sensor ground) |
| JP7 | 7-21 | 24D | Eccentric shaft sensor supply (terminal 6; JP7 can select 5V); joined to 19A (PPS 1 5 V supply) |
| JP9 | 5-30 | 15D | GNDA Analog/Sensor Ground (crankshaft position sensor); joined to 11A (PPS 1 sensor ground) |
| JP10 | 5-31 | 22D | 5V Sensor Supply (MAP); joined to 19A (PPS 1 5 V supply) |
| JP11 | 5-32 | 16D | GNDA Analog/Sensor Ground (MAP); joined to 11A (PPS 1 sensor ground) |
| JP12 | 5-38 | 25D | GNDA Analog/Sensor Ground (TPS, throttle actuator terminal 6); joined to 11A (PPS 1 sensor ground) |
| JP13 | 5-41 | 19D | GNDA Analog/Sensor Ground (knock sensor 1, cylinders 1-3); joined to 11A (PPS 1 sensor ground) |
| JP14 | 5-42 | 12D | GNDA Analog/Sensor Ground (knock sensor 2, cylinders 4-6); joined to 11A (PPS 1 sensor ground) |
| JP15 | 7-17 | 23D | GNDA Analog/Sensor Ground (ECT CLT coolant sensor); joined to 11A (PPS 1 sensor ground) |
| JP16 | 7-24 | 26D | GNDA Analog/Sensor Ground (intake camshaft position sensor); joined to 11A (PPS 1 sensor ground) |
| JP17 | 7-25 | 13D | GNDA Analog/Sensor Ground (exhaust camshaft position sensor); joined to 11A (PPS 1 sensor ground) |

JP3 retains the schematic's uncertain neutral-sensor ground assignment: leave it open until the actual circuit is confirmed. JP7 connects the eccentric-shaft sensor supply to 5 V only when that supply is appropriate. There is no JP8 in this schematic.

## Connection notes

- **Ignition:** the reference drawing shows ignition-coil primary windings driven by the DME. The adapter contains no ignition power stages. Stock coils need suitable ECU power outputs or external ignition drivers; do not connect them directly to logic-level smart-coil outputs. The six X60006 signals are ignition, despite the board's `INJ ... SIG 1` net/marking text. X60007 carries the actual injector outputs. See the [Superseal IGBT pinout](https://rusefi.com/docs/pinouts/superseal-igbt/) when planning an external driver harness.
- **PPS numbering:** the existing adapter and cable convention is retained: PPS 1 = vehicle 1-20 / Superseal 16C / pedal terminal 4; PPS 2 = vehicle 1-7 / Superseal 8C / pedal terminal 6. The supply and ground labels follow those channels. The reference drawing itself does not number the two pedal channels.
- **Anti-theft signal:** the 2011 drawing wires X60002-21, which this adapter leaves unconnected. Superseal 11C instead reaches X60002-22, labelled `ANTI-THEFT SYSTEM` on the board but without a wire in that reference. If this signal is needed, verify the actual harness and provide the appropriate rerouting; this documentation does not change the board.
- **Wideband oxygen sensors:** Vm is a dedicated controller reference, not chassis or general sensor ground. Pump-current, Nernst-cell and calibration lines require a compatible wideband controller. Heater-negative lines require its heater driver. The post-cat heater-negative terminals are also control outputs, not analog sensor inputs.
- **Equipment variants:** the reference shows alternatives for the air mass meter, separate IAT sensor, neutral sensor and brake vacuum sensor. X60002-15 is a brake-vacuum signal in one variant and crankshaft-breather-heater control in another. Confirm the fitted equipment before choosing ECU input/output circuitry.
- **Actuators and networks:** electronic throttle and Valvetronic motors require suitable bidirectional power drivers. VANOS, relay and thermostat circuits require load drivers. The passive adapter provides neither these drivers nor BSD/CAN protocol support; the reference fuel-pump module is controlled over CAN.

## Vehicle-to-Superseal connections

Descriptions below use the same terminology as the interactive pinouts. Blank source functions have not been invented; interface types are omitted where the available reference does not settle them.

### X60001 - Vehicle harness

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 1-1 | 21C | CAN bus Low |
| 1-2 | 31C | Start request input |
| 1-3 | 32C | BSD bus - alternator |
| 1-4 | 33C | Brake light switch input (X60001-4) |
| 1-5 | 3C | Exhaust flap control |
| 1-6 | 4C | GNDA Analog/Sensor Ground (radiator outlet temperature sensor) |
| 1-7 | 8C | Universal analog input. Suggested PPS input 2 (pedal terminal 6) |
| 1-8 | 7C | Electric cooling fan control signal |
| 1-9 | 14C | Cooling fan activation |
| 1-10 | 8D | GNDA Analog/Sensor Ground (PPS 2, pedal terminal 1) |
| 1-11 | 14D | 5V Sensor Supply (PPS 2, pedal terminal 5) |
| 1-13 | 13C | Secondary air pump relay control |
| 1-14 | 30C | CAN bus High |
| 1-15 | 23C | Vehicle immobilizer signal |
| 1-16 | 24C | Brake light switch input (X60001-16) |
| 1-17 | 34C | Rear wheel speed input |
| 1-18 | 9C | Clutch switch input |
| 1-19 | 17C | Radiator outlet temperature sensor input |
| 1-20 | 16C | Universal analog input. Suggested PPS input 1 (pedal terminal 4) |
| 1-21 | 15C | Tachometer output (TD signal) |
| 1-22 | 6C | Ignition Switch / Battery Voltage Analog Input (terminal 15) |
| 1-23 | 11A | GNDA Analog/Sensor Ground (PPS 1, pedal terminal 2) |
| 1-24 | 19A | 5V Sensor Supply (PPS 1, pedal terminal 3) |
| 1-26 | 5C | E-box fan control |

### X60002 - Oxygen sensors and auxiliaries

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 2-1 | 20C | Wake-up supply |
| 2-2 | 28C | Brake vacuum sensor return (verify equipment variant) |
| 2-5 | 5D | WBO2 calibration resistor (sensor terminal 5; dedicated wideband controller) |
| 2-6 | 11D | WBO1 pump current Ip (sensor terminal 1; dedicated wideband controller) |
| 2-7 | 10D | WBO2 pump current Ip (sensor terminal 1; dedicated wideband controller) |
| 2-8 | 3D | WBO1 Nernst voltage Vs/Un (sensor terminal 6; dedicated wideband controller) |
| 2-9 | 9D | WBO2 Nernst voltage Vs/Un (sensor terminal 6; dedicated wideband controller) |
| 2-10 | 2D | WBO1 virtual ground Vm (sensor terminal 2; do not connect to chassis ground) |
| 2-11 | 1D | WBO2 virtual ground Vm (sensor terminal 2; do not connect to chassis ground) |
| 2-12 | 6D | WBO1 heater negative (sensor terminal 3; wideband controller heater output) |
| 2-13 | 7D | WBO2 heater negative (sensor terminal 3; wideband controller heater output) |
| 2-14 | 29C | Brake vacuum sensor supply (verify voltage) |
| 2-15 | 22C | Brake vacuum sensor signal or crankshaft breather heater control (equipment dependent) |
| 2-16 | 25C | Fuel tank leak diagnostic module control (terminal 4) |
| 2-17 | 19C | Fuel tank leak diagnostic module control (terminal 1) |
| 2-18 | 4D | WBO1 calibration resistor (sensor terminal 5; dedicated wideband controller) |
| 2-19 | 18C | Post-cat oxygen sensor 2 signal (sensor terminal 4) |
| 2-20 | 10C | Post-cat oxygen sensor 1 signal (sensor terminal 4) |
| 2-22 | 11C | No wire shown in 2011 reference; adapter routes this terminal as ANTI-THEFT SYSTEM |
| 2-23 | 2C | GNDA Analog/Sensor Ground (post-cat oxygen sensor 1, terminal 3) |
| 2-24 | 1C | GNDA Analog/Sensor Ground (post-cat oxygen sensor 2, terminal 3) |
| 2-25 | 26C | Post-cat oxygen sensor 2 heater negative (sensor terminal 2) |
| 2-26 | 27C | Post-cat oxygen sensor 1 heater negative (sensor terminal 2) |

### X60003 - Power and grounds

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 3-1 | 1A | 12V Battery Supply (constant, terminal 30) |
| 3-2 | 2A | 12V supply from main relay (switched, terminal 87) |
| 3-3 | 10A | Power/Chassis GND ground (X60003-3) |
| 3-4 | 18A | Power/Chassis GND ground (X60003-4) |
| 3-5 | 26A | Power/Chassis GND ground (X60003-5) |
| 3-6 | 27A | Power/Chassis GND ground (X60003-6) |

### X60004 - Valvetronic

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 4-1 | 19B | 12V supply from main relay (Valvetronic, X60004-1) |
| 4-2 | 13B | 12V supply from main relay (Valvetronic, X60004-2) |
| 4-3 | 12B | Valvetronic motor terminal 2 (X60004-3) |
| 4-4 | 11B | Valvetronic motor terminal 1 (X60004-4) |
| 4-5 | 10B | Valvetronic motor terminal 2 (X60004-5) |
| 4-6 | 9B | Valvetronic motor terminal 1 (X60004-6) |

### X60005 - Engine harness

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 5-4 | 22A | Hot-film air mass meter signal or neutral sensor terminal 3 (equipment dependent) |
| 5-5 | 21D | Neutral sensor terminal 4 (ground assignment unconfirmed; JP3) |
| 5-6 | 18B | Neutral sensor terminal 2 (interface unspecified) |
| 5-12 | 20A | Engine breather heating relay control |
| 5-13 | 29A | Main relay control output (DME relay) |
| 5-14 | 18D | 5V Sensor Supply (TPS, throttle actuator terminal 2) |
| 5-15 | 25A | Electronic throttle motor terminal 3 |
| 5-16 | 9A | Electronic throttle motor terminal 5 |
| 5-18 | 17A | DISA actuator 2 control (actuator terminal 1) |
| 5-19 | 7A | Knock sensor 1 signal (cylinders 1-3) |
| 5-20 | 15A | Knock sensor 2 signal (cylinders 4-6) |
| 5-23 | 24A | Fuel tank vent valve control |
| 5-25 | 23A | Mass air flow sensor terminal 2 (equipment dependent) |
| 5-26 | 21A | Mass air flow sensor terminal 1 (equipment dependent) |
| 5-27 | 20D | GNDA Analog/Sensor Ground (IAT, separate sensor or air mass meter terminal 4) |
| 5-28 | 17B | IAT Sensor Input (separate sensor or air mass meter terminal 5) |
| 5-29 | 3B | Crankshaft position sensor input |
| 5-30 | 15D | GNDA Analog/Sensor Ground (crankshaft position sensor) |
| 5-31 | 22D | 5V Sensor Supply (MAP) |
| 5-32 | 16D | GNDA Analog/Sensor Ground (MAP) |
| 5-33 | 28A | MAP sensor input |
| 5-35 | 30A | BSD bus - oil condition sensor / charging system |
| 5-36 | 32A | Universal analog input. Suggested TPS 1 sensor input (throttle actuator terminal 4) |
| 5-37 | 34A | Universal analog input. Suggested TPS 2 sensor input (throttle actuator terminal 1) |
| 5-38 | 25D | GNDA Analog/Sensor Ground (TPS, throttle actuator terminal 6) |
| 5-40 | 8A | DISA actuator 1 control (actuator terminal 1) |
| 5-41 | 19D | GNDA Analog/Sensor Ground (knock sensor 1, cylinders 1-3) |
| 5-42 | 12D | GNDA Analog/Sensor Ground (knock sensor 2, cylinders 4-6) |

### X60006 - Ignition

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 6-1 | 23B | Ignition coil 1 primary control (power ignition driver required) |
| 6-2 | 22B | Ignition coil 2 primary control (power ignition driver required) |
| 6-3 | 21B | Ignition coil 3 primary control (power ignition driver required) |
| 6-4 | 20B | Ignition coil 4 primary control (power ignition driver required) |
| 6-5 | 7B | Ignition coil 5 primary control (power ignition driver required) |
| 6-6 | 6B | Ignition coil 6 primary control (power ignition driver required) |

### X60007 - Injection and engine sensors

| Vehicle terminal | Superseal | Function |
|---|---|---|
| 7-1 | 26B | Injector 1 |
| 7-2 | 25B | Injector 2 |
| 7-3 | 24B | Injector 3 |
| 7-4 | 16B | ECT CLT Coolant Sensor Input |
| 7-5 | 8B | Intake VANOS solenoid control |
| 7-6 | 15B | Eccentric shaft sensor terminal 8 |
| 7-7 | 31A | Eccentric shaft sensor terminal 3 |
| 7-8 | 33A | Eccentric shaft sensor terminal 7 |
| 7-9 | 16A | Eccentric shaft sensor terminal 9 |
| 7-10 | 14A | Eccentric shaft sensor shield (terminal 4) |
| 7-11 | 3A | Intake camshaft position sensor input |
| 7-12 | 4A | Exhaust camshaft position sensor input |
| 7-13 | 12A | Oil pressure switch input |
| 7-14 | 4B | Injector 4 |
| 7-15 | 2B | Injector 5 |
| 7-16 | 5B | Injector 6 |
| 7-17 | 23D | GNDA Analog/Sensor Ground (ECT CLT coolant sensor) |
| 7-18 | 1B | Exhaust VANOS solenoid control |
| 7-19 | 14B | Map-controlled thermostat heater control |
| 7-20 | 17D | GNDA Analog/Sensor Ground (eccentric shaft sensor terminal 5) |
| 7-21 | 24D | Eccentric shaft sensor supply (terminal 6; JP7 can select 5V) |
| 7-22 | 6A | Eccentric shaft sensor terminal 1 |
| 7-23 | 5A | Valvetronic relay control |
| 7-24 | 26D | GNDA Analog/Sensor Ground (intake camshaft position sensor) |
| 7-25 | 13D | GNDA Analog/Sensor Ground (exhaust camshaft position sensor) |
| 7-26 | 13A | BSD bus - electric coolant pump |

### Reference-defined vehicle terminal without a Superseal connection

| Vehicle terminal | Reference function | Adapter state |
|---|---|---|
| 2-21 | Anti-theft system signal | Unconnected; see the 2-21/2-22 note above |

The other unconnected vehicle terminals have no wired function in this reference. They are omitted from the functional tables.
