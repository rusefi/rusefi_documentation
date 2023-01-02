## Tuner Studio

|Command|Number Of Parameters|Description|
|-|-|-|
|tsinfo|0 |Prints TunerStudio communication summary|
|set_ts_speed|1 |Sets Tuner Studio communication speed. For example, `set_ts_speed 115400`|
|reset_ts|0 |Resets TunerStudio debugging counters|

## CAN

|Command|Number Of Parameters|Description|
|-|-|-|
|caninfo|0 |Shows stats for CAN subsystem|
|enable can|0 |Enable CAN hardware. Also `disable can`|
|enable can_read|0 |Enable reading/sniffing CAN commands with echo. Also `disable can_read`|
|enable can_write|0 |Enable sending out gauge info via CAN according with selected CAN configuration. Also `disable can_write`|

## Knock Detection

|Command|Number Of Parameters|Description|
|-|-|-|
|enable HIP9011|0|Enables HIP9011 driver|
|enable tpic_advanced_mode|0|Enables TPIC advanced (digital) mode|
|enable knockdebug|0|Verbose mode|
|hipinfo|0|Shows HIP9011 driver state|
|set_gain|1|Sets HIP gain parameter, betweb 0.1 and 2. New value would be applied on the fly|
|set_band|1|Sets HIP target frequency, in kHz. New value would be applied on the fly|
|set_hip_prescalerandsdo|1|Sets HIP prescaler and SDO. 0 for 4mHz, 6 for 8mHz|

## General

