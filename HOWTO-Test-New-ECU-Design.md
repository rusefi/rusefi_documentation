## HOWTO test brand new ECU design which was never fabricated before

If dealing with a brand new never before tested hardware design it's recommended to gradually add wires one by one.

# Prerequisites for each testing session

1. Charge battery
1. Disconnect battery charger
1. Warm up car on stock ECU

# Power

1. Write down battery voltage measured at the battery, with charger and all ECUs physically disconnected.
1. Hook up Power GND
1. Hook up ECU power source
1. Test & Report, with USB physically disconnected: ECU status LED starts to blink if powered up, ECU status and all LED go off when powered off.
1. Test & Report, with USB physically disconnected: Attempt cranking. Upload & link log to report.
1. Charge laptop battery, disconnect laptop from wall charger.




1. Connect ECU to laptop via USB.
1. Test & Report, with USB physically disconnected: ECU status LED starts to blink if powered up, ECU status and all LED go off when powered off.



