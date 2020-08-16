# Abbreviations and Terminology 

## This document contains all of the commonly used abbreviations and terminology used by rusEFI

<details><summary><u>AAP</u></summary>

Absolute Atmosphere Pressure
</details>

<details><summary><u>AFR</u></summary>

Air Fuel Ratio - See also Lambda, Stoichiometric 
AFR is the ratio of air to fuel, often expressed as "14.7:1" 
</details>

<details><summary><u>AIT</u></summary>

Air Intake Temperature
</details>

<details><summary><u>Baro</u></summary>

Shorthand for Barometric pressure
</details>

<details><summary><u>BTDC</u></summary>

Before TDC, Before Top Dead Center - See also ATDC 
</details>

BMEP - Brake mean effective pressure  

<details><summary><u>CAS</u></summary>
 
Crank Angle Sensor Also See [CPS](http://en.wikipedia.org/wiki/Crankshaft_position_sensor)
</details>

<details><summary><u>CLT</u></summary>

Coolant Temperature
</details>

CoV - Coefficient of variability  

<details><summary><u>CPS</u></summary>

Crankshaft Position Sensor
</details>

CR - compression ratio  

DI - Direct injection  

DISA - BMW variable inlet manifold resonance system  

<details><summary><u>EDIS</u></summary>

Electronic Distributorless Ignition System - An older Ford ignition system that combined a set of ignition IGBTs and some electronics to assist the ECU. Obsolete on modern ECUs.
</details>

<details><summary><u>EGO</u></summary>

Exhaust Gases Oxygen - see also lambda sensor, WBO2, 
Often used when referring to air fuel sensors like the lambda sensor.  
Sometimes also used as HEGO or Heated Exhaust Gas Oxygen.
</details>

EGR - Exhaust gas recirculation  

EGT - Exhaust gas temperature  

<details><summary><u>EOI</u></summary>

End Of Injection - See also SOI
</details>

ETB - Electronic throttle body  

EVC - Exhaust valve closing  

EVO - Exhaust valve opening   

GDI - Gasoline Direct Injection   

Hall - A type of sensor that requires a power and earth wire in addition to its signal wire, the output is normally a 5v square wave.  

High side - A driver that is open circuit when off and powered to 5v or 12v when on.  

High/Low driver - a pushpull or HighLow is an output that is powered "high" (12v or 5v) and switched to low (earth).  

High and low Z - High and low resistance, used in terms of fuel injectors, normally around 14 ohms for high impedance and ~4 ohms for low.

<details><summary><u>IFR</u></summary>

Injector Flow Rate
</details>

<details><summary><u>IGBT</u></summary>

http://en.wikipedia.org/wiki/Insulated-gate_bipolar_transistor  
A common type of transistor used for switching high power devices like ignition coils with a low power/voltage output. 
</details>

IMEP - Indicated mean effective pressure 
Injector impedance - The resistance of the fuel injectors, see high and low Z   

<details><summary><u>IPW</u></summary>

Injector Pulse Width
</details>

IVC - Intake valve closing  

IVO - Intake valve opening  

Low side - A driver that is open circuit when off and grounded to earth when switched on.  

LQFP - Low profile quad flat package 

<details><summary><u>MAF</u></summary>

Mass Air Flow, often used in the context of air flow or load sensors.
</details>

<details><summary><u>MAP</u></summary>

Manifold Absolute Pressure or perhaps Manifold Air Pressure, often used in the context of load sensors. 
</details>

MBT - Mean best timing, used in context of spark timing, it is the spark timing that results in the best torque  

MFB - Mass fraction burned, often stated with a number after i.e. MFB10/MFB50/MFB90 and refers to the fraction of the fuel burned by mass.  

MRE - Micro rusEFI  

<details><summary><u>NGC</u></summary>

Chrysler Next Generation Controller
</details>

NTC - Negative temperature coefficient, used in context of temperature sensors and refers to the resistance increasing as temperature decreases.  

<details><summary><u>PIP</u></summary>

PFI - Port fuel injection  

PID - A proportional–integral–derivative controller  

PNP - Plug and play  

Primary coil - The primary winding of an ignition coil  

Profile ignition pickup See http://en.wikipedia.org/wiki/Profile_ignition_pickup
</details>

RE - rusEFI  

REO - rusEFI Online  

<details><summary><u>RUSEFI</u></summary>

Really Uber Simple EFI? Robust Ultra Simple EFI? Retarded Unproven Shitty EFI?
</details>

Secondary coil - The secondary winding of an ignition coil.  

<details><summary><u>Sequential</u></summary>

Often this refers to Sequential injection, which means the injectors fire individually for each cylinder and often at a specific crank angle.  
This can be handy for engines direct injection or to try to spray the injector into the cyl while the intake valve is open. If an engine can inject onto an open inlet valve it will reduce the amount of fuel wetting the port walls and help reduce low load emissions.  
Sequential is required for direct injection engines like common rail diesel.
</details>

<details><summary><u>SD</u></summary>

Speed Density this is a method of predicting how much fuel should be delivered to an engine. This is a MAP based system which uses pressure to make a prediction of how much O2 is entering the cyl.
</details>

SI - Spark injection  

Smart coil - A type of ignition coil that has its ignition drivers (IGBT) built into the coil, this means they only receive a 5v signal to activate.  

SMD - Surface mount device, interchangeable with SMT 

SMT - Surface mount technology, interchangeable with SMD  

<details><summary><u>SOI</u></summary>

Start Of Injection - See also EOI  
</details>

<details><summary><u>Staged injection</u></summary>

The use of 2 injectors for one cyl. This commonly means at low RPM and lower loads, one injector is turned on which allows for finer control over idle fuel delivery, while at higher RPM and higher Loads both injector inject fuel which allows for larger amounts of fuel to be delivered.
</details>

Stoichiometric - The ideal quantity of fuel to burn with a quantity of air for complete combustion. For gasoline this is 14.7:1, ethanol is 9:1 and methanol 6.47:1  

SOIC - small outline integrated circuit  

<details><summary><u>TDC</u></summary>

Top Dead Center
</details>

TE - TE connectors, they produce the ampseal connectors on the proteus and a lot of OEM ECUs.  

<details><summary><u>TFI</u></summary>

Thick Film Ignition - Ford distributor - Likely unsupported at this time. 
</details>

TFSI - Turbo Fuel Stratified Injection - A VW direct injection lean burn strategy  

TLE - Short for TLE8888 the Infineon chip on the MRE  

TVIS - Toyota variable intake system, a variable inlet length system that switches on/off a set of longer intake manifold runners.  

Valvetronic - BMW variable valve lift system  

VANOS - BMW variable valve timing system  

VCC - Common Collector Voltage; the positive supply voltage for an integrated circuit  

VDD - the DC Power supply connected to Drain Terminal of any FET circuit.  

<details><summary><u>VE</u></summary>

Volumetric Efficiency, often expressed as a decimal value i.e. 0.8 (for 80%)
</details>

VISA - BMW variable inlet manifold length system  

<details><summary><u>VOL</u></summary>

Short for engine volume
</details>

VSS - Vehicle speed sensor  

VVT - Variable valve timing  

<details><summary><u>WOT</u></summary>

Wide Open Throttle
</details>



