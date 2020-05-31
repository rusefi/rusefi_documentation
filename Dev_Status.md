# This page documents the current development status of rusEFI

The layout here is based on the rusEFI project layout as of 2020/05/31
Links to the overall rusEFI project pages have been retained for ease of quick access to the relevant TS view. 

# [Base Engine](rusEFI-project-Base-Engine)

[Base Engine Settings](rusEFI-project-Base-Engine#base-engine-settings)

AlphaN fuel strategy  
Speed Density fuel strategy  
MAF fuel strategy  
Firing orders  
RPM limit  
Boost Limit  

[Trigger](rusEFI-project-Base-Engine#trigger)

Trigger Patterns
VR and Hall support
VVT support

[Battery and Alternator Settings](rusEFI-project-Base-Engine#battery-and-alternator-settings)

Vbatt display and logging
Alternator Control
Button engine start

[Main relay output](rusEFI-project-Base-Engine#main-relay-output)

Main Relay control

[Starter relay output](rusEFI-project-Base-Engine#starter-relay-output)

Starter Relay control

[Fuel pump  rail](rusEFI-project-Base-Engine#fuel-pump--rail)

Fuel Pump control  
Fuel Priming pulse  
Fuel Rail pressure control (Absolute and MAP referenced)   

[Fan Settings](rusEFI-project-Base-Engine#fan-settings)

Cooling fan control  

[Tachometer output](rusEFI-project-Base-Engine#tachometer-output)

Tachometer (Rev counter) output with configurable pulses per revolution  

[Check Engine Settings](rusEFI-project-Base-Engine#check-engine-settings)

Check engine light (MIL) light  

[Status LEDs](rusEFI-project-Base-Engine#status-leds)

Status LED for diagnostic


# [Fuel](rusEFI-project-Fuel)

[Injection settings](rusEFI-project-Fuel#injection-settings)

Ability to enable/disable injection  
Batch fuel mode  
Two wire batch emulation  
Sequential fuel mode  
Simultaneous fuel mode  
Single point fuel mode
Configurable Injector output pins

[Injector dead time](rusEFI-project-Fuel#injector-dead-time)

Injection dead time (latency) compensation

[Fuel short-term closed-loop correction](rusEFI-project-Fuel#fuel-short-term-closed-loop-correction)

Short term fuel trim enable/disable
CLT thresholds  
RPM thresholds  
EGO thresholds  
TPS thresholds  

[Coasting Fuel Cutoff Settings](rusEFI-project-Fuel#coasting-fuel-cutoff-settings)

Overrun fuel cut enable/disable  
CLT thresholds  
RPM thresholds  
MAP thresholds  
TPS thresholds  

[Fuel Table](rusEFI-project-Fuel#fuel-table)

16x16 VE based Fuel Table with 0.01% resolution

[Injection Phase](rusEFI-project-Fuel#injection-phase)

16x16 injection timing table for sequential or DI applications

[Warmup fuel manual Multiplier](rusEFI-project-Fuel#warmup-fuel-manual-multiplier)

Warmup fuel compensation  

[Intake air temperature fuel Multiplier](rusEFI-project-Fuel#intake-air-temperature-fuel-multiplier)

Intake air temperature fuel compensation  

[tCharge Settings](rusEFI-project-Fuel#tcharge-settings)

tCharge fuel compensation with 2 modes  
RPM+TPS mode  
Air Interpolation Mode  

[Accel/Decel Enrichment](rusEFI-project-Fuel#accel/decel-enrichment)

Acceleration enrichment disable upon triggering RPM limit with configurable duration  
TPS based acceleration enrichment  
Wall Wetting based acceleration enrichment  
Engine Load based acceleration enrichment  

[TPS/TPS Acceleration Extra Fuel(ms)](rusEFI-project-Fuel#tps/tps-acceleration-extra-fuel(ms))

Configurable table of extra injected fuel on TPS change 

[Engine Load Acceleration Enrichment Taper](rusEFI-project-Fuel#engine-load-acceleration-enrichment-taper)

Configurable table of Engine load based enrichment taper

# [Ignition](rusEFI-project-Ignition)

[Ignition settings](rusEFI-project-Ignition#ignition-settings)

Ignition enable/disable 
Single coil mode  
Wasted spark mode  
Two Wire wasted spark emulation
Coil per cylinder mode
Dual distributor mode  
Configurable ignition output pins  
Distributor pulse output  

[Dwell](rusEFI-project-Ignition#dwell)

RPM based ignition coil dwell  

[Ignition Cylinder Extra Timing](rusEFI-project-Ignition#ignition-cylinder-extra-timing)

Individual cylinder additional ignition trim  

[Ignition Table](rusEFI-project-Ignition#ignition-table)

16x16 ignition table with 0.01 degree resolution  

[Warmup timing correction](rusEFI-project-Ignition#warmup-timing-correction)

Warmup ignition timing correction  

[Ignition Intake Air Temp correction](rusEFI-project-Ignition#ignition-intake-air-temp-correction)

16x16 Intake air temperature ignition correction 


# [Cranking](rusEFI-project-Cranking)

[Cranking Settings](rusEFI-project-Cranking#cranking-settings)

Configurable cranking speed limit  
Flood clear  
Faster engine start mode (a smarter cranking logic)  
Temperature configurable fuel priming pulse  
Cranking fuel injection mode selection (Simultaneous, batch or sequential)  
Selectable pulse width source (VE table or fixed pulse)  
Configurable cranking ignition timing (fixed or table based)  
Enable/disable ignition corrections
Enable/disable fixed coil dwell  
Configurable IAC position
Configurable IAC taper after cranking  
Enable/disable IAC multipliers during cranking  
Afterstart enrichment  
 
[Cranking Coolant Temperature Multiplier](rusEFI-project-Cranking#cranking-coolant-temperature-multiplier)

Cranking fuel coolant multiplier  

[Cranking Duration Multiplier](rusEFI-project-Cranking#cranking-duration-multiplier) 

Cranking duration based fuel multiplier  

[Cranking TPS Multiplier](rusEFI-project-Cranking#cranking-tps-multiplier)

Cranking TPS based fuel multiplier  


# [Idle](rusEFI-project-Idle)

[Idle settings](rusEFI-project-Idle#idle-settings) 

Open or closed loop idle  
Instant RPM measurement for smoother idle  
ETB for idle control  
Enable/disable idle ignition table  
Enable/disable idle fuel table  
Enable/disable IAC table for overrun  
Idle TPS threshold  
Extra IAC demand above x% throttle at idle  
Manual IAC position (open loop)  
Idle PID controller  

[Idle hardware](rusEFI-project-Idle#idle-hardware)

Stepper Idle  
Dual solenoid IAC (Bosch 3 wire)
Configurable IAC pins  
Configurable IAC PWM frequency  
Stepper configuration  
H-bridge configuration  

[Idle Target RPM](rusEFI-project-Idle#idle-target-rpm)

Coolant temperature based idle speed  

[Closed-loop idle timing](rusEFI-project-Idle#closed-loop-idle-timing)

Closed loop ignition timing based idle speed control  

[Warmup Idle multiplier](rusEFI-project-Idle#warmup-idle-multiplier)

Warmup idle fuel multiplier  


# [Advanced](rusEFI-project-Advanced)

[Boost Control](rusEFI-project-Advanced#boost-control)

Boost control enable/disable  
Open and closed loop boost control  
Configurable output pin 
Configurable PWM frequency  
8x8 boost target table  

[General Purpose PWM](rusEFI-project-Advanced#general-purpose-pwm-1)

Configurable GP PWM output pin  
8x8 target table  
Configurable thresholds  

[FSIO inputs](rusEFI-project-Advanced#fsio-inputs)

4 Selectable FSIO inputs 

[Aux PID](rusEFI-project-Advanced#aux-pid)

Enable/disable Auxiliary PID  
Configurable FSIO pins  
Configurable PID PWM frequency  
Configurable PID settings  

[FSIO outputs](rusEFI-project-Advanced#fsio-outputs)

Massively configurable FSIO outputs  

[FSIO Table](rusEFI-project-Advanced#fsio-table-#1)

4x FSIO target tables 

[FSIO Formulas](rusEFI-project-Advanced#fsio-formulas)

Pre-configured FSIO formulas  

[FSIO Curve](rusEFI-project-Advanced#fsio-curve-#1)

4x FSIO target curves  

# [Sensors](rusEFI-project-Sensors)

[Trigger Inputs](rusEFI-project-Sensors#trigger-inputs)

Selectable cam and crank trigger inputs  
Option to invert the inputs  

[Other Sensor Inputs](rusEFI-project-Sensors#other-sensor-inputs)

Fuel level input  
Clutch position Switch  
Throttle up switch  


[Analog Input Settings](rusEFI-project-Sensors#analog-input-settings)

[CLT sensor](rusEFI-project-Sensors#clt-sensor)

[IAT sensor](rusEFI-project-Sensors#iat-sensor)

[aux1 Thermistor Settings](rusEFI-project-Sensors#aux1-thermistor-settings)

[aux2 Thermistor Settings](rusEFI-project-Sensors#aux2-thermistor-settings)

[TPS](rusEFI-project-Sensors#tps)

[Accelerator pedal](rusEFI-project-Sensors#accelerator-pedal)

[MAP sensor](rusEFI-project-Sensors#map-sensor)

[MAP sampling](rusEFI-project-Sensors#map-sampling)

[Baro sensor](rusEFI-project-Sensors#baro-sensor)

[MAF sensor](rusEFI-project-Sensors#maf-sensor)

[MAF sensor](rusEFI-project-Sensors#maf-sensor)

[EGO sensor](rusEFI-project-Sensors#ego-sensor)

[Narrow to Wideband approximation](rusEFI-project-Sensors#narrow-to-wideband-approximation)

[CJ125 Settings (wbo decoder)](rusEFI-project-Sensors#cj125-settings-(wbo-decoder))

[Speed sensor](rusEFI-project-Sensors#speed-sensor)

[Oil pressure](rusEFI-project-Sensors#oil-pressure)

[EGT inputs](rusEFI-project-Sensors#egt-inputs)


# [Controller](rusEFI-project-Controller)

<a href='rusEFI-project-Controller'>![x](overview/TS_generated/top_level_Controller.png)
</a>[ECU stimulator](rusEFI-project-Controller#ecu-stimulator)

[Datalogging Settings](rusEFI-project-Controller#datalogging-settings)

[Bench Test & Commands](rusEFI-project-Controller#bench-test-&-commands)

[Popular vehicles](rusEFI-project-Controller#popular-vehicles)

[LCD screen](rusEFI-project-Controller#lcd-screen)

[Joystick](rusEFI-project-Controller#joystick)

[SPI settings](rusEFI-project-Controller#spi-settings)

[rusEfi Console Settings](rusEFI-project-Controller#rusefi-console-settings)

[Connection](rusEFI-project-Controller#connection)

[TLE8888](rusEFI-project-Controller#tle8888)

[All Pins 1/3](rusEFI-project-Controller#all-pins-1/3)

[All Pins 2/3](rusEFI-project-Controller#all-pins-2/3)

[All Pins 3/3](rusEFI-project-Controller#all-pins-3/3)

[Experimental/Broken](rusEFI-project-Controller#experimental/broken)

[Multispark](rusEFI-project-Controller#multispark)

[GDI Dreams](rusEFI-project-Controller#gdi-dreams)

[HIP9011 Settings (knock decoder)](rusEFI-project-Controller#hip9011-settings-(knock-decoder))

[Electronic Throttle Body (beta)](rusEFI-project-Controller#electronic-throttle-body-(beta))

[Electronic TB Bias Curve](rusEFI-project-Controller#electronic-tb-bias-curve)

[ETB Pedal to TPS](rusEFI-project-Controller#etb-pedal-to-tps)

[Launch Control Settings NOT WORKING](rusEFI-project-Controller#launch-control-settings-not-working)

[Rolling Launch Settings NOT WORKING](rusEFI-project-Controller#rolling-launch-settings-not-working)

[AntiLag Settings NOT WORKING](rusEFI-project-Controller#antilag-settings-not-working)



generated by class com.rusefi.MdGenerator on Fri May 01 15:24:28 EDT 2020
