Micro-rusEFI is a highly integrated board version of the rusEFI ECU. The Micro-rusEFI ECU is targeted at port-injected
gasoline engines up to 4 cylinders. 

[Connector Pinout](Hardware_microRusEfi_wiring)

The latest schematics for the Micro-rusEFI ECU are available at https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic.pdf

[Forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1538)

A complete set of board source files is available at https://github.com/rusefi/hw_microRusEfi

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


![Micro-rusEFI image](Hardware/microrusefi/Hardware_microRusEfi_0_1_pcb.jpg)

# FAQ

Q: How about 6 cylinders sequential on microRusEfi?

A: The Micro-rusEFI ECU is primarily a 4 cylinder ECU. At this time the testing for safety, reliable control, and consistency have not been completed for running the Micro-rusEFI ECU on a 6 cylinder engine. This is something that we are working on and may be adding that capability at a future point. 
