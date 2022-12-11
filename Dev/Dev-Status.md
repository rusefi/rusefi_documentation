WARNING this page is ABANDONED and NOT up to date!!! https://github.com/rusefi/rusefi_documentation/issues/261


# Development Status

This page documents the current development status of rusEFI

The layout here is based on the rusEFI project layout as of 2020/05/31
Links to the overall rusEFI project pages have been retained for ease of quick access to the relevant TS view. 

Colour code meanings:-  
(&#x1F49A;): **_OK to use_** - Working, tested and no ongoing work  
(&#x1F536;): **_Use at own risk_** - Believed working, may have bugs or has ongoing work  
(&#x1F534;): **_Do not use_** - Not working or potential of damage from testing  

---
# Quick links 

[Base Engine](#Base-Engine)  
[Fuel](#Fuel)  
[Ignition](#Ignition)  
[Cranking](#Cranking)  
[Idle](#Idle)  
[Advanced](#Advanced)  
[Sensors](#Sensors)  
[Controller](#Controller)  
[Not yet existing features](#Vaporware)

---

# [Base Engine](rusEFI-project-Base-Engine) 
52% complete (11/21)

[Base Engine Settings](rusEFI-project-Base-Engine#base-engine-settings)  
(&#x1F536;): AlphaN fuel strategy  [**1299**](https://github.com/rusefi/rusefi/issues/1299) [**1455**](https://github.com/rusefi/rusefi/issues/1455)  
(&#x1F49A;): Speed Density fuel strategy  
(&#x1F536;): MAF fuel strategy  [**1299**](https://github.com/rusefi/rusefi/issues/1299)  [**1472**](https://github.com/rusefi/rusefi/issues/1472)  
(&#x1F49A;): Firing orders  
(&#x1F49A;): RPM limit  
(&#x1F49A;): Boost Limit  

[Trigger](rusEFI-project-Base-Engine#trigger)  [**974**](https://github.com/rusefi/rusefi/issues/988)  
(&#x1F49A;): Trigger Patterns  
(&#x1F49A;): VR and Hall support  
(&#x1F536;): Basic VVT support [**607**](https://github.com/rusefi/rusefi/issues/606)  [**707**](https://github.com/rusefi/rusefi/issues/707)  [**844**](https://github.com/rusefi/rusefi/issues/844)  [**883**](https://github.com/rusefi/rusefi/issues/883)  [**1368**](https://github.com/rusefi/rusefi/issues/1368)  

[Battery and Alternator Settings](rusEFI-project-Base-Engine#battery-and-alternator-settings)  
(&#x1F49A;): Vbatt display and logging  
(&#x1F536;): Alternator Control  [**262**](https://github.com/rusefi/rusefi/issues/262)  [**272**](https://github.com/rusefi/rusefi/issues/277)  
(&#x1F536;): Button engine start

[Main relay output](rusEFI-project-Base-Engine#main-relay-output)  
(&#x1F49A;): Main Relay control

[Starter relay output](rusEFI-project-Base-Engine#starter-relay-output)  
(&#x1F49A;): Starter Relay control

[Fuel pump  rail](rusEFI-project-Base-Engine#fuel-pump--rail)  
(&#x1F536;): Fuel Pump control  
(&#x1F49A;): Fuel Priming pulse  
(&#x1F536;): Fuel Rail pressure control (Absolute and MAP referenced)   [**954**](https://github.com/rusefi/rusefi/issues/954)  

[Fan Settings](rusEFI-project-Base-Engine#fan-settings)  
(&#x1F536;): Cooling fan control  [**967**](https://github.com/rusefi/rusefi/issues/967)  

[Tachometer output](rusEFI-project-Base-Engine#tachometer-output)  
(&#x1F536;): Tachometer (Rev counter) output with configurable pulses per revolution  [**476**](https://github.com/rusefi/rusefi/issues/476)  

[Check Engine Settings](rusEFI-project-Base-Engine#check-engine-settings)  
(&#x1F536;): Check engine light (MIL) light  

[Status LEDs](rusEFI-project-Base-Engine#status-leds)  
(&#x1F49A;): Status LED for diagnostic

---

# [Fuel](rusEFI-project-Fuel) 
37.5% complete (9/24)

[Injection settings](rusEFI-project-Fuel#injection-settings)  [**1041**](https://github.com/rusefi/rusefi/issues/1041)  
(&#x1F49A;): Ability to enable/disable injection  
(&#x1F49A;): Batch fuel mode  
(&#x1F49A;): Two wire batch emulation  
(&#x1F49A;): Sequential fuel mode  
(&#x1F49A;): Simultaneous fuel mode  
(&#x1F536;): Single point fuel mode  
(&#x1F49A;): Configurable Injector output pins

[Injector dead time](rusEFI-project-Fuel#injector-dead-time)  
(&#x1F536;): Injection dead time (latency) compensation [**275**](https://github.com/rusefi/rusefi/issues/275)  

[Fuel short-term closed-loop correction](rusEFI-project-Fuel#fuel-short-term-closed-loop-correction)  
(&#x1F536;): Short term fuel trim enable/disable [**384**](https://github.com/rusefi/rusefi/issues/384)  
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
(&#x1F536;): 16x16 VE based Fuel Table with 0.01% resolution [**868**](https://github.com/rusefi/rusefi/issues/868)  
(&#x1F536;): 16x16 Fuel pulse width table [**1299**](https://github.com/rusefi/rusefi/issues/1299)  

[Injection Phase](rusEFI-project-Fuel#injection-phase)  
(&#x1F536;): 16x16 injection timing table for sequential or DI applications  [**868**](https://github.com/rusefi/rusefi/issues/868)  

[Warmup fuel manual Multiplier](rusEFI-project-Fuel#warmup-fuel-manual-multiplier)  
(&#x1F49A;): Warmup fuel compensation  

[Intake air temperature fuel Multiplier](rusEFI-project-Fuel#intake-air-temperature-fuel-multiplier)  
(&#x1F49A;): Intake air temperature fuel compensation  

[tCharge Settings](rusEFI-project-Fuel#tcharge-settings)  
(&#x1F536;): tCharge fuel compensation with 2 modes  
(&#x1F536;): RPM+TPS mode  
(&#x1F536;): Air Interpolation Mode  

[Accel/Decel Enrichment](rusEFI-project-Fuel#accel/decel-enrichment)  
(&#x1F536;): Acceleration enrichment disable upon triggering RPM limit with configurable duration  [**187**](https://github.com/rusefi/rusefi/issues/187)  
(&#x1F536;): TPS based acceleration enrichment  [**320**](https://github.com/rusefi/rusefi/issues/320)  
(&#x1F49A;): Wall Wetting based acceleration enrichment  
(&#x1F536;): Engine Load based acceleration enrichment  [**321**](https://github.com/rusefi/rusefi/issues/321)  

[TPS/TPS Acceleration Extra Fuel(ms)](rusEFI-project-Fuel#tps/tps-acceleration-extra-fuel(ms))  
(&#x1F536;): Configurable table of extra injected fuel on TPS change 

[Engine Load Acceleration Enrichment Taper](rusEFI-project-Fuel#engine-load-acceleration-enrichment-taper)  
(&#x1F536;): Configurable table of Engine load based enrichment taper

---

# [Ignition](rusEFI-project-Ignition) 
61.5% complete (8/13)

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
(&#x1F536;): 16x16 ignition table with 0.01 degree resolution [**868**](https://github.com/rusefi/rusefi/issues/868)  

[Warmup timing correction](rusEFI-project-Ignition#warmup-timing-correction)  
(&#x1F536;): Warmup ignition timing correction  

[Ignition Intake Air Temp correction](rusEFI-project-Ignition#ignition-intake-air-temp-correction)  
(&#x1F536;): 16x16 Intake air temperature ignition correction [**467**](https://github.com/rusefi/rusefi/issues/467)  

---

# [Cranking](rusEFI-project-Cranking) 
87.5% complete (14/16)

[Cranking Settings](rusEFI-project-Cranking#cranking-settings)  [**285**](https://github.com/rusefi/rusefi/issues/285)  [**314**](https://github.com/rusefi/rusefi/issues/314)  
(&#x1F49A;): Configurable cranking speed limit  
(&#x1F49A;): Flood clear  
(&#x1F49A;): Faster engine start mode (a smarter cranking logic)  
(&#x1F49A;): Temperature configurable fuel priming pulse  
(&#x1F49A;): Cranking fuel injection mode selection (Simultaneous, batch or sequential)  
(&#x1F536;): Selectable pulse width source (VE table or fixed pulse)  [**870**](https://github.com/rusefi/rusefi/issues/870)  
(&#x1F49A;): Configurable cranking ignition timing (fixed or table based)  
(&#x1F49A;): Enable/disable ignition corrections  
(&#x1F49A;): Enable/disable fixed coil dwell  
(&#x1F49A;): Configurable IAC position  
(&#x1F49A;): Configurable IAC taper after cranking  
(&#x1F49A;): Enable/disable IAC multipliers during cranking  
(&#x1F49A;): Afterstart enrichment  
 
[Cranking Coolant Temperature Multiplier](rusEFI-project-Cranking#cranking-coolant-temperature-multiplier)  
(&#x1F49A;): Cranking fuel coolant multiplier  

[Cranking Duration Multiplier](rusEFI-project-Cranking#cranking-duration-multiplier)   
(&#x1F49A;): Cranking duration based fuel multiplier  

[Cranking TPS Multiplier](rusEFI-project-Cranking#cranking-tps-multiplier)  
(&#x1F49A;): Cranking TPS based fuel multiplier  

---

# [Idle](rusEFI-project-Idle) 
52.5% complete (10/19)

[Idle settings](rusEFI-project-Idle#idle-settings)   
(&#x1F536;): Open or closed loop idle  [**4**](https://github.com/rusefi/rusefi/issues/4)  [**599**](https://github.com/rusefi/rusefi/issues/599)  [**975**](https://github.com/rusefi/rusefi/issues/975)  [**1263**](https://github.com/rusefi/rusefi/issues/1263)  
(&#x1F534;): Instant RPM measurement for smoother idle  
(&#x1F536;): ETB for idle control  
(&#x1F49A;): Enable/disable idle ignition table  
(&#x1F49A;): Enable/disable idle fuel table  
(&#x1F49A;): Enable/disable IAC table for overrun  
(&#x1F49A;): Idle TPS threshold  
(&#x1F536;): Extra IAC demand above x% throttle at idle  
(&#x1F49A;): Manual IAC position (open loop)  
(&#x1F536;): Idle PID controller  [**501**](https://github.com/rusefi/rusefi/issues/501)  

[Idle hardware](rusEFI-project-Idle#idle-hardware)  
(&#x1F536;): Stepper Idle  [**351**](https://github.com/rusefi/rusefi/issues/351)  [**1088**](https://github.com/rusefi/rusefi/issues/1088)  [**1395**](https://github.com/rusefi/rusefi/issues/1391)  
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

---

# [Advanced](rusEFI-project-Advanced) 
0% complete (0/17)

[Boost Control](rusEFI-project-Advanced#boost-control)  
(&#x1F534;): Boost control enable/disable  [**815**](https://github.com/rusefi/rusefi/issues/815)  [**1153**](https://github.com/rusefi/rusefi/issues/1153)  
(&#x1F534;): Open and closed loop boost control  [**815**](https://github.com/rusefi/rusefi/issues/815)  
(&#x1F534;): Configurable output pin [**815**](https://github.com/rusefi/rusefi/issues/815)  
(&#x1F534;): Configurable PWM frequency  [**815**](https://github.com/rusefi/rusefi/issues/815)  
(&#x1F534;): 8x8 boost target table  [**815**](https://github.com/rusefi/rusefi/issues/815)  

[General Purpose PWM](rusEFI-project-Advanced#general-purpose-pwm-1)  
(&#x1F536;): Configurable GP PWM output pin  [**397**](https://github.com/rusefi/rusefi/issues/397)  
(&#x1F536;): 8x8 target table  
(&#x1F536;): Configurable thresholds  

[FSIO inputs](rusEFI-project-Advanced#fsio-inputs)  
(&#x1F536;): 4 Selectable FSIO inputs [**369**](https://github.com/rusefi/rusefi/issues/369)  

[Aux PID](rusEFI-project-Advanced#aux-pid)  
(&#x1F536;): Enable/disable Auxiliary PID  [**866**](https://github.com/rusefi/rusefi/issues/866)  
(&#x1F536;): Configurable FSIO pins  
(&#x1F536;): Configurable PID PWM frequency  
(&#x1F536;): Configurable PID settings  

[FSIO outputs](rusEFI-project-Advanced#fsio-outputs)  
(&#x1F536;): Massively configurable FSIO outputs  [**111**](https://github.com/rusefi/rusefi/issues/111)  

[FSIO Table](rusEFI-project-Advanced#fsio-table-#1)  
(&#x1F536;): 4x FSIO target tables  [**111**](https://github.com/rusefi/rusefi/issues/111)  

[FSIO Formulas](rusEFI-project-Advanced#fsio-formulas)  
(&#x1F536;): Pre-configured FSIO formulas  [**111**](https://github.com/rusefi/rusefi/issues/111) [**680**](https://github.com/rusefi/rusefi/issues/680)    

[FSIO Curve](rusEFI-project-Advanced#fsio-curve-#1)  
(&#x1F536;): 4x FSIO target curves  [**111**](https://github.com/rusefi/rusefi/issues/111)  

---

# [Sensors](rusEFI-project-Sensors) 
55% complete (32/58)  

[Trigger Inputs](rusEFI-project-Sensors#trigger-inputs)  
(&#x1F49A;): Selectable cam and crank trigger inputs  
(&#x1F49A;): Option to invert the inputs  

[Other Sensor Inputs](rusEFI-project-Sensors#other-sensor-inputs)  
(&#x1F534;): Fuel level input  [**219**](https://github.com/rusefi/rusefi/issues/219)  
(&#x1F536;): Clutch position Switch  
(&#x1F536;): Throttle up switch  
(&#x1F536;): Brake pedal pressure  [**415**](https://github.com/rusefi/rusefi/issues/415)  
(&#x1F536;): A/C active input  

[Analog Input Settings](rusEFI-project-Sensors#analog-input-settings)  
(&#x1F536;): Fixed Baro correction from MAP on startup  [**201**](https://github.com/rusefi/rusefi/issues/201)  
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
(&#x1F536;): Configurable baro sensor pin  [**201**](https://github.com/rusefi/rusefi/issues/201)  
(&#x1F536;): 2 point baro sensor calibration  [**201**](https://github.com/rusefi/rusefi/issues/201)  

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
(&#x1F534;): CJ125 (Bosch wide band controller) enable/disable  [**1460**](https://github.com/rusefi/rusefi/issues/1460)  [**603**](https://github.com/rusefi/rusefi/issues/603)  [**617**](https://github.com/rusefi/rusefi/issues/617)  
(&#x1F534;): LSU4.9 sensor select  [**1460**](https://github.com/rusefi/rusefi/issues/1460)  
(&#x1F534;): CJ125 chip select pin  [**1460**](https://github.com/rusefi/rusefi/issues/1460)  
(&#x1F534;): CJ125 chip select mode  [**1460**](https://github.com/rusefi/rusefi/issues/1460)  
(&#x1F534;): SPI settings  [**1460**](https://github.com/rusefi/rusefi/issues/1460)  [**109**](https://github.com/rusefi/rusefi/issues/1109)  

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
(&#x1F534;): 8x EGT inputs  [**149**](https://github.com/rusefi/rusefi/issues/149)  

---

# [Controller](rusEFI-project-Controller) 
45% complete (24/53)  

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
(&#x1F534;): V12 M73  
(&#x1F536;): ETB bench test  
(&#x1F536;): TLE8888 bench test  
(&#x1F49A;): Reset firmware to default  

[LCD screen](rusEFI-project-Controller#lcd-screen)  
(&#x1F49A;): LCD screen output configuration  

[Joystick](rusEFI-project-Controller#joystick)  
(&#x1F49A;): Discovery brain board joystick configuration  

[SPI settings](rusEFI-project-Controller#spi-settings)  
(&#x1F536;): SPI communication configuration  

[rusEFI Console Settings](rusEFI-project-Controller#rusefi-console-settings)  
(&#x1F49A;): rusEFI console configuration  

[Connection](rusEFI-project-Controller#connection)  
(&#x1F49A;): ADC Vref configuration  
(&#x1F49A;): TunerStudio communication configuration  
(&#x1F49A;): CANBUS communication configuration  
(&#x1F49A;): Aux serial communication configuration  
(&#x1F536;): SD card logging configuration  [**942**](https://github.com/rusefi/rusefi/issues/942)  [**1444**](https://github.com/rusefi/rusefi/issues/1444)  [**1463**](https://github.com/rusefi/rusefi/issues/1463)  
(&#x1F534;): GPS module communication configuration  [**21**](https://github.com/rusefi/rusefi/issues/21)  

[TLE8888](rusEFI-project-Controller#tle8888)  
(&#x1F536;): TLE8888 configuration  [**1426**](https://github.com/rusefi/rusefi/issues/1426)  

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
Saab CDM Knock pin config  [**647**](https://github.com/rusefi/rusefi/issues/647)  
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
(&#x1F536;): Enable/disable multi spark  [**327**](https://github.com/rusefi/rusefi/issues/327)  
(&#x1F536;): Multi spark config  

[GDI Dreams](rusEFI-project-Controller#gdi-dreams)  
(&#x1F534;): MC33816_cs GDI config  [**784**](https://github.com/rusefi/rusefi/issues/784)  [**1448**](https://github.com/rusefi/rusefi/issues/1448)  [**1450**](https://github.com/rusefi/rusefi/issues/1450)  

[HIP9011 Settings (knock decoder)](rusEFI-project-Controller#hip9011-settings-(knock-decoder))  
(&#x1F534;): HIP9011 Knock control enable/disable  [**35**](https://github.com/rusefi/rusefi/issues/35)  [**603**](https://github.com/rusefi/rusefi/issues/603)  
(&#x1F534;): Knock control settings  [**202**](https://github.com/rusefi/rusefi/issues/202)  

[Electronic Throttle Body (beta)](rusEFI-project-Controller#electronic-throttle-body-(beta))  
(&#x1F536;): Enable ETB status in console [**494**](https://github.com/rusefi/rusefi/issues/494)  [**1336**](https://github.com/rusefi/rusefi/issues/1336)  
(&#x1F536;): Disable ETB drive motor  
(&#x1F536;): H-bridge configuration  
(&#x1F536;): ETB idle settings  
(&#x1F536;): ETB PID settings   
(&#x1F536;): ETB autotune  
(&#x1F536;): TPS auto calibrate  

[Electronic TB Bias Curve](rusEFI-project-Controller#electronic-tb-bias-curve)  
(&#x1F536;): ETB feed forward curve  [**842**](https://github.com/rusefi/rusefi/issues/842)  

[ETB Pedal to TPS](rusEFI-project-Controller#etb-pedal-to-tps)  
(&#x1F536;): 8x8 ETB pedal transfer map  

[Launch Control Settings NOT WORKING](rusEFI-project-Controller#launch-control-settings-not-working)  
(&#x1F534;): Launch control [**203**](https://github.com/rusefi/rusefi/issues/203)  

[Rolling Launch Settings NOT WORKING](rusEFI-project-Controller#rolling-launch-settings-not-working)  
(&#x1F534;): Rolling launch [**203**](https://github.com/rusefi/rusefi/issues/203)  

[AntiLag Settings NOT WORKING](rusEFI-project-Controller#antilag-settings-not-working)  
(&#x1F534;): Anti lag  

---

# Vaporware
Everything in this section is implied to be non functional as they are all upcoming features with little or no implementation in the code yet.  
The title is a little developer joke, see [here](https://en.wikipedia.org/wiki/List_of_vaporware)

(&#x1F534;): GDI [Tickets held with the GDI settings](null)  
(&#x1F534;): Infinite variable VVT  [Tickets held with the simple VVT entry](null)  
(&#x1F534;): Auto tune injector dead times  [**492**](https://github.com/rusefi/rusefi/issues/492)  
(&#x1F534;): Trigger pattern auto detect  [**418**](https://github.com/rusefi/rusefi/issues/418)  
(&#x1F534;): Flex fuel sensor  [**540**](https://github.com/rusefi/rusefi/issues/540)  
(&#x1F534;): Multiple crank pattern sync [**679**](https://github.com/rusefi/rusefi/issues/679)  
(&#x1F534;): Per cylinder fuel trim [**342**](https://github.com/rusefi/rusefi/issues/342)  
(&#x1F534;): Per cylinder fuel trim [**342**](https://github.com/rusefi/rusefi/issues/342)  
(&#x1F534;): Fuel consumption [**45**](https://github.com/rusefi/rusefi/issues/45)  
(&#x1F534;): Per injector performance correction [**95**](https://github.com/rusefi/rusefi/issues/95)  
(&#x1F534;): Instant crank speed [**135**](https://github.com/rusefi/rusefi/issues/135)  [**343**](https://github.com/rusefi/rusefi/issues/343)  [**329**](https://github.com/rusefi/rusefi/issues/329)  [**936**](https://github.com/rusefi/rusefi/issues/936)  
(&#x1F534;): Configurable hard cut RPM limit [**192**](https://github.com/rusefi/rusefi/issues/192)  
(&#x1F534;): Idle switch style TPS support [**209**](https://github.com/rusefi/rusefi/issues/209)  
(&#x1F534;): On ECU autotune [**247**](https://github.com/rusefi/rusefi/issues/247)  
(&#x1F534;): Dual fuel maps [**289**](https://github.com/rusefi/rusefi/issues/289)  
(&#x1F534;): Built in Timing Light [**297**](https://github.com/rusefi/rusefi/issues/297)  
(&#x1F534;): Fan control RPM limit [**310**](https://github.com/rusefi/rusefi/issues/310)  
(&#x1F534;): Closed loop fueling [**357**](https://github.com/rusefi/rusefi/issues/355)  [**384**](https://github.com/rusefi/rusefi/issues/369)  
(&#x1F534;): Trigger pattern auto detect [**418**](https://github.com/rusefi/rusefi/issues/418)  
(&#x1F534;): Variable RPM limit based on CLT [**455**](https://github.com/rusefi/rusefi/issues/455)  
(&#x1F534;): Limp mode [**468**](https://github.com/rusefi/rusefi/issues/468)  
(&#x1F534;): Yaw rate sensor support [**613**](https://github.com/rusefi/rusefi/issues/613)  [**932**](https://github.com/rusefi/rusefi/issues/932)  
(&#x1F534;): Race capture integration [**1163**](https://github.com/rusefi/rusefi/issues/1163)  
(&#x1F534;): Transmission control [**1454**](https://github.com/rusefi/rusefi/issues/1454)  
(&#x1F534;):
