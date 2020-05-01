# Base Engine
![x](overview/TS_generated/top_level_Base_Engine.png)

# Fuel
![x](overview/TS_generated/top_level_Fuel.png)

# Ignition
![x](overview/TS_generated/top_level_Ignition.png)

# Cranking
![x](overview/TS_generated/top_level_Cranking.png)

# Idle
![x](overview/TS_generated/top_level_Idle.png)

# Advanced
![x](overview/TS_generated/top_level_Advanced.png)

# Sensors
![x](overview/TS_generated/top_level_Sensors.png)

# Controller
![x](overview/TS_generated/top_level_Controller.png)

# Base Engine
![x](overview/TS_generated/dialog_Base_Engine_Settings.png)
Fuel strategy: This setting controls which fuel quantity control algorithm is used.\nSee also useTPSAdvanceTable\nset algorithm X

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

Fuel strategy: This setting controls which fuel quantity control algorithm is used.\nSee also useTPSAdvanceTable\nset algorithm X

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

Fuel strategy: This setting controls which fuel quantity control algorithm is used.\nSee also useTPSAdvanceTable\nset algorithm X

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

![x](overview/TS_generated/dialog_Trigger.png)
Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2\nSee engineCycle\nset operation_mode X

use only rising edge: VR sensors are only precise on rising front\nenable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2\nSee engineCycle\nset operation_mode X

use only rising edge: VR sensors are only precise on rising front\nenable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

Operation mode / speed: 'Some triggers could be mounted differently. Most well-known triggers imply specific sensor setup. 4 stroke with symmetrical crank' is a pretty special case for example on Miata NB2\nSee engineCycle\nset operation_mode X

use only rising edge: VR sensors are only precise on rising front\nenable trigger_only_front

VVT use rise front: Use rise or fall signal front

print verbose sync details to console: enable trigger_details

Do not print messages in case of sync error: Sometimes we have a performance issue while printing error

![x](overview/TS_generated/dialog_Battery_and_Alternator_Settings.png)
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

