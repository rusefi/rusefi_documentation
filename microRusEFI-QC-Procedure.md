# microRusEFI QC Procedure

We use special QC firmware

1) Download [MRE F4 Hardware QC Special Build 2020.11.27](https://github.com/rusefi/rusefi/releases/download/2020.11.27_release/rusefi_bundle_mre_f4_hardware_QC_special_build.zip) or better [2022.04.09_release QC](https://github.com/rusefi/rusefi/releases/download/2022.04.09_release/rusefi_bundle_mre_f4_hardware_QC_special_build.zip)
1) using Manual DFU mode flash abovementioned 2020 Black Friday rusefi_bundle_mre_f4_hardware_QC_special_build.zip
1) disconnect microRusEFI from USB, plug microRusEFI into special test fixture LED board, power special test fixture LED board with +12v
1) observe lack of smoke
1) observe expected LED flashing sequence
1) observe expected MRE red LED 'fatal' state (would be solid in case of failed analog AT test)

This procedure tests

1) 12v to 5v to 3v power dance
1) low and high side outputs
1) four AT inputs by asserting expected voltage
1) with manual button cam sensor could be tested - it's expected to see red CAM led respond to manual button
1) with manual button crank sensor could be tested if configured as Hall - it's expected to see red crank led respond to manual button

This procedure does NOT test

1) VR input

After the text please flash latest normal release [MRE F4 Firmware bundle](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_mre_f4.zip)

Attach an orange QC sticker to the part of the connector visible outside of the case.
