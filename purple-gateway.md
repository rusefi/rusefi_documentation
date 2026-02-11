# Purple Gateway

* [⏩ Interactive Pinout ⏪](https://rusefi.com/docs/pinouts/nano-tcu/)
* Available at the [rusEFI store](https://www.shop.rusefi.com/shop/p/purple-gateway)
* The job of the gateway is to feed all needed data into the OEM TCU for it to function without the rest of the original electronics.
* It's not a standalone TCU: The OEM TCU controls the transmission solenoids.
* Looks similar to [nano ECU](nano), but that's a totally different thing 😀
* [GM 6L](GM-6L) beta version
* GM 8L beta version
* [8HP](8hp) coming soon!

[firmware snapshot](https://rusefi.com/fw-private/rusefi_bundle_nano-tcu-gateway_obfuscated_public.zip)

## 8hp

### Supported ECUs

At the moment we focus on BMW F-series support while working with the following ECUs:

* obviously rusEFI
* OEM BMW E9x and siblings
* OEM BMW E46 and siblings like E39
* generic legacy analog inputs only should be doable
* GM E38 should be doable but who puts BMW 8hp on LS engines?

### integration

8hp operation requires the following data

* engine RPM
* driver intent sensor: pedal position sensor in case of DBW or TPS for cable-driven throttle bodies
* either real torque from ECU or estimated torque based on MAP sensor
* brake pedal switch or brake pedal pressure data

## Connectors

Super-seal 26 pin

Harness side 3-1437290-8

## FAQ

### Q: where is the source code?

A: TCU gateway feature is not open source.

### Q: why separate device? why not build it into Huge or Proteus?

A: We do plan integration into firmware at a later point.
