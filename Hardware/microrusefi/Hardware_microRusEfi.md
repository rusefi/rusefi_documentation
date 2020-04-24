microRusEfi is a highly integrated board for rusEfi ECU. microRusEfi is targeted at port injected
gasoline engines with one, two, three or four cylinders. microRusEfi has means to control electronic throttle body.

[Connector Pinout](Hardware_microRusEfi_wiring)

microRusEfi latest schematics is available at https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic.pdf

[Forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1538)

Complete set of board source files is available at https://github.com/rusefi/hw_microRusEfi

# Capabilities
* Primary VR or Hall input (configurable with few resistor changes)
* Secondary Hall input
* x4 analog thermistor (temperature) inputs
* x10 analog voltage inputs (0-5v)
* x4 high-Z injector outputs
* x2 high-current low side outputs for IAC/VVT/other solenoids
* Dedicated main relay control output 
* x4 low-current low side outputs for relays or warning lights 
* x4 5v logic-level ignition outputs
* x2 5v/12v configurable logic level outputs (requires resistor changes)
* Electronic throttle body (drive by wire)
* CAN connectivity on the plug
* USB connectivity on the plug 

[Connector Pinout](Hardware_microRusEfi_wiring)


![microRusEfi image](Hardware/microrusefi/Hardware_microRusEfi_0_1_pcb.jpg)

# FAQ

Q: How about 6 cylinders sequential on microRusEfi?

A: microRusEfi is primarily a 4 cylinder ECU. We are not comfortable recommending it for 6 cylinders sequential since six transistors would be different between them and who knows what would be the consequences.

Even for batched mode it's unclear if latest 0.4.8 hardware can sustain it in terms of ECU head dissipation.