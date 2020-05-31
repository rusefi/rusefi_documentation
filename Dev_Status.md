# This page documents the current development status of rusEFI

The layout here is based on the rusEFI project layout as of 2020/05/31
Links to the overall rusEFI project pages have been retained for ease of quick access to the relevant TS view. 

Colour code meanings:-  
(&#x1F49A;): **_OK to use_** - Working, tested and no ongoing work  
(&#x1F536;): **_Use at own risk_** - Believed working, may have bugs or has ongoing work  
(&#x1F534;): **_Do not use_** - Not working or potential of damage from testing  

# [Base Engine](rusEFI-project-Base-Engine)

[Base Engine Settings](rusEFI-project-Base-Engine#base-engine-settings)  
(&#x1F536;): AlphaN fuel strategy  
(&#x1F49A;): Speed Density fuel strategy  
(&#x1F536;): MAF fuel strategy  
(&#x1F49A;): Firing orders  
(&#x1F49A;): RPM limit  
(&#x1F49A;): Boost Limit  

[Trigger](rusEFI-project-Base-Engine#trigger)  
(&#x1F49A;): Trigger Patterns  
(&#x1F49A;): VR and Hall support  
(&#x1F534;): VVT support

[Battery and Alternator Settings](rusEFI-project-Base-Engine#battery-and-alternator-settings)  
(&#x1F49A;): Vbatt display and logging  
(&#x1F536;): Alternator Control  
(&#x1F536;): Button engine start

[Main relay output](rusEFI-project-Base-Engine#main-relay-output)  
(&#x1F49A;): Main Relay control

[Starter relay output](rusEFI-project-Base-Engine#starter-relay-output)  
(&#x1F49A;): Starter Relay control

[Fuel pump  rail](rusEFI-project-Base-Engine#fuel-pump--rail)  
(&#x1F536;): Fuel Pump control  
(&#x1F49A;): Fuel Priming pulse  
(&#x1F536;): Fuel Rail pressure control (Absolute and MAP referenced)   

[Fan Settings](rusEFI-project-Base-Engine#fan-settings)  
(&#x1F536;): Cooling fan control  

[Tachometer output](rusEFI-project-Base-Engine#tachometer-output)  
(&#x1F49A;): Tachometer (Rev counter) output with configurable pulses per revolution  

[Check Engine Settings](rusEFI-project-Base-Engine#check-engine-settings)  
(&#x1F536;): Check engine light (MIL) light  

[Status LEDs](rusEFI-project-Base-Engine#status-leds)  
(&#x1F49A;): Status LED for diagnostic


# [Fuel](rusEFI-project-Fuel)

[Injection settings](rusEFI-project-Fuel#injection-settings)  
(&#x1F49A;): Ability to enable/disable injection  
(&#x1F49A;): Batch fuel mode  
(&#x1F49A;): Two wire batch emulation  
(&#x1F49A;): Sequential fuel mode  
(&#x1F49A;): Simultaneous fuel mode  
(&#x1F536;): Single point fuel mode
(&#x1F49A;): Configurable Injector output pins

[Injector dead time](rusEFI-project-Fuel#injector-dead-time)  
(&#x1F536;): Injection dead time (latency) compensation

[Fuel short-term closed-loop correction](rusEFI-project-Fuel#fuel-short-term-closed-loop-correction)  
(&#x1F536;): Short term fuel trim enable/disable
CLT thresholds  
RPM thresholds  
EGO thresholds  
TPS thresholds  

[Coasting Fuel Cutoff Settings](rusEFI-project-Fuel#coasting-fuel-cutoff-settings)  
(&#x1F536;): Overrun fuel cut enable/disable  
CLT thresholds  
RPM thresholds  
MAP thresholds  
TPS thresholds  

[Fuel Table](rusEFI-project-Fuel#fuel-table)  
(&#x1F536;): 16x16 VE based Fuel Table with 0.01% resolution

[Injection Phase](rusEFI-project-Fuel#injection-phase)  
(&#x1F536;): 16x16 injection timing table for sequential or DI applications

[Warmup fuel manual Multiplier](rusEFI-project-Fuel#warmup-fuel-manual-multiplier)  
(&#x1F49A;): Warmup fuel compensation  

[Intake air temperature fuel Multiplier](rusEFI-project-Fuel#intake-air-temperature-fuel-multiplier)  
(&#x1F49A;): Intake air temperature fuel compensation  

[tCharge Settings](rusEFI-project-Fuel#tcharge-settings)  
(&#x1F536;): tCharge fuel compensation with 2 modes  
(&#x1F536;): RPM+TPS mode  
(&#x1F536;): Air Interpolation Mode  

[Accel/Decel Enrichment](rusEFI-project-Fuel#accel/decel-enrichment)  
(&#x1F536;): Acceleration enrichment disable upon triggering RPM limit with configurable duration  
(&#x1F536;): TPS based acceleration enrichment  
(&#x1F49A;): Wall Wetting based acceleration enrichment  
(&#x1F536;): Engine Load based acceleration enrichment  

[TPS/TPS Acceleration Extra Fuel(ms)](rusEFI-project-Fuel#tps/tps-acceleration-extra-fuel(ms))  
(&#x1F536;): Configurable table of extra injected fuel on TPS change 

[Engine Load Acceleration Enrichment Taper](rusEFI-project-Fuel#engine-load-acceleration-enrichment-taper)  
(&#x1F536;): Configurable table of Engine load based enrichment taper

# [Ignition](rusEFI-project-Ignition)

[Ignition settings](rusEFI-project-Ignition#ignition-settings)  
(&#x1F49A;): Ignition enable/disable  
(&#x1F49A;): Single coil mode  
(&#x1F49A;): Wasted spark mode  
(&#x1F49A;): Two Wire wasted spark emulation  
(&#x1F49A;): Coil per cylinder mode  
(&#x1F536;): Dual distributor mode  
(&#x1F49A;): Configurable ignition output pins  
(&#x1F49A;): Distributor pulse output  

[Dwell](rusEFI-project-Ignition#dwell)  
(&#x1F49A;): RPM based ignition coil dwell  

[Ignition Cylinder Extra Timing](rusEFI-project-Ignition#ignition-cylinder-extra-timing)  
(&#x1F536;): Individual cylinder additional ignition trim  

[Ignition Table](rusEFI-project-Ignition#ignition-table)  
(&#x1F536;): 16x16 ignition table with 0.01 degree resolution  

[Warmup timing correction](rusEFI-project-Ignition#warmup-timing-correction)  
(&#x1F536;): Warmup ignition timing correction  

[Ignition Intake Air Temp correction](rusEFI-project-Ignition#ignition-intake-air-temp-correction)  
(&#x1F49A;): 16x16 Intake air temperature ignition correction 


# [Cranking](rusEFI-project-Cranking)

[Cranking Settings](rusEFI-project-Cranking#cranking-settings)  
(&#x1F49A;): Configurable cranking speed limit  
(&#x1F49A;): Flood clear  
(&#x1F49A;): Faster engine start mode (a smarter cranking logic)  
(&#x1F49A;): Temperature configurable fuel priming pulse  
(&#x1F49A;): Cranking fuel injection mode selection (Simultaneous, batch or sequential)  
(&#x1F536;): Selectable pulse width source (VE table or fixed pulse)  
(&#x1F49A;): Configurable cranking ignition timing (fixed or table based)  
(&#x1F49A;): Enable/disable ignition corrections  
(&#x1F49A;): Enable/disable fixed coil dwell  
(&#x1F49A;): Configurable IAC position  
(&#x1F49A;): Configurable IAC taper after cranking  
(&#x1F49A;): Enable/disable IAC multipliers during cranking  
(&#x1F534;): Afterstart enrichment  
 
[Cranking Coolant Temperature Multiplier](rusEFI-project-Cranking#cranking-coolant-temperature-multiplier)  
(&#x1F49A;): Cranking fuel coolant multiplier  

[Cranking Duration Multiplier](rusEFI-project-Cranking#cranking-duration-multiplier)   
(&#x1F49A;): Cranking duration based fuel multiplier  

[Cranking TPS Multiplier](rusEFI-project-Cranking#cranking-tps-multiplier)  
(&#x1F49A;): Cranking TPS based fuel multiplier  


# [Idle](rusEFI-project-Idle)

[Idle settings](rusEFI-project-Idle#idle-settings)   
(&#x1F536;): Open or closed loop idle  
(&#x1F534;): Instant RPM measurement for smoother idle  
(&#x1F536;): ETB for idle control  
(&#x1F49A;): Enable/disable idle ignition table  
(&#x1F49A;): Enable/disable idle fuel table  
(&#x1F49A;): Enable/disable IAC table for overrun  
(&#x1F49A;): Idle TPS threshold  
(&#x1F536;): Extra IAC demand above x% throttle at idle  
(&#x1F49A;): Manual IAC position (open loop)  
(&#x1F536;): Idle PID controller  

[Idle hardware](rusEFI-project-Idle#idle-hardware)  
(&#x1F536;): Stepper Idle  
(&#x1F49A;): Dual solenoid IAC (Bosch 3 wire)
(&#x1F49A;): Configurable IAC pins  
(&#x1F49A;): Configurable IAC PWM frequency  
(&#x1F536;): Stepper configuration  
(&#x1F536;): H-bridge configuration  

[Idle Target RPM](rusEFI-project-Idle#idle-target-rpm)  
(&#x1F536;): Coolant temperature based idle speed  

[Closed-loop idle timing](rusEFI-project-Idle#closed-loop-idle-timing)  
(&#x1F536;): Closed loop ignition timing based idle speed control  

[Warmup Idle multiplier](rusEFI-project-Idle#warmup-idle-multiplier)  
(&#x1F49A;): Warmup idle fuel multiplier  


# [Advanced](rusEFI-project-Advanced)

[Boost Control](rusEFI-project-Advanced#boost-control)  
(&#x1F534;): Boost control enable/disable  
(&#x1F534;): Open and closed loop boost control  
(&#x1F534;): Configurable output pin 
(&#x1F534;): Configurable PWM frequency  
(&#x1F534;): 8x8 boost target table  

[General Purpose PWM](rusEFI-project-Advanced#general-purpose-pwm-1)  
(&#x1F536;): Configurable GP PWM output pin  
(&#x1F536;): 8x8 target table  
(&#x1F536;): Configurable thresholds  

[FSIO inputs](rusEFI-project-Advanced#fsio-inputs)  
(&#x1F536;): 4 Selectable FSIO inputs 

[Aux PID](rusEFI-project-Advanced#aux-pid)  
(&#x1F536;): Enable/disable Auxiliary PID  
(&#x1F536;): Configurable FSIO pins  
(&#x1F536;): Configurable PID PWM frequency  
(&#x1F536;): Configurable PID settings  

[FSIO outputs](rusEFI-project-Advanced#fsio-outputs)  
(&#x1F536;): Massively configurable FSIO outputs  

[FSIO Table](rusEFI-project-Advanced#fsio-table-#1)  
(&#x1F536;): 4x FSIO target tables 

[FSIO Formulas](rusEFI-project-Advanced#fsio-formulas)  
(&#x1F536;): Pre-configured FSIO formulas  

[FSIO Curve](rusEFI-project-Advanced#fsio-curve-#1)  
(&#x1F536;): 4x FSIO target curves  

# [Sensors](rusEFI-project-Sensors)

[Trigger Inputs](rusEFI-project-Sensors#trigger-inputs)  
(&#x1F49A;): Selectable cam and crank trigger inputs  
(&#x1F49A;): Option to invert the inputs  

[Other Sensor Inputs](rusEFI-project-Sensors#other-sensor-inputs)  
(&#x1F534;): Fuel level input  
(&#x1F536;): Clutch position Switch  
(&#x1F536;): Throttle up switch  
(&#x1F536;): Brake pedal pressure  
(&#x1F536;): A/C active input  

[Analog Input Settings](rusEFI-project-Sensors#analog-input-settings)  
(&#x1F534;): Fixed Barro correction from MAP on startup  
(&#x1F49A;): Analogue sensor input divider ratio correction  
(&#x1F536;): Adjustable sensor smoothing factor

[CLT sensor](rusEFI-project-Sensors#clt-sensor)  
(&#x1F49A;): Enable/Disable Coolant temperature sensor  
(&#x1F49A;): Configurable sensor bias resistor  
(&#x1F49A;): 3 point curve configuration using correct Steinhart–Hart math  
(&#x1F536;): Linear CLT sensor option  

[IAT sensor](rusEFI-project-Sensors#iat-sensor)  
(&#x1F49A;): Enable/Disable Air temperature sensor  
(&#x1F49A;): Configurable sensor bias resistor  
(&#x1F49A;): 3 point curve configuration using correct Steinhart–Hart math  
(&#x1F536;): Linear IAT sensor option  

[aux Thermistor Settings](rusEFI-project-Sensors#aux1-thermistor-settings)  
(&#x1F49A;): 2x auxillary sensor input channels  
(&#x1F49A;): Configurable sensor bias resistor  
(&#x1F49A;): 3 point curve configuration using correct Steinhart–Hart math  

[TPS](rusEFI-project-Sensors#tps)  
(&#x1F49A;): 2x Configurable TPS input pin  
(&#x1F49A;): User adjustable TPS max and min values  
(&#x1F49A;): Configurable high and low TPS threshold  

[Accelerator pedal](rusEFI-project-Sensors#accelerator-pedal)  
(&#x1F49A;): 2x Configurable Pedal input pin  
(&#x1F49A;): Configurable linear voltage slope for redundant sensor  

[MAP sensor](rusEFI-project-Sensors#map-sensor)  
(&#x1F536;): Frequency based MAP support  
(&#x1F49A;): Configurable high and low pressures  
(&#x1F49A;): Single cylinder MAP sampling mode  
(&#x1F49A;): Configurable number of minimum MAP samples  
(&#x1F49A;): Configurable MAP input pin  
(&#x1F536;): Preset MAP configs  
(&#x1F49A;): 2 point MAP sensor calibration  

[MAP sampling](rusEFI-project-Sensors#map-sampling)  
(&#x1F49A;): Table to configure MAP sampling angle  
(&#x1F49A;): Table to configure the sample length in degrees  

[Baro sensor](rusEFI-project-Sensors#baro-sensor)  
(&#x1F536;): Configurable barro sensor pin  
(&#x1F536;): 2 point barro sensor calibration  

[MAF sensor](rusEFI-project-Sensors#maf-sensor)  
(&#x1F49A;): 512 cell MAF transfer function  

[EGO sensor](rusEFI-project-Sensors#ego-sensor)  
(&#x1F49A;): CAN communication for AEM X-type wideband sensors  
(&#x1F49A;): Serial communication for Innovate wideband sensors  
(&#x1F49A;): Configurable analogue input channel  
(&#x1F536;): Configurable heater output channel  
(&#x1F49A;): Wideband sensor presets  
(&#x1F49A;): 2 point wideband sensor calibration  
(&#x1F49A;): Calibration drift correction value  

[Narrow to Wideband approximation](rusEFI-project-Sensors#narrow-to-wideband-approximation)  
(&#x1F534;): Narrow to wideband approximation table  

[CJ125 Settings (wbo decoder)](rusEFI-project-Sensors#cj125-settings-(wbo-decoder))  
(&#x1F534;): CJ125 (Bosch wide band controller) enable/disable  
(&#x1F534;): LSU4.9 sensor select  
(&#x1F534;): CJ125 chip select pin  
(&#x1F534;): CJ125 chip select mode  
(&#x1F534;): SPI settings  

[Speed sensor](rusEFI-project-Sensors#speed-sensor)  
(&#x1F49A;): Vehicle speed sensor configuration  
(&#x1F536;): CANBUS vehicle speed option  
(&#x1F536;): VSS input pin select  
(&#x1F536;): VSS calibration coefficient  

[Oil pressure](rusEFI-project-Sensors#oil-pressure)  
(&#x1F536;): Configurable oil pressure input pin  
(&#x1F536;): 2 point oil pressure sensor calibration  

[EGT inputs](rusEFI-project-Sensors#egt-inputs)  
(&#x1F534;): SPI select for EGT via SPI  
(&#x1F534;): 8x EGT inputs  

# [Controller](rusEFI-project-Controller)

[ECU stimulator](rusEFI-project-Controller#ecu-stimulator)  
(&#x1F49A;): Self stimulation RPM setting  
(&#x1F49A;): Enable switch for internal MCU self trigger stimulation  
Digipot SPI input stimulation settings  
3 trigger simulation output pin configurations  
4 configurable logic input channels  
Engine chart size  

[Datalogging Settings](rusEFI-project-Controller#datalogging-settings)  
(&#x1F49A;): Debug logging enable setting  
(&#x1F49A;): Error logging enable setting  

[Bench Test & Commands](rusEFI-project-Controller#bench-test-&-commands)  
(&#x1F49A;): 8 coil spark bench test  
(&#x1F49A;): 8 injector bench test  
(&#x1F49A;): Fuel pump bench test  
(&#x1F49A;): Radiator fan bench test  
(&#x1F49A;): Check engine light bench test  
(&#x1F49A;): IAC bench test  
(&#x1F49A;): A/C relay bench test  
(&#x1F49A;): Starter relay bench test  
(&#x1F49A;): Stop engine bench test  
(&#x1F49A;): Write config bench test  
(&#x1F49A;): Reset ECU test  
(&#x1F49A;): Reset to DFU test  

[Popular vehicles](rusEFI-project-Controller#popular-vehicles)  
(&#x1F536;): Popular setting presets  
(&#x1F536;): Miata NA6 0  
(&#x1F536;): Miata NA6 1  
(&#x1F536;): Miata NB2 MAP  
(&#x1F536;): ETB bench test  
(&#x1F536;): TLE8888 bench test  
(&#x1F49A;): Reset firmware to default  

[LCD screen](rusEFI-project-Controller#lcd-screen)  
(&#x1F49A;): LCD screen output configuration  

[Joystick](rusEFI-project-Controller#joystick)  
(&#x1F49A;): Discovery brain board joystick configuration  

[SPI settings](rusEFI-project-Controller#spi-settings)  
(&#x1F536;): SPI communication configuration  

[rusEfi Console Settings](rusEFI-project-Controller#rusefi-console-settings)  
(&#x1F49A;): rusEFI console configuration  

[Connection](rusEFI-project-Controller#connection)  
(&#x1F49A;): ADC Vref configuration  
(&#x1F49A;): TunerStudio communication configuration  
(&#x1F49A;): CANBUS communication configuration  
(&#x1F49A;): Aux serial communication configuration  
(&#x1F536;): SD card logging configuration  
(&#x1F534;): GPS module communication configuration  

[TLE8888](rusEFI-project-Controller#tle8888)  
(&#x1F49A;): TLE8888 configuration  

[All Pins 1/3](rusEFI-project-Controller#all-pins-1/3)  - Not marking these as they are duplicates
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

[All Pins 2/3](rusEFI-project-Controller#all-pins-2/3)  - Not marking these as they are duplicates
Injection pin config  
FSIO digi input pin config  
Ignition pin config  
Output pin config  
LCD pin config  
Debug trigger sync pin config  
MC33816 pin config  

[All Pins 3/3](rusEFI-project-Controller#all-pins-3/3)  - Not marking these as they are duplicates
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
(&#x1F534;): Global fuel correction coefficient  
(&#x1F534;): Ignition math logic  
(&#x1F536;): MAP averaging logic  

[Multispark](rusEFI-project-Controller#multispark)  
(&#x1F536;): Enable/disable multi spark  
(&#x1F536;): Multi spark config  

[GDI Dreams](rusEFI-project-Controller#gdi-dreams)  
(&#x1F534;): MC33816_cs GDI config  

[HIP9011 Settings (knock decoder)](rusEFI-project-Controller#hip9011-settings-(knock-decoder))  
(&#x1F536;): HIP9011 Knock control enable/disable  
(&#x1F534;): Knock control settings  

[Electronic Throttle Body (beta)](rusEFI-project-Controller#electronic-throttle-body-(beta))  
(&#x1F536;): Enable ETB status in console  
(&#x1F536;): Disable ETB drive motor  
(&#x1F536;): H-bridge configuration  
(&#x1F536;): ETB idle settings  
(&#x1F536;): ETB PID settings   
(&#x1F536;): ETB autotune  
(&#x1F536;): TPS auto calibrate  

[Electronic TB Bias Curve](rusEFI-project-Controller#electronic-tb-bias-curve)  
(&#x1F536;): ETB feed forward curve  

[ETB Pedal to TPS](rusEFI-project-Controller#etb-pedal-to-tps)  
(&#x1F536;): 8x8 ETB pedal transfer map  

[Launch Control Settings NOT WORKING](rusEFI-project-Controller#launch-control-settings-not-working)  
(&#x1F534;): Launch control 

[Rolling Launch Settings NOT WORKING](rusEFI-project-Controller#rolling-launch-settings-not-working)  
(&#x1F534;): Rolling launch 

[AntiLag Settings NOT WORKING](rusEFI-project-Controller#antilag-settings-not-working)  
(&#x1F534;): Anti lag  

generated by class com.rusefi.MdGenerator on Fri May 01 15:24:28 EDT 2020