|Command|Number Of Parameters|Description|
|-|-|-|
|adc|1 |
|adcDebug|1|
|appendToLog|3|
|chart|1|
|chartsize|1|Sets the size of engine sniffing buffer in ECU. Nothing would change on your screen until a new larger packet of engine sniffing would arrive from ECU.|
|get date|0 |Gets current real time clock|
|set date XXX|1|XXX is time in seconds sins Unix epoch - see [EpochConverter](http://www.epochconverter.com)|
|echo|1|Just prints out the parameter - this is useful for troubleshooting connectivity|
|fatal|0 |This command would cause the firmware to halt. I am not sure that you want to try this one :)|
|fadc|0|
|faststat|0 |
|fl|1 |'full logging', Turns-off constant dev console data output. fl 1 would turn it back on. |
|gfc|1|
|gpsinfo|0 |
|help|0|Prints the list of supported commands|
|hello|0|Prints the version of firmware|
|i2c|5|
|injector|5|
|ls|3|
|mountsd|0|
|performance info|0| [Development:Software:performance#Event_handling]|
|readconfig|0 |read config from flash/EEPROM|
|resetconfig|0|Resets configuration to default|
|set ignition_offset|1|
|set_analog_chart_mode|1 |
|set cranking_rpm|1|Sets the RPM level at which we consider the engine to be cranking - not running|
|rpm|1| For example, rpm 1200 sets the RPM for built-in position sensor simulator|
|set engine_type|1 |This will change the configuration from the default Dodge Neon configuration.<br>You should reboot the firmware after changing engine type.<br>Hit the reset button or just power off/on the microcontroller.|
|set global_trigger_offset_angle|1|Change the offset between trigger sync point and TDC#1|
|sfm|5|
|showconfig|0|Shows current configuration stored in the flash memory - that's where you can see your current fuel map etc.|
|status|0 |
|testmath|1|
|threadsinfo|0 |list of ChibiOS threads|
|umountsd|0 |Un-mount SD/MMC card|
|writeconfig|0|Write config to flash (you only need this if you have used one of the 'setXXX' commands) TODO: implement a feature of not actually writing changes into flash while engine is running since flash writes freeze the CPU. TunerStudio burn has this feature of delayed until engine is stopped burn already.|
|wm|5|
|get_int, get_short, get_float|1|prints the configuration value at given offset|
|set_int, set_short, set_float|2|changes configuration value at given offset, for example set_float 102 1.23|

## Logging

|Command|Number Of Parameters|Description|
|-|-|-|
|sdinfo|0 | Prints a report of SD/MMC usage|
|umountsd|0 | Un-mount SD card|
|enable sd/disable sd|0 |

## Trigger

Trigger is the camshaft or/and crankshaft position sensor(s)

`triggerinfo`
shows some info regarding trigger situation

set global_trigger_offset_angle XX

sets global trigger offset from synchronization point of trigger decoder to actual TDC #1

TODO? rename command? rename variable?

`enable/disable trigger_only_front`

In 'only front' mode, only signal rises are used for trigger decoding. For example, `enable trigger_only_front`

`enable/disable trigger_details`

Trigger details additional output helps with troubleshooting trigger synchronization issues.

`trigger_shape_info`

Prints trigger shape definition

## Sensors

|analoginfo|0|Shows ADC intut values|
|tempinfo|0| prints out some debug information on CLT and IAT sensors|
|tpsinfo|0| prints out some debug information on TPS sensor|
|mapinfo|0| prints out some debug information on MAP sensor|

## Board Control

set_injection_pin: 2 parameters: index, PIN

For example,
set_injection_pin 1 PB7

set injection_pin_mode: 1 parameter

For example,

`set injection_pin_mode 1`

Currently four modes are supported:

OM_DEFAULT = 0 (GND for logical OFF, VCC for logical ON)
and
OM_INVERTED = 1 (GND for logical ON, VCC for logical OFF)

OM_OPENDRAIN = 2
OM_OPENDRAIN_INVERTED = 3

set ignition_pin_mode: 1 parameter

set idle_pin_mode: 1 parameter

For example,

set idle_pin_mode 1

set fuel_pump_pin_mode: 1 parameters,

set malfunction_indicator_pin_mode: 1 parameters,

## Fuel Control

See also [Fuel Overview](Fuel-Overview)

set_whole_fuel_map: 1 parameter: global value for the whole fuel map, in ms

for example, `set_whole_fuel_map 11`

set_fuel_map: 3 parameters
For example `set_fuel_map 2200 4 15.66`
Set 15.66ms value for 2200 rpm @ engine load 4

set cranking_fuel: 1 parameters, for example

`set cranking_fuel 5`

set injection_offset: 1 parameter, for example

`set injection_offset 80`

Sets global fuel injection phase to 80 degrees after TDC.

## Alternator Control

`altinfo`
Prints current alternator state

`set alt_p X`

for example, `set alt_p 10`

`set alt_offset X`

Set's alternator duty cycle offset. For example, `set alt_offset 10`

`set alt_t X`

for example, `set alt_t 100` (100ms PID time)

`set_alternator_pin PIN`

for example, `set_alternator_pin PE10`

`enable/disable altdebug`

for example, `enable altdebug`

`enable/disable altcontrol`

for example, `disable altcontrol`

`set targetvbatt X`

## Acceleration Enrichment

set engine_load_accel_len X
for example, `set engine_load_accel_len 6` Look back at MAP for period of last X injections.

set engine_load_accel_multiplier X
for example, `set engine_load_accel_multiplier 2.0` This coefficient controls how much extra fuel we inject during acceleration due to MAP change

set engine_load_accel_threshold X
for example, `set engine_load_accel_threshold 5.0` Ignore change below X kPa

set tps_accel_len X
for example, `set tps_accel_len 6` Look back at TPS for period of last X injections.

set tps_accel_multiplier X
for example, `set tps_accel_multiplier 2.0` This coefficient controls how much extra fuel we inject during acceleration due to TPS change

set tps_accel_threshold X
for example, `set tps_accel_threshold 10` Ignore change below X % tps

set suckedOffCoef 0.4
set addedToWallCoef 0.2

See [Wall Wetting](X-tau-Wall-Wetting)

## Timing Control

set global_trigger_offset_angle: 1 parameter: global TDC offset from trigger synchronization point

set_whole_timing_map: 1 parameter: global timing for the whole timing map while engine is running

set_timing_map: 3 parameters. timing map value for given RPM and engine load
For example `et_timing_map 2200 4 60`
sets timing to 60 degrees advance for rpm 2200 and engine load 4

set cranking_timing_angle: 1 parameter
sets timing advance while cranking

set fixed_mode_timing: 1 parameters,

set timing_mode: 1 parameters,

## Idle Control

See also [Idle Control](Idle-Control)

set idle_rpm PRM

Set's target idle RPM

`set idle_position X`

set's idle duty cycle, value between 0 and 100, for example `set idle_position 50`

enable/disable stepperidle

for example, `enable stepperidle`

**blipidle X Y**
overrides idle position to X for Y duration of time

for example `blipidle 20 2000` would set idle position to 80 for 2000 ms / 2 seconds

## I/O testing

|Command|Number Of Parameters|Description|
|-|-|-|
|fuelpumpbench|0|Turns fuel pump on for three seconds after a one second delay|
|fuelbench2|5|for example, fuelbench2 10000 1 2 1200 3<br> This command would send out a series of 3 on/off squirts out to injector #1, on time: 2ms, off time: 1200ms, after a 10000ms (10 seconds) delay|
|fuelbench|3|for example, fuelbench 5 2000 4 <br> This command would send out a series of 3 on/off squirts out to injector #1, on time: 5ms, off time: 2000ms|
|fuelbench2|5|for example, fuelbench2 1000 2 9 200 10<br> This command would send out a series of 10 on/off squirts out to injector #2, on time: 9ms, off time: 200ms, after a 1000ms delay|
|sparkbench|3|for example, sparkbench 5 200 3 <br> This command would send out a series of 3 on/off squirts out to coil #1, on time: 5ms, off time: 200ms|
|sparkbench2|5|for example, sparkbench2 1000 2 4 200 10<br> This command would send out a series of 10 on/off squirts out to coil #2, on time: 4ms, off time: 200ms, after a 1000ms delay|
|fanbench|0|Turns radiator fan on for three seconds after a one second delay|
|milbench|0|Turns MIL on for three seconds after a one second delay|

## Engineering support

|Command|Number Of Parameters|Description|
|-|-|-|
|enable self_stimulation|0|Routes simulated trigger signal directly into trigger processing logic|
