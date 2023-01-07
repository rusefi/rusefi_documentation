# HOWOT Test New ECU Design

## Prerequisites

1. rusEFI forum account (registration question answer: microRusEFI)
1. communication skills
1. strong PC skills: please know how to make a screenshot
1. digital multimeter
1. soldering iron
1. nice to have hot air soldering experience
1. let's be honest - the moment things do not work as intended you would need an oscilloscope
1. still interested?

## HOWTO test brand new ECU design which was never fabricated before

If dealing with a brand new never before tested hardware design it's recommended to gradually add wires between vehicle connector breakout board and untested ECU.

## Prerequisites for each testing session

1. Charge battery
1. Disconnect battery charger
1. Warm up car on stock ECU
1. Charge laptop battery
1. Disconnect laptop from wall charger.

## Minimal ECU Power Test

1. Write down battery voltage measured at the battery, with charger and all ECUs physically disconnected.
1. Hook up Power GND
1. Hook up ECU power source
1. Test & Report, with USB physically disconnected: ECU status LED starts to blink if powered up, ECU status and all LED go off when powered off.
1. Test & Report, with USB physically disconnected: Attempt cranking. If equipped with on-board persistent storage, upload & link log to report.
1. Connect ECU to laptop via serial, report type of serial.
1. With laptop connected via serial, test & Report, with USB physically disconnected: ECU status LED blinks if powered up, ECU status LED blinks when ignition powered off.

## TODO a bunch of more content is needed here :)
