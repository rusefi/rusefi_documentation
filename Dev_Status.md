# This page documents the current development status of rusEFI

The layout here is based on the rusEFI project layout as of 2020/05/31
Links to the overall rusEFI project pages have been retained for ease of quick access to the relevant TS view. 

# [Base Engine](rusEFI-project-Base-Engine)

[Base Engine Settings](rusEFI-project-Base-Engine#base-engine-settings)  
(&#x1F536;): AlphaN fuel strategy  
(&#x1F49A;): Speed Density fuel strategy  
(&#x1F536;): MAF fuel strategy  
(&#x1F49A;): Firing orders  
(&#x1F49A;): RPM limit  
(&#x1F534;): Boost Limit  

[Trigger](rusEFI-project-Base-Engine#trigger)  
Trigger Patterns
VR and Hall support  
(&#x1F534;): VVT support

[Battery and Alternator Settings](rusEFI-project-Base-Engine#battery-and-alternator-settings)  
Vbatt display and logging
(&#x1F536;): Alternator Control
Button engine start

[Main relay output](rusEFI-project-Base-Engine#main-relay-output)  
Main Relay control

[Starter relay output](rusEFI-project-Base-Engine#starter-relay-output)  
Starter Relay control

[Fuel pump  rail](rusEFI-project-Base-Engine#fuel-pump--rail)  
Fuel Pump control  
Fuel Priming pulse  
(&#x1F536;): Fuel Rail pressure control (Absolute and MAP referenced)   

[Fan Settings](rusEFI-project-Base-Engine#fan-settings)  
Cooling fan control  

[Tachometer output](rusEFI-project-Base-Engine#tachometer-output)  
Tachometer (Rev counter) output with configurable pulses per revolution  

[Check Engine Settings](rusEFI-project-Base-Engine#check-engine-settings)  
(&#x1F536;): Check engine light (MIL) light  

[Status LEDs](rusEFI-project-Base-Engine#status-leds)  
Status LED for diagnostic


# [Fuel](rusEFI-project-Fuel)

[Injection settings](rusEFI-project-Fuel#injection-settings)  
Ability to enable/disable injection  
Batch fuel mode  
Two wire batch emulation  
Sequential fuel mode  
Simultaneous fuel mode  
(&#x1F536;): Single point fuel mode
Configurable Injector output pins

[Injector dead time](rusEFI-project-Fuel#injector-dead-time)  
Injection dead time (latency) compensation

[Fuel short-term closed-loop correction](rusEFI-project-Fuel#fuel-short-term-closed-loop-correction)  
(&#x1F536;): Short term fuel trim enable/disable
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
(&#x1F536;): tCharge fuel compensation with 2 modes  
RPM+TPS mode  
Air Interpolation Mode  

[Accel/Decel Enrichment](rusEFI-project-Fuel#accel/decel-enrichment)  
(&#x1F536;): Acceleration enrichment disable upon triggering RPM limit with configurable duration  
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
(&#x1F536;): Dual distributor mode  
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
(&#x1F536;): Selectable pulse width source (VE table or fixed pulse)  
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
Brake pedal pressure  
A/C active input  

[Analog Input Settings](rusEFI-project-Sensors#analog-input-settings)  
Fixed Barro correction from MAP on startup  
Analogue sensor input divider ration correction 
Adjustable sensor smoothing factor

[CLT sensor](rusEFI-project-Sensors#clt-sensor)  
Enable/Disable Coolant temperature sensor  
Configurable sensor bias resistor  
3 point curve configuration using correct Steinhart–Hart math  
Linear sensor option  

[IAT sensor](rusEFI-project-Sensors#iat-sensor)  
Enable/Disable Air temperature sensor  
Configurable sensor bias resistor 
3 point curve configuration using correct Steinhart–Hart math  
Linear sensor option  

[aux Thermistor Settings](rusEFI-project-Sensors#aux1-thermistor-settings)  
2x auxillary sensor input channels  
Configurable sensor bias resistor  
3 point curve configuration using correct Steinhart–Hart math  

[TPS](rusEFI-project-Sensors#tps)  
2x Configurable TPS input pin  
User adjustable TPS max and min values  
Configurable high and low TPS threshold  

[Accelerator pedal](rusEFI-project-Sensors#accelerator-pedal)  
2x Configurable Pedal input pin  
Configurable linear voltage slope for redundant sensor  

[MAP sensor](rusEFI-project-Sensors#map-sensor)  
Frequency based MAP support  
Configurable high and low pressures  
Single cylinder MAP sampling mode  
Configurable number of minimum MAP samples  
Configurable MAP input pin  
Preset MAP configs  
2 point MAP sensor calibration  

[MAP sampling](rusEFI-project-Sensors#map-sampling)  
Table to configure MAP sampling angle  
Table to configure the sample length in degrees  

[Baro sensor](rusEFI-project-Sensors#baro-sensor)  
Configurable barro sensor pin  
2 point barro sensor calibration  

[MAF sensor](rusEFI-project-Sensors#maf-sensor)  
512 cell MAF transfer function  

[EGO sensor](rusEFI-project-Sensors#ego-sensor)  
CAN communication for AEM X-type wideband sensors  
Serial communication for Innovate wideband sensors  
Configurable analogue input channel  
Configurable heater output channel  
Wideband sensor presets  
2 point wideband sensor calibration  
Calibration drift correction value  

[Narrow to Wideband approximation](rusEFI-project-Sensors#narrow-to-wideband-approximation)  
Narrow to wideband approximation table  

[CJ125 Settings (wbo decoder)](rusEFI-project-Sensors#cj125-settings-(wbo-decoder))  
CJ125 (Bosch wide band controller) enable/disable  
LSU4.9 sensor select  
CJ125 chip select pin  
CJ125 chip select mode  
SPI settings  

[Speed sensor](rusEFI-project-Sensors#speed-sensor)  
Vehicle speed sensor configuration  
CANBUS vehicle speed option  
VSS input pin select  
VSS calibration coefficient  

[Oil pressure](rusEFI-project-Sensors#oil-pressure)  
Configurable oil pressure input pin  
2 point oil pressure sensor calibration  

[EGT inputs](rusEFI-project-Sensors#egt-inputs)  
SPI select for EGT via SPI  
8x EGT inputs  

# [Controller](rusEFI-project-Controller)

[ECU stimulator](rusEFI-project-Controller#ecu-stimulator)  
Self stimulation RPM setting  
Enable switch for internal MCU self trigger stimulation  
Digipot SPI input stimulation settings  
3 trigger simulation output pin configurations  
4 configurable logic input channels  
Engine chart size  

[Datalogging Settings](rusEFI-project-Controller#datalogging-settings)  
Debug logging enable setting  
Error logging enable setting  

[Bench Test & Commands](rusEFI-project-Controller#bench-test-&-commands)  
8 coil spark bench test  
8 injector bench test  
Fuel pump bench test  
Radiator fan bench test  
Check engine light bench test  
IAC bench test  
A/C relay bench test  
Starter relay bench test  
Stop engine bench test  
Write config bench test  
Reset ECU test  
Reset to DFU test  

[Popular vehicles](rusEFI-project-Controller#popular-vehicles)  
Popular setting presets  
Miata NA6 0  
Miata NA6 1  
Miata NB2 MAP  
ETB bench test  
TLE8888 bench test  
Reset firmware to default  

[LCD screen](rusEFI-project-Controller#lcd-screen)  
LCD screen output configuration  

[Joystick](rusEFI-project-Controller#joystick)  
Discovery brain board joystick configuration  

[SPI settings](rusEFI-project-Controller#spi-settings)  
SPI communication configuration  

[rusEfi Console Settings](rusEFI-project-Controller#rusefi-console-settings)  
rusEFI console configuration  

[Connection](rusEFI-project-Controller#connection)  
ADC Vref configuration  
TunerStudio communication configuration  
CANBUS communication configuration  
Aux serial communication configuration  
SD card logging configuration  
GPS module communication configuration  

[TLE8888](rusEFI-project-Controller#tle8888)  
TLE8888 configuration  

[All Pins 1/3](rusEFI-project-Controller#all-pins-1/3)  
Trigger stimulation pin config  
High pressure fuel rail pin config  
Warning LED pin config  
TLE6240_CS pin config  
Tacho pin config  
Dizzy output pin config  
Lambda heater pin config  
IAC pin config  
IAC stepper pin config  
Fuel pump pin config  
ETB pin config  
SD card pin config  
MIL pin config  
557 pin config  
Fan pin config  
Main relay pin config  
Starter relay pin config  
FSIO pin config  
GPS pin config  
CAN pin config  
MOSI pin config  
SPI pin config  
HIP9011 pin config  
LIS302 pin config  
Saab CDM Knock pin config  
Comm status light pin config  
Running status light pin config  

[All Pins 2/3](rusEFI-project-Controller#all-pins-2/3)  
Injection pin config  
FSIO digi input pin config  
Ignition pin config  
Output pin config  
LCD pin config  
Debug trigger sync pin config  
MC33816 pin config  

[All Pins 3/3](rusEFI-project-Controller#all-pins-3/3)  
Throttle pedal position pin config  
Crank/primary input pin config  
Cam/Secondary input pin config  
VVT input pin config  
CLT pin config  
IAT pin config  
vBatt pin config  
TPS pin config  
MAF pin config  
Lambda pin config  
Baro pin config  
MAP pin config  
Fuel level pin config  
VSS pin config  
Clutch pedal pin config  
Brake pressure pin config  
AC switch pin config  
Aux temp input pin config  
Aux analogue pin config  
Servo pin config  
Aux pin config  
TLE8888 pin config  
Aux serial pin config  

[Experimental/Broken](rusEFI-project-Controller#experimental/broken)  
Global fuel correction coefficient  
Ignition math logic  
MAP averaging logic  

[Multispark](rusEFI-project-Controller#multispark)  
Enable/disable multi spark  
Multi spark config  

[GDI Dreams](rusEFI-project-Controller#gdi-dreams)  
MC33816_cs GDI config  

[HIP9011 Settings (knock decoder)](rusEFI-project-Controller#hip9011-settings-(knock-decoder))  
HIP9011 Knock control enable/disable 
Knock control settings  

[Electronic Throttle Body (beta)](rusEFI-project-Controller#electronic-throttle-body-(beta))  
Enable ETB status in console  
Disable ETB drive motor  
H-bridge configuration  
ETB idle settings  
ETB PID settings   
ETB autotune  
TPS auto calibrate  

[Electronic TB Bias Curve](rusEFI-project-Controller#electronic-tb-bias-curve)  
ETB feed forward curve  

[ETB Pedal to TPS](rusEFI-project-Controller#etb-pedal-to-tps)  
8x8 ETB pedal transfer map  

[Launch Control Settings NOT WORKING](rusEFI-project-Controller#launch-control-settings-not-working)  
Launch control 

[Rolling Launch Settings NOT WORKING](rusEFI-project-Controller#rolling-launch-settings-not-working)  
Rolling launch 

[AntiLag Settings NOT WORKING](rusEFI-project-Controller#antilag-settings-not-working)  
Anti lag  

generated by class com.rusefi.MdGenerator on Fri May 01 15:24:28 EDT 2020