![x](overview/TS_generated/dialog_Main_relay_output.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

![x](overview/TS_generated/dialog_Starter_relay_output.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

![x](overview/TS_generated/dialog_Fuel_pump__rail.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Absolute Fuel Pressure: If your fuel regulator does not have vacuum line

![x](overview/TS_generated/dialog_Fan_Settings.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

![x](overview/TS_generated/dialog_Tachometer_output.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

Rise at trigger index: Trigger cycle index at which we start tach pulse (performance consideration)

![x](overview/TS_generated/dialog_Check_Engine_Settings.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

![x](overview/TS_generated/dialog_Status_LEDs.png)
Trigger error LED: This pin is used for debugging - snap a logic analyzer on it and see if it's ever high

# Fuel
![x](overview/TS_generated/dialog_Injection_settings.png)
Two wire batch emulation: This is needed if your coils are individually wired and you wish to use batch injection.\nenable two_wire_batch_injection

Two wire batch emulation: This is needed if your coils are individually wired and you wish to use batch injection.\nenable two_wire_batch_injection

Two wire batch emulation: This is needed if your coils are individually wired and you wish to use batch injection.\nenable two_wire_batch_injection

![x](overview/TS_generated/dialog_Injector_dead_time.png)
![x](overview/TS_generated/dialog_Fuel_short-term_closed-loop_correction.png)
![x](overview/TS_generated/dialog_Coasting_Fuel_Cutoff_Settings.png)
Enable Coasting Fuel Cutoff: This setting disables fuel injection while the engine is in overrun, this is useful as a fuel saving measure and to prevent back firing.

TPS Deactivation Threshold(%): percent between 0 and 100 below which the fuel cut is deactivated, this helps low speed drivability.

![x](overview/TS_generated/dialog_Fuel_Table.png)
![x](overview/TS_generated/dialog_Injection_Phase.png)
![x](overview/TS_generated/dialog_Warmup_fuel_manual_Multiplier.png)
![x](overview/TS_generated/dialog_Intake_air_temperature_fuel_Multiplier.png)
![x](overview/TS_generated/dialog_tCharge_Settings.png)
![x](overview/TS_generated/dialog_Accel_Decel_Enrichment.png)
![x](overview/TS_generated/dialog_TPS_TPS_Acceleration_Extra_Fuelms.png)
![x](overview/TS_generated/dialog_Engine_Load_Acceleration_Enrichment_Taper.png)
# Ignition
![x](overview/TS_generated/dialog_Ignition_settings.png)
Two wire wasted: This is needed if your coils are individually wired (COP) and you wish to use batch ignition (wasted spark).

Timing Mode: Dynamic uses the timing map to decide the ignition timing, Static timing fixes the timing to the value set below (only use for checking static timing).

Use TPS-based Advance Table: This flag allows to use TPS for ignition lookup while in Speed Density Fuel Mode

Dizzy out Pin: This implementation makes a pulse every time one of the coils is charged, using coil dwell for pulse width. See also tachOutputPin

![x](overview/TS_generated/dialog_Dwell.png)
![x](overview/TS_generated/dialog_Ignition_Cylinder_Extra_Timing.png)
![x](overview/TS_generated/dialog_Ignition_Table.png)
![x](overview/TS_generated/dialog_Warmup_timing_correction.png)
![x](overview/TS_generated/dialog_Ignition_Intake_Air_Temp_correction.png)
# Cranking
![x](overview/TS_generated/dialog_Cranking_Settings.png)
Enable cylinder cleanup: When enabled if TPS is held above 95% no fuel is injected while cranking to clear excess fuel from the cylinders.

Enable faster engine spin-up: Smarter cranking logic.\nSee also startOfCrankingPrimingPulse

Use separate Advance Table for cranking: This activates a separate advance table for cranking conditions, this allows cranking advance to be RPM dependant.

Use Advance Corrections for cranking: This enables the various ignition corrections during cranking (IAT, CLT, FSIO and PID idle).

Use fixed cranking dwell: If set to true, will use the specified duration for cranking dwell. If set to false, will use the specified dwell angle. Unless you have a really good reason to, leave this set to true to use duration mode.

Use separate Advance Table for cranking: This activates a separate advance table for cranking conditions, this allows cranking advance to be RPM dependant.

Use Advance Corrections for cranking: This enables the various ignition corrections during cranking (IAT, CLT, FSIO and PID idle).

Use fixed cranking dwell: If set to true, will use the specified duration for cranking dwell. If set to false, will use the specified dwell angle. Unless you have a really good reason to, leave this set to true to use duration mode.

Use separate Advance Table for cranking: This activates a separate advance table for cranking conditions, this allows cranking advance to be RPM dependant.

Use Advance Corrections for cranking: This enables the various ignition corrections during cranking (IAT, CLT, FSIO and PID idle).

Use fixed cranking dwell: If set to true, will use the specified duration for cranking dwell. If set to false, will use the specified dwell angle. Unless you have a really good reason to, leave this set to true to use duration mode.

![x](overview/TS_generated/dialog_Cranking_Coolant_Temperature_Multiplier.png)
![x](overview/TS_generated/dialog_Cranking_Duration_Multiplier.png)
![x](overview/TS_generated/dialog_Cranking_TPS_Multiplier.png)
# Idle
![x](overview/TS_generated/dialog_Idle_settings.png)
use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Use separate Ignition Table for idle: This activates a separate ignition timing table for idle conditions, this can help idle stability by using ignition retard and advance either side of the desired idle speed. Extra retard at low idle speeds will prevent stalling and extra advance at high idle speeds can help reduce engine power and slow the idle speed.

Use separate VE Table for idle: This activates a separate fuel table for Idle, this allows fine tuning of the idle fuelling.

Use separate IAC Table For Coasting: This setting allows the ECU to open the IAC during overrun conditions to help reduce engine breaking, this can be helpful for large engines in light weight cars.

Detailed status in console: Print details into rusEfi console

PID Extra for low RPM(%): Increases PID reaction for RPM<target by adding extra percent to PID-error

Use IAC PID Multiplier Table: This flag allows to use a special 'PID Multiplier' table (0.0-1.0) to compensate for nonlinear nature of IAC-RPM controller

PID Extra for low RPM(%): Increases PID reaction for RPM<target by adding extra percent to PID-error

Use IAC PID Multiplier Table: This flag allows to use a special 'PID Multiplier' table (0.0-1.0) to compensate for nonlinear nature of IAC-RPM controller

PID Extra for low RPM(%): Increases PID reaction for RPM<target by adding extra percent to PID-error

Use IAC PID Multiplier Table: This flag allows to use a special 'PID Multiplier' table (0.0-1.0) to compensate for nonlinear nature of IAC-RPM controller

![x](overview/TS_generated/dialog_Idle_hardware.png)
Use Stepper: This setting should only be used if you have a stepper motor idle valve and a stepper motor driver installed.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

![x](overview/TS_generated/dialog_Idle_Target_RPM.png)
![x](overview/TS_generated/dialog_Closed-loop_idle_timing.png)
![x](overview/TS_generated/dialog_Warmup_Idle_multiplier.png)
# Advanced
![x](overview/TS_generated/dialog_Boost_Control.png)
![x](overview/TS_generated/dialog_General_Purpose_PWM_1.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

On above duty(%): In on-off mode, turn the output on when the table value is above this duty.

Off below duty(%): In on-off mode, turn the output off when the table value is below this duty.

Duty if error(%): If an error (with a sensor, etc) is detected, this value is used instead of reading from the table.\nThis should be a safe value for whatever hardware is connected to prevent damage.

Load Axis: Selects the load axis to use for the table.

![x](overview/TS_generated/dialog_General_Purpose_PWM_2.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

On above duty(%): In on-off mode, turn the output on when the table value is above this duty.

Off below duty(%): In on-off mode, turn the output off when the table value is below this duty.

Duty if error(%): If an error (with a sensor, etc) is detected, this value is used instead of reading from the table.\nThis should be a safe value for whatever hardware is connected to prevent damage.

Load Axis: Selects the load axis to use for the table.

![x](overview/TS_generated/dialog_General_Purpose_PWM_3.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

On above duty(%): In on-off mode, turn the output on when the table value is above this duty.

Off below duty(%): In on-off mode, turn the output off when the table value is below this duty.

Duty if error(%): If an error (with a sensor, etc) is detected, this value is used instead of reading from the table.\nThis should be a safe value for whatever hardware is connected to prevent damage.

Load Axis: Selects the load axis to use for the table.

![x](overview/TS_generated/dialog_General_Purpose_PWM_4.png)
Pin: This implementation produces one pulse per engine cycle. See also dizzySparkOutputPin.

On above duty(%): In on-off mode, turn the output on when the table value is above this duty.

Off below duty(%): In on-off mode, turn the output off when the table value is below this duty.

Duty if error(%): If an error (with a sensor, etc) is detected, this value is used instead of reading from the table.\nThis should be a safe value for whatever hardware is connected to prevent damage.

Load Axis: Selects the load axis to use for the table.

![x](overview/TS_generated/dialog_FSIO_inputs.png)
![x](overview/TS_generated/dialog_Aux_PID.png)
Detailed status in console: Print details into rusEfi console

![x](overview/TS_generated/dialog_FSIO_outputs.png)
![x](overview/TS_generated/dialog_FSIO_Table_#1.png)
![x](overview/TS_generated/dialog_FSIO_Table_#2.png)
![x](overview/TS_generated/dialog_FSIO_Table_#3.png)
![x](overview/TS_generated/dialog_FSIO_Table_#4.png)
![x](overview/TS_generated/dialog_FSIO_Formulas.png)
use FSIO #16 for timing adjustment: See fsioTimingAdjustment

![x](overview/TS_generated/dialog_FSIO_Curve_#1.png)
![x](overview/TS_generated/dialog_FSIO_Curve_#2.png)
![x](overview/TS_generated/dialog_FSIO_Curve_#3.png)
![x](overview/TS_generated/dialog_FSIO_Curve_#4.png)
# Sensors
![x](overview/TS_generated/dialog_Trigger_Inputs.png)
Invert Primary: This setting flips the signal from the primary engine speed sensor.

Invert Secondary: This setting flips the signal from the secondary engine speed sensor.

Cam Sync/VVT input: Camshaft input could be used either just for engine phase detection if your trigger shape does not include cam sensor as 'primary' channel, or it could be used for Variable Valve timing on one of the camshafts.\nTODO #660

![x](overview/TS_generated/dialog_Other_Sensor_Inputs.png)
Throttle Up switch: Throttle Pedal not pressed switch - used on some older vehicles like early Mazda Miata

![x](overview/TS_generated/dialog_Analog_Input_Settings.png)
![x](overview/TS_generated/dialog_CLT_sensor.png)
![x](overview/TS_generated/dialog_IAT_sensor.png)
![x](overview/TS_generated/dialog_aux1_Thermistor_Settings.png)
![x](overview/TS_generated/dialog_aux2_Thermistor_Settings.png)
![x](overview/TS_generated/dialog_TPS.png)
TPS low value detection threshold(%): TPS error detection, what TPS % value is unrealistically low

TPS high value detection threshold(%): TPS error detection, what TPS % value is unrealistically high

![x](overview/TS_generated/dialog_Accelerator_pedal.png)
Down (WOT) voltage: Pedal in the floor

![x](overview/TS_generated/dialog_MAP_sensor.png)
Measure Map Only In One Cylinder: Useful for individual intakes

Measure Map Only In One Cylinder: Useful for individual intakes

Measure Map Only In One Cylinder: Useful for individual intakes

![x](overview/TS_generated/dialog_MAP_sampling.png)
![x](overview/TS_generated/dialog_Baro_sensor.png)
![x](overview/TS_generated/dialog_MAF_sensor.png)
![x](overview/TS_generated/dialog_MAF_sensor.png)
![x](overview/TS_generated/dialog_EGO_sensor.png)
![x](overview/TS_generated/dialog_Narrow_to_Wideband_approximation.png)
![x](overview/TS_generated/dialog_CJ125_Settings_wbo_decoder.png)
Is UA input divided?: Is your UA CJ125 output wired to MCU via resistor divider?

Is UR input divided?: Is your UR CJ125 output wired to MCU via resistor divider?\nLooks like 3v range should be enough, divider generally not needed.

![x](overview/TS_generated/dialog_Speed_sensor.png)
![x](overview/TS_generated/dialog_Oil_pressure.png)
![x](overview/TS_generated/dialog_EGT_inputs.png)
# Controller
![x](overview/TS_generated/dialog_ECU_stimulator.png)
![x](overview/TS_generated/dialog_Datalogging_Settings.png)
![x](overview/TS_generated/dialog_Bench_Test_&_Commands.png)
![x](overview/TS_generated/dialog_Popular_vehicles.png)
![x](overview/TS_generated/dialog_LCD_screen.png)
![x](overview/TS_generated/dialog_Joystick.png)
![x](overview/TS_generated/dialog_SPI_settings.png)
SPI1mosi mode: Modes count be used for 3v<>5v integration using pull-ups/pull-downs etc.

![x](overview/TS_generated/dialog_rusEfi_Console_Settings.png)
Sensor Sniffer: rusEfi console Sensor Sniffer mode

Engine Sniffer: This options enables data for 'engine sniffer' tab in console, which comes at some CPU price

![x](overview/TS_generated/dialog_Connection.png)
![x](overview/TS_generated/dialog_TLE8888.png)
![x](overview/TS_generated/dialog_All_Pins_1_3.png)
Dizzy out Pin: This implementation makes a pulse every time one of the coils is charged, using coil dwell for pulse width. See also tachOutputPin

Saab CDM knock: Saab Combustion Detection Module knock signal input pin\nalso known as Saab Ion Sensing Module

![x](overview/TS_generated/dialog_All_Pins_2_3.png)
![x](overview/TS_generated/dialog_All_Pins_3_3.png)
Cam Sync/VVT input: Camshaft input could be used either just for engine phase detection if your trigger shape does not include cam sensor as 'primary' channel, or it could be used for Variable Valve timing on one of the camshafts.\nTODO #660

vBatt ADC input: This is the processor input pin that the battery voltage circuit is connected to, if you are unsure of what pin to use, check the schematic that corresponds to your PCB.

FuelLevelSensor: This is the processor pin that your fuel level sensor in connected to. This is a non standard input so will need to be user defined.

![x](overview/TS_generated/dialog_Experimental_Broken.png)
![x](overview/TS_generated/dialog_Multispark.png)
![x](overview/TS_generated/dialog_GDI_Dreams.png)
![x](overview/TS_generated/dialog_HIP9011_Settings_knock_decoder.png)
![x](overview/TS_generated/dialog_Electronic_Throttle_Body_beta.png)
Detailed status in console: Print details into rusEfi console

Disable ETB Motor: Disable the electronic throttle motor for testing.\nThis mode is for testing ETB position sensors, etc without actually driving the throttle.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See http://rusefi.com/s/debugmode\n\nset debug_mode X

![x](overview/TS_generated/dialog_Electronic_TB_Bias_Curve.png)
![x](overview/TS_generated/dialog_ETB_Pedal_to_TPS.png)
![x](overview/TS_generated/dialog_Launch_Control_Settings_NOT_WORKING.png)
Extra Fuel(%): Extra Fuel Added

Boost Solenoid Duty(%): Duty Cycle for the Boost Solenoid

Smooth Retard Mode: Interpolates the Ignition Retard from 0 to 100% within the RPM Range

Ignition Cut: This is the Cut Mode normally used

![x](overview/TS_generated/dialog_Rolling_Launch_Settings_NOT_WORKING.png)
![x](overview/TS_generated/dialog_AntiLag_Settings_NOT_WORKING.png)

generated by class com.rusefi.MdGenerator on Fri May 01 14:10:39 EDT 2020
