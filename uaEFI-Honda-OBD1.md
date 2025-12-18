# Ultra Affordable EFI for Honda OBD1

🔴 Community support ONLY 🔴 [Support Statement](https://github.com/rusefi/rusefi/wiki/Support) 🔴 [Facebook group](https://www.facebook.com/groups/rusEfi) 🔴 [Discord](https://github.com/rusefi/rusefi/wiki/Discord) 🔴

Available at the [💲rusEFI store💲](https://www.shop.rusefi.com/shop/p/rusefi-for-obd1)

## Firmware

The nicer single board uses [OBD1 Beta Snapshot](https://rusefi.com/build_server/rusefi_bundle_uaefi-obd1.zip).

The sandwich dual PCB adapter board uses [uaEFI](uaEFI) firmware.

## Technical Details

See [uaEFI](uaEFI)

[⏩ Interactive Pinout ⏪](https://rusefi.com/docs/pinouts/uaefi/honda-obd1/)

[Adapter Schematics rev a](Hardware-files/Hellen/uaefi-Honda-OBD1-adapter-a-schematic.pdf)

[Single board Schematics rev d](Hardware-files/Hellen/uaefi-Honda-OBD1-d-schematic.pdf)

## Features

* Reads the OEM distributor just fine (single tooth and 24 tooth)
* On-board LSU 4.9 controller exposed on extra ECU plug
* Flex fuel sensor input exposed on extra ECU plug
* Option to use coil on plugs; see J4
* Option to convert to hall position sensors; see J5
* Option to upgrade to electronic throttle body; see J1+J2
* Designed to fit the OBD2 enclosure - these are cheaper, also we have auxiliary section on the header so we need wider opening

## Issue Tracker

Open-source firmware; see https://github.com/rusefi/fw-uaefi-Honda-OBD1/issues

## Wiring

* Aux header connector 12 pin 174913-6 housing / 90980-11129 terminal
* Harness side Micro Fit 2x3 0430250600
* Harness side Micro Fit 2x4 0430250808
* Harness side Micro Fit terminal 0430300001
* PCB side Micro Fit 2x3 0430450612

See [Vault Of Honda OEM](Vault-Of-Honda-OEM#obd-1)

## OEM Cases

The 37820-p2e OBD2 case looks very similar to P28 OBD1 case.

## FAQ

*__Q:__ Dow do I set the trigger?*  
__A:__ You *HAVE* to trust the "popular vehicles>Honda OBD" button. Confirm your trigger offset with timing light, keep everything else!

![image](Images/TS/TunerStudio_popular_vehicles.png)

![image](Images/TS/TunerStudio_triggers_2.png)
