# Ultra Affordable EFI for Honda OBD1

## Community Support

🔴Community support ONLY 🔴 [Support starts here](https://github.com/rusefi/rusefi/wiki/Support)🔴

## firmware

Adapter board use [uaEFI](uaEFI) firmware

Single board https://rusefi.com/build_server/rusefi_bundle_uaefi-obd1.zip

## Technical Details

See https://github.com/rusefi/rusefi/wiki/uaEFI

[interactive pinout](https://rusefi.com/docs/pinouts/uaefi/honda-obd1/)

[Adapter Schematics rev a](Hardware/Hellen/uaefi-Honda-OBD1-adapter-a-schematic.pdf)

## Features

* on-board LSU 4.9 controller exposed on extra ECU plug
* flex fuel sensor input exposed on extra ECU plug
* option to use coil on plugs see J4
* option to convert to hall position sensors see J5
* option to upgrade to electronic throttle body J1+J2
* designed to fit OBD2 enclosure - these are cheaper, also we have auxiliary section on the header so we need wider opening

## Micro Fit

* harness side 2x3 0430250600
* harness side 2x4 0430250808
* harness side terminal 0430300001
* PCB side 2x3 0430450612

See https://github.com/rusefi/rusefi/wiki/Vault-Of-Honda-OEM#obd-1

## OEM Cases

37820-p2e OBD2 case looks very similar to P28 OBD1 case

## FAQ

Q: how to set trigger?

A: you *HAVE* to trust "popular vehicles>Honda OBD" button. Confirm your trigger offset with timing light, keep everything else!

![image](https://github.com/user-attachments/assets/1e97a919-9e09-486b-9ec5-e5bb2ed0b009)

![image](https://github.com/user-attachments/assets/13fc27fd-b734-43ac-8f1f-c8b0c7238685)



