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

<details><summary><u>BMEP</u></summary>

 Brake mean effective pressure  
</details>  

<details><summary><u>CAS</u></summary>
 
Crank Angle Sensor Also See [CPS - Wikipedia]](http://en.wikipedia.org/wiki/Crankshaft_position_sensor)
</details>

<details><summary><u>CLT</u></summary>

Coolant Temperature
</details>

<details><summary><u>CoV</u></summary>

Coefficient of variability  
</details>

<details><summary><u>CPS</u></summary>

Crankshaft Position Sensor
</details>

<details><summary><u>CR</u></summary>

compression ratio  
</details>

<details><summary><u>DI</u></summary>

Direct injection  
</details>

<details><summary><u>DISA</u></summary>

BMW variable inlet manifold resonance system  
</details>


<details><summary><u>EDIS</u></summary>

Electronic Distributorless Ignition System - An older Ford ignition system that combined a set of ignition IGBTs and some electronics to assist the ECU. Obsolete on modern ECUs.
</details>

<details><summary><u>EGO</u></summary>

Exhaust Gases Oxygen - see also lambda sensor, WBO2, 
Often used when referring to air fuel sensors like the lambda sensor.  
Sometimes also used as HEGO or Heated Exhaust Gas Oxygen.
</details>

<details><summary><u>EGR</u></summary>

Exhaust gas recirculation  
</details>

<details><summary><u>EGT</u></summary>

Exhaust gas temperature  
</details>

<details><summary><u>EOI</u></summary>

End Of Injection - See also SOI
</details>

<details><summary><u>ETB</u></summary>

Electronic throttle body  
</details>

<details><summary><u>EVC</u></summary>

Exhaust valve closing  
</details>

<details><summary><u>EVO</u></summary>

Exhaust valve opening   
</details>

<details><summary><u>GDI</u></summary>

Gasoline Direct Injection   
</details>

<details><summary><u>Hall</u></summary>

A type of sensor that requires a power and earth wire in addition to its signal wire, the output is normally a 5v square wave.  
</details>

<details><summary><u>High Side</u></summary>

A driver that is open circuit when off and powered to 5v or 12v when on.  
</details>

<details><summary><u>High/Low</u></summary>

a pushpull or HighLow is an output that is powered "high" (12v or 5v) and switched to low (earth).  
</details>

<details><summary><u>High and Low Z</u></summary>

High and low resistance, used in terms of fuel injectors, normally around 14 ohms for high impedance and ~4 ohms for low.
</details>


<details><summary><u>IAT</u></summary>

Intake Air Temperature
</details>

<details><summary><u>IFR</u></summary>

Injector Flow Rate
</details>

<details><summary><u>IGBT</u></summary>

[IGBT - Wikipedia]](http://en.wikipedia.org/wiki/Insulated-gate_bipolar_transistor)  
A common type of transistor used for switching high power devices like ignition coils with a low power/voltage output. 
</details>

<details><summary><u>IMEP</u></summary>

Indicated mean effective pressure 
</details>

<details><summary><u>Injector Impedance</u></summary>

The resistance of the fuel injectors, see high and low Z   
</details>

<details><summary><u>IPW</u></summary>

Injector Pulse Width
</details>

<details><summary><u>IVC</u></summary>

Intake valve closing  
</details>

<details><summary><u>IVO</u></summary>

Intake valve opening  
</details>

<details><summary><u>Low side</u></summary>

A driver that is open circuit when off and grounded to earth when switched on.  
</details>

<details><summary><u>LQFP</u></summary>

Low profile quad flat package 
</details>

<details><summary><u>MAF</u></summary>

Mass Air Flow, often used in the context of air flow or load sensors.
</details>

<details><summary><u>MAP</u></summary>

Manifold Absolute Pressure or perhaps Manifold Air Pressure, often used in the context of load sensors. 
</details>

<details><summary><u>MBT</u></summary>

Mean best timing, used in context of spark timing, it is the spark timing that results in the best torque  
</details>

<details><summary><u>MFB</u></summary>

Mass fraction burned, often stated with a number after i.e. MFB10/MFB50/MFB90 and refers to the fraction of the fuel burned by mass.  
</details>

<details><summary><u>MRE</u></summary>

Micro rusEFI  
</details>

<details><summary><u>NGC</u></summary>

Chrysler Next Generation Controller
</details>

<details><summary><u>NTC</u></summary>

Negative temperature coefficient, used in context of temperature sensors and refers to the resistance increasing as temperature decreases.  
</details>

<details><summary><u>PIP</u></summary>

Profile ignition pickup See [Profile Ignition Pickup - Wikipedia]](http://en.wikipedia.org/wiki/Profile_ignition_pickup)
</details>

<details><summary><u>PFI</u></summary>

Port fuel injection  
</details>

<details><summary><u>PID</u></summary>

A proportional–integral–derivative controller  
</details>

<details><summary><u>PNP</u></summary>

Plug and play  
</details>

<details><summary><u>PPS</u></summary>

Pedal Position Sensor
</details>


<details><summary><u>Primary Coil</u></summary>

The primary winding of an ignition coil  
</details>

<details><summary><u>RE</u></summary>

rusEFI  
</details>

<details><summary><u>REO</u></summary>

rusEFI Online  
</details>

<details><summary><u>RUSEFI</u></summary>

Really Uber Simple EFI? Robust Ultra Simple EFI? Retarded Unproven Shitty EFI?
</details>

<details><summary><u>Secondary Coil</u></summary>

The secondary winding of an ignition coil.  
</details>

<details><summary><u>Sequential</u></summary>

Often this refers to Sequential injection, which means the injectors fire individually for each cylinder and often at a specific crank angle.  
This can be handy for engines direct injection or to try to spray the injector into the cyl while the intake valve is open. If an engine can inject onto an open inlet valve it will reduce the amount of fuel wetting the port walls and help reduce low load emissions.  
Sequential is required for direct injection engines like common rail diesel.
</details>

<details><summary><u>SD</u></summary>

Speed Density this is a method of predicting how much fuel should be delivered to an engine. This is a MAP based system which uses pressure to make a prediction of how much O2 is entering the cyl.
</details>

<details><summary><u>SI</u></summary>

Spark injection  
</details>

<details><summary><u>Smart Coil</u></summary>

A type of ignition coil that has its ignition drivers (IGBT) built into the coil, this means they only receive a 5v signal to activate.  
</details>

<details><summary><u>SMD</u></summary>

Surface mount device, interchangeable with SMT 
</details>

<details><summary><u>SMT</u></summary>

Surface mount technology, interchangeable with SMD  
</details>

<details><summary><u>SOI</u></summary>

Start Of Injection - See also EOI  
</details>

<details><summary><u>Staged injection</u></summary>

The use of 2 injectors for one cyl. This commonly means at low RPM and lower loads, one injector is turned on which allows for finer control over idle fuel delivery, while at higher RPM and higher Loads both injector inject fuel which allows for larger amounts of fuel to be delivered.
</details>

<details><summary><u>Stoichiometric</u></summary>

The ideal quantity of fuel to burn with a quantity of air for complete combustion. For gasoline this is 14.7:1, ethanol is 9:1 and methanol 6.47:1
</details>

<details><summary><u>SOIC</u></summary>

small outline integrated circuit  
</details>

<details><summary><u>TDC</u></summary>

Top Dead Center
</details>

<details><summary><u>TPS</u></summary>

Throttle Position Sensor
</details>

<details><summary><u>TE</u></summary>

TE connectors, they produce the ampseal connectors on the proteus and a lot of OEM ECUs.  
</details>

<details><summary><u>TFI</u></summary>

Thick Film Ignition - Ford distributor - Likely unsupported at this time. 
</details>

<details><summary><u>TFSI</u></summary>

Turbo Fuel Stratified Injection - A VW direct injection lean burn strategy  
</details>

<details><summary><u>TLE</u></summary>

Short for TLE8888 the Infineon chip on the MRE  
</details>

<details><summary><u>TVIS</u></summary>

Toyota variable intake system, a variable inlet length system that switches on/off a set of longer intake manifold runners.  
</details>

<details><summary><u>Valvetronic</u></summary>

BMW variable valve lift system  
</details>

<details><summary><u>VANOS</u></summary>

BMW variable valve timing system  
</details>

<details><summary><u>VCC</u></summary>

Common Collector Voltage; the positive supply voltage for an integrated circuit  
</details>

<details><summary><u>VDD</u></summary>

the DC Power supply connected to Drain Terminal of any FET circuit.  
</details>

<details><summary><u>VE</u></summary>

Volumetric Efficiency, often expressed as a decimal value i.e. 0.8 (for 80%)
</details>

<details><summary><u>VISA</u></summary>

BMW variable inlet manifold length system  
</details>

<details><summary><u>VOL</u></summary>

Short for engine volume
</details>

<details><summary><u>VSS</u></summary>

Vehicle speed sensor  
</details>

<details><summary><u>VVT</u></summary>

Variable valve timing  
</details>

<details><summary><u>WOT</u></summary>

Wide Open Throttle
</details>



