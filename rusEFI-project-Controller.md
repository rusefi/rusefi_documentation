# [rusEFI project](rusEFI-project)

## Controller

[ECU stimulator](#ecu-stimulator)

[Data logging Settings](#data-logging-settings)

[Bench Test and Commands](#bench-test-and-commands)

[Popular vehicles](#popular-vehicles)

[LCD screen](#lcd-screen)

[Joystick](#joystick)

[SPI settings](#spi-settings)

[rusEfi Console Settings](#rusefi-console-settings)

[Connection](#connection)

[TLE8888](#tle8888)

[All Pins 1 of 3](#all-pins-1-of-3)

[All Pins 2 of 3](#all-pins-2-of-3)

[All Pins 3 of3](#all-pins-3-of-3)

[Experimental or Broken](#experimental-or-broken)

[Multispark](#multispark)

[GDI Dreams](#gdi-dreams)

[HIP9011 Settings (knock decoder)](#hip9011-settings-knock-decoder)

[Electronic Throttle Body (beta)](#electronic-throttle-body-beta)

[Electronic TB Bias Curve](#electronic-tb-bias-curve)

[ETB Pedal to TPS](#etb-pedal-to-tps)

[Launch Control Settings NOT WORKING](#launch-control-settings-not-working)

[Rolling Launch Settings NOT WORKING](#rolling-launch-settings-not-working)

[AntiLag Settings NOT WORKING](#antilag-settings-not-working)

### ECU stimulator

![x](Overview/TS_generated/dialog_ECU_stimulator.png)

### Data logging Settings

![x](Overview/TS_generated/dialog_Datalogging_Settings.png)

### Bench Test and Commands

![x](Overview/TS_generated/dialog_Bench_Test_and_Commands.png)

### Popular vehicles

![x](Overview/TS_generated/dialog_Popular_vehicles.png)

### LCD screen

![x](Overview/TS_generated/dialog_LCD_screen.png)

### Joystick

![x](Overview/TS_generated/dialog_Joystick.png)

### SPI settings

![x](Overview/TS_generated/dialog_SPI_settings.png)

SPI1MOSI mode: Modes count be used for 3v<>5v integration using pull-ups/pull-downs etc.

### rusEfi Console Settings

![x](Overview/TS_generated/dialog_rusEfi_Console_Settings.png)

Sensor Sniffer: rusEfi console Sensor Sniffer mode

Engine Sniffer: This options enables data for 'engine sniffer' tab in console, which comes at some CPU price

### Connection

![x](Overview/TS_generated/dialog_Connection.png)

### TLE8888

![x](Overview/TS_generated/dialog_TLE8888.png)

### All Pins 1 of 3

![x](Overview/TS_generated/dialog_All_Pins_1_3.png)

Dizzy out Pin: This implementation makes a pulse every time one of the coils is charged, using coil dwell for pulse width. See also tachOutputPin

Saab CDM knock: Saab Combustion Detection Module knock signal input pin
also known as Saab Ion Sensing Module

### All Pins 2 of 3

![x](Overview/TS_generated/dialog_All_Pins_2_3.png)

### All Pins 3 of 3

![x](Overview/TS_generated/dialog_All_Pins_3_3.png)

Cam Sync/VVT input: Camshaft input could be used either just for engine phase detection if your trigger shape does not include cam sensor as 'primary' channel, or it could be used for Variable Valve timing on one of the camshafts.
TODO #660

vBatt ADC input: This is the processor input pin that the battery voltage circuit is connected to, if you are unsure of what pin to use, check the schematic that corresponds to your PCB.

FuelLevelSensor: This is the processor pin that your fuel level sensor in connected to. This is a non standard input so will need to be user defined.

### Experimental or Broken

![x](Overview/TS_generated/dialog_Experimental_Broken.png)

### Multispark

![x](Overview/TS_generated/dialog_Multispark.png)

### GDI Dreams

![x](Overview/TS_generated/dialog_GDI_Dreams.png)

### HIP9011 Settings (knock decoder)

![x](Overview/TS_generated/dialog_HIP9011_Settings_knock_decoder.png)

### Electronic Throttle Body (beta)

![x](Overview/TS_generated/dialog_Electronic_Throttle_Body_beta.png)

Detailed status in console: Print details into rusEfi console

Disable ETB Motor: Disable the electronic throttle motor for testing.
This mode is for testing ETB position sensors, etc without actually driving the throttle.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

Two-wire mode: TLE7209 uses two-wire mode. TLE9201 and VNH2SP30 do NOT use two wire mode.

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

use ETB for idle: This setting allows the ETB to act as the idle air control valve and move to regulate the airflow at idle.

Debug mode: See <http://rusefi.com/s/debugmode>

set debug_mode X

### Electronic TB Bias Curve

![x](Overview/TS_generated/dialog_Electronic_TB_Bias_Curve.png)

### ETB Pedal to TPS

![x](Overview/TS_generated/dialog_ETB_Pedal_to_TPS.png)

### Launch Control Settings NOT WORKING

![x](Overview/TS_generated/dialog_Launch_Control_Settings_NOT_WORKING.png)

Extra Fuel(%): Extra Fuel Added

Boost Solenoid Duty(%): Duty Cycle for the Boost Solenoid

Smooth Retard Mode: Interpolates the Ignition Retard from 0 to 100% within the RPM Range

Ignition Cut: This is the Cut Mode normally used

### Rolling Launch Settings NOT WORKING

![x](Overview/TS_generated/dialog_Rolling_Launch_Settings_NOT_WORKING.png)

### AntiLag Settings NOT WORKING

![x](Overview/TS_generated/dialog_AntiLag_Settings_NOT_WORKING.png)

generated by class com.rusefi.MdGenerator on Fri May 01 15:24:28 EDT 2020
