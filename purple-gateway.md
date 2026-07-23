# Purple Gateway

The rusEFI Purple Gateway is a CANbus module that provides necessary engine data to an OEM transmission control unit, allowing it to function independently of the original engine electronics. At the moment our focus is Dodge and BMW 8HP, also GM 6-8-10 speed.

* [⏩ Interactive Pinout ⏪](https://rusefi.com/docs/pinouts/purple-gateway)
* Available at the [rusEFI store](https://www.shop.rusefi.com/shop/p/purple-gateway)
* It's not a standalone TCU: The OEM TCU controls the transmission solenoids.
* build-in ZF flasher for backup or for when you want to replace firmware in your TCU from one brand to another
* [8HP BMW/Dodge](8hp) coming soon!
* [GM 6L](GM-6L) beta version
* GM 8L beta version
* GM 10L work is happening as well
* Looks similar to [nano ECU](nano), but that's a totally different thing 😀

[💾Download Software💾](https://rusefi.com/installer/Purple_Updater_windows-x64.exe)

## 8hp

### Supported ECUs

At the moment we focus on BMW F-series support while working with the following ECUs:

* ✅ OEM BMW E9x and siblings
* ✅ OEM BMW E46 and siblings like E39
* obviously rusEFI coming soon!
* generic legacy analog inputs only should be doable
* GM E38 should be doable but who puts BMW 8hp on LS engines?

### integration

8hp operation requires the following data

* engine RPM
* driver intent sensor: pedal position sensor in case of DBW or TPS for cable-driven throttle bodies
* either real torque from ECU or estimated torque based on MAP sensor
* brake pedal switch or brake pedal pressure data

## Flasher

<img width="782" height="574" alt="image" src="https://github.com/user-attachments/assets/c57e727f-b030-4e09-923d-f18d26923a41" />

## BMW ISN reset

See [Bmw-8hp](Bmw-8hp)

## Connectors

Super-seal 26 pin

Harness side 3-1437290-8

## FAQ

### Q: Is it ready?

A: not ready as on June 2026. BMW is way ahead of dodge.

### Q: hello i am looking at setting up an 8hp gearbox with an engine, will i be able to run it with your kit?

A: for best results we need to coordinate torque management with the ECU which we can only do with one of the ECUs we support. What ECU do you have running the engine?

### Q: Can this TCU control Ford 10 speed?

A: that's not a TCU, see [TCU-status](TCU-status) for suggested terminology.

### Q: where is the source code?

A: TCU gateway feature is not open source.

### Q: why separate device? why not build it into Huge or Proteus?

A: We do plan integration into firmware at a later point. For now it's two devices since one is open source and the other is not. Also remember that BMW needs two CAN buses and we need to avoid CAN ID conflicts.

### Q: Documentation is bad

A: yes, documentation is bad. TCU gateway is maybe 3rd or 4th priority for us right now. Feel free to invest dollars for this to move forward faster!

## Changelog

rev D: CANbus wake-up

rev C: pin 21D is now +12 high side

rev B: DC-DC power supply

rev A: it works!
