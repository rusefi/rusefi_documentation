*For sale at https://rusefi.com/microrusefi/*


microRusEFI is a highly integrated board version of the rusEFI ECU. The microRusEFI ECU is targeted at port-injected
gasoline engines up to 4 cylinders. 

[Connector Pinout](Hardware_microRusEfi_wiring)

The latest schematics for the microRusEFI ECU are available at https://github.com/rusefi/hw_microRusEfi/blob/master/microRusEfi_Schematic.pdf

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
* x4 5v logic level ignition outputs
* x2 5v/12v configurable logic level outputs (requires resistor changes)
* Electronic throttle body (drive by wire)
* CAN connectivity on the plug
* USB connectivity on the plug 

[Connector Pinout](Hardware_microRusEfi_wiring)


![microRusEFI image](https://user-images.githubusercontent.com/5051341/80747087-806e9d00-8ae8-11ea-983e-330dfc6e3015.jpg)
![microRusEFI image](https://user-images.githubusercontent.com/5051341/80747096-849aba80-8ae8-11ea-862c-d124ef75f06a.jpg)

# FAQ

Q: How about 6 cylinders sequential on microRusEFI?

A: The microRusEFI ECU is primarily a 4 cylinder ECU. At this time the testing for safety, reliable control, and consistency have not been completed for running the microRusEFI ECU on a 6 cylinder engine. This is something that we are working on and could be added at a future point. 

[See also Kit Instructions](Hardware_microRusEfi_kit_instructions)