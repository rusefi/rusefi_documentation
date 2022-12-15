# [rusEFI project](rusEFI-project)

## Base Engine

[Base Engine Settings](#base-engine-settings)

[Trigger](#trigger)

[Battery and Alternator Settings](#battery-and-alternator-settings)

[Main relay output](#main-relay-output)

[Starter relay output](#starter-relay-output)

[Fuel pump rail](#fuel-pump-rail)

[Fan Settings](#fan-settings)

[Tachometer output](#tachometer-output)

[Check Engine Settings](#check-engine-settings)

[Status LEDs](#status-leds)

### Base Engine Settings

![x](/Overview/TS_generated/dialog_Base_Engine_Settings.png)

Fuel strategy: This setting controls which fuel quantity control algorithm is used.
See also useTPSAdvanceTable
set algorithm X

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

Fuel strategy: This setting controls which fuel quantity control algorithm is used.
See also useTPSAdvanceTable
set algorithm X

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

Fuel strategy: This setting controls which fuel quantity control algorithm is used.
See also useTPSAdvanceTable
set algorithm X

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

### Trigger

![x](/Overview/TS_generated/dialog_Trigger.png)

Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2
See engineCycle
set operation_mode X

use only rising edge: VR sensors are only precise on rising front
enable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2
See engineCycle
set operation_mode X

use only rising edge: VR sensors are only precise on rising front
enable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2
See engineCycle
set operation_mode X

use only rising edge: VR sensors are only precise on rising front
enable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

### Battery and Alternator Settings

![x](/Overview/TS_generated/dialog_Battery_and_Alternator_Settings.png)

vBatt ADC input: This is the processor input pin that the battery voltage circuit is connected to, if you are unsure of what pin to use, check the schematic that corresponds to your PCB.

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Off Above TPS(%): Turns off alternator output above specified TPS, enabling this reduced parasitic drag on the engine at full load.

Detailed status in console: Print details into rusEfi console

vBatt ADC input: This is the processor input pin that the battery voltage circuit is connected to, if you are unsure of what pin to use, check the schematic that corresponds to your PCB.

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Off Above TPS(%): Turns off alternator output above specified TPS, enabling this reduced parasitic drag on the engine at full load.

Detailed status in console: Print details into rusEfi console

vBatt ADC input: This is the processor input pin that the battery voltage circuit is connected to, if you are unsure of what pin to use, check the schematic that corresponds to your PCB.

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Off Above TPS(%): Turns off alternator output above specified TPS, enabling this reduced parasitic drag on the engine at full load.

Detailed status in console: Print details into rusEfi console

### Main relay output

![x](/Overview/TS_generated/dialog_Main_relay_output.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

### Starter relay output

![x](/Overview/TS_generated/dialog_Starter_relay_output.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

### Fuel pump rail

![x](/Overview/TS_generated/dialog_Fuel_pump__rail.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

### Fan Settings

![x](/Overview/TS_generated/dialog_Fan_Settings.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

### Tachometer output

![x](/Overview/TS_generated/dialog_Tachometer_output.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Rise at trigger index: Trigger cycle index at which we start tach pulse (performance consideration)

### Check Engine Settings

![x](/Overview/TS_generated/dialog_Check_Engine_Settings.png)

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

### Status LEDs

![x](/Overview/TS_generated/dialog_Status_LEDs.png)

Trigger error LED: This pin is used for debugging - snap a logic analyzer on it and see if it's ever high

generated by class com.rusefi.MdGenerator on Fri May 01 15:24:28 EDT 2020
