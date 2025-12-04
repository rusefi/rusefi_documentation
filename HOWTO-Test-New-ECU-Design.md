# How to Test a New ECU Design

## Prerequisites

1. rusEFI forum account (registration question answer: microRusEFI)
2. Communication skills
3. Strong PC skills: please know how to take a screenshot
4. Digital multimeter
5. Soldering iron
6. Nice to have hot air soldering experience
7. Let's be honest - the moment things do not work as intended you would need an oscilloscope
8. Still interested?

## First Fabrication

If dealing with a brand-new, never before tested hardware design it's recommended to gradually add wires between the vehicle connector breakout board and the untested ECU.

## Prerequisites for Each Testing Session

1. Charge the battery
2. Disconnect the battery charger
3. Warm up the car on the stock ECU
4. Charge the laptop battery
5. Disconnect the laptop from the wall charger.

## Minimal ECU Power Test

1. Write down battery voltage measured at the battery, with charger and all ECUs physically disconnected.
2. Hook up Power GND
3. Hook up ECU power source
4. Test & Report, with USB physically disconnected: ECU status LED starts to blink if powered up, ECU status and all LEDs go off when powered off.
5. Test & Report, with USB physically disconnected: Attempt cranking. If equipped with on-board persistent storage, upload & link log to report.
6. Connect ECU to laptop via serial, report type of serial.
7. With laptop connected via serial, test & report, with USB physically disconnected: ECU status LED blinks if powered up, ECU status LED blinks when ignition powered off.
