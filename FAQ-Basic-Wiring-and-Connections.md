# FAQ: Basic Wiring and Connections

## Intro

This page contains information about how to hook up to rusEFI hardware, in general. It's not intended to be a guide to a specific hardware variant - rather, how to figure out what you're going to need to run the different kinds of hardware you'd find in an engine bay.

**WARNING: The exact implementation of these pins is hardware specific!!!**
You should always consult the documentation on your particular hardware. The information here is presented for "planning" purposes only - to help you figure out which of the hardware variants will suit the sensors and solenoids present on your engine.

## Fuel injectors

As of May 2020, only saturated (high impedance, >8 ohms) port injectors are supported. All hardware variants are built around the concept of one ECU pin controlling one fuel injector. The use of multiple injectors on one ECU output must be very carefully evaluated to avoid overloading drivers. One injector may also be used for all cylinders ("single point"). A pair of injectors can be wired together and fired simultaneously, as in 4 pairs of injectors on a V8. It's possible but not intuitive to configure two banks of multiple cylinders of injectors alternating fire. It is recommended to use one injector per cylinder. As of May 2020, staged injection with multiple injectors per cylinder is possible in hardware but the software is not yet ready.

You do **not** need to wire injectors in a particular way. Cylinder #1 (as numbered by the manufacturer) does not need to be wired to injector #1 on the ECU pinout. Likewise, the 3rd (for example) injector in the firing order does **not** need to be wired to INJ#3 on the ECU. Order of firing / phasing can be adjusted in software. Any injector driver output can be used to drive any injector.

Bottom line: as long as the hardware variant has at least as many injector outputs as your engine has cylinders, you will be able to run one injector per cylinder.

## Coils

As of May 2020, most hardware variants support only logic level drive for coils. This means GM LSx, IGN1A, Denso coil stick, etc. (others may too - these are just examples) that have built in ignitors will work. You should consult the documentation for both the coils and the rusEFI hardware you are using to determine whether you can directly wire the coils or an external ignitor/something else is required. Note: coil outputs are among the **least** robust (in terms of tolerating shorts, excessive voltages, etc.) on many hardware variants, including Proteus. Double check your wiring! uaEFI supports IGBT expansion for dumb coils, kindly read the manual of uaefi for more information.

Like injectors, all coil outputs are interchangeable. Coil outputs do not need to be used sequentially and order of firing / phasing can be adjusted in software. Waste fire (one coil fires two cylinders) and distributor (one coil mechanically multiplexed among all cylinders) modes are supported in addition to coil-per-cylinder direct fire. Rare "dual distributor" mode is also supported for engines like older BMW V12 and Toyota 1UZ.
Bottom line: as long as the hardware variant has at least as many coil outputs as your engine has cylinders, you will be able to run one coil per cylinder.

## General purpose outputs

The two main types of output are "low side" and "high side."
Low side outputs are used to control things in the engine bay that have one terminal permanently connected to battery voltage. The ECU supplies the ground side of the circuit to turn things on.
High side outputs are used to control things in the engine bay that have one terminal permanently connected to ground. The ECU supplies battery voltage to the circuit to turn things on.
All general purpose outputs are available for conditional on/off control via basic conditions. (insert more details here)

All general purpose outputs can be used by the software-PWM system. The software PWM system can provide approximately 1% duty steps at up to 1Khz. (10uS steps, 1ms cycle) Software PWM can operate at different speeds for different outputs - there is a lot of flexibility. (link to more information) please note the max AMPs for your specific ECU outputs!

## Specific Outputs

### Idle Motor control

Logic exists in the firmware to use several types of idle control valves to regulate idle.

PWM valves (generally 2 wire) accept a variable duty-cycle square wave to control their position. Any general-purpose output hardware that can handle the electrical load can be configured to control a PWM-style idle valve. Dedicated pins do not need to be allocated for these style valves. Honda, Nissan, Mitsubishi, Subaru, Ford valves are commonly this type.

Bipolar stepper motors (generally 4 wire) have two coils that are energized in different patterns in order to move the valve open or closed, one step at a time. Bipolar stepper motors require **two H-Bridges** (Proteus) to control one bipolar stepper idle valve. Alternatively, a dedicated stepper driver IC can be used(Prometheus?) or added via a drop-in adapter board. GM, Toyota commonly use these.

[Jeep idle stepper motor - Video](https://youtu.be/z0rFOkAbKDQ) [Stepper motor idle - Video](https://youtu.be/SYNUcmNIgPo)

Unipolar stepper valves are not supported by any hardware variants at this time. (May 2020) Chrysler commonly used these.

### Drive by Wire support

Logic exists in the firmware to control a drive by wire throttle body, including using it to idle. A single H-bridge is required to control a single DBW throttle body. Multiple DBW throttle bodies can be simultaneously controlled as long as sufficient H-bridge drivers exist to control them. A drive by wire pedal (Accelerator Pedal Position / APP) is generally used to provide input from the driver. Want to know more? here is a [guide](Electronic-Throttle-Body-Configuration-Guide) you should read.

### Main Relay support ("ECM RELAY")

The Main relay is a secondary power switch usually used to power INJECTORS/IGNITION/IDLE VALVES components that use 12v+ and comes on After ACC signals
Most hardware variants are set up to provide control over a main relay or auto-shutdown relay. The rusEFI ECU typically has two power feeds. Key-on power is supplied to the ECU in order to power the CPU and logic core of the ECU. High side drivers, H Bridges and other power switches are then powered by a "main relay" that is energized under the control of the ECU. Battery / continuous power is not required for setting retention.

some older car models have the main "EFI" or "ECU Relay" or "ECCS" as Nissan calls it those are the usual Terminology used to describe it
Usually works in this order

<img width="917" alt="Screen Shot 2024-05-27 at 10 57 45 PM" src="https://github.com/EA11R/rusefi_documentation/assets/82368250/86e7b9b2-c13c-483c-baff-a6c2fe077368">

Technically Speaking while wiring ur new RusEFI ECU Unit you should see if your car starts the relay VIA "ECU PIN" from ur oem unit
or switched Externally VIA Ignition Key Switch

(**IF**) your car is "IGNITION SWITCH OPERATED RELAY" (NO ECM CONTROL) link VIGN and 12V(Switched B+ from ur old ecu wire) inputs together for BATT voltage to display correctly

<img width="561" alt="Screen Shot 2024-05-27 at 1 27 46 AM" src="https://github.com/EA11R/rusefi_documentation/assets/82368250/6c4891b7-fcf6-4978-8fe2-e06fe1ee0c98">

and the regular switched power Relay is refered as "12v+" "B+" in diagrams when connecting refrence power to ECU it's prefered to USE "RELAY 12V OUT" for Voltage Reading ("VIGN") in your case it's usually the only power Input pin in the ECU so it's your Voltage Refrence Signal(relay) and your 12V+ power to ECU

so a quick way to explain all of this is

Switch goes (ON) Position > EFI RELAY ON > ECU Gets power and EFI components in the same time

Relay Should tick even when ur ECU is out!

(**HOWEVER**) if your car is switched by a ECM pin take a free "LS" low side output and replace ur old relay operation signal with it
feedback VIGN with power returning from MAIN RELAY They're usually labeled in manuals as "ECU POWER" "ECU 12V"

<img width="631" alt="Screen Shot 2024-05-27 at 1 35 14 AM" src="https://github.com/EA11R/rusefi_documentation/assets/82368250/1e83bf27-a440-41db-8186-6b0367cbd5e0">

as you can see in the ECCS example pin 16 here should be RusEFI lowside
and pin 49 should be your relay power IN (VIGN)

so a quick way to explain all of this is

Switch goes (ON) Position > ECU Gets power > ECU sends a ground Signal to EFI Relay > you get powers to EFI components!

## Specific Function Inputs

Engine position (crank, cam) are specific inputs required. Hall Effect (square wave / magnetic or optical) and Variable Reluctance (VR / inductive) sensors are supported.

### VR(Reluctance) is typically 2 wire and has this type of waveform

<img width="306" alt="Screen Shot 2024-05-27 at 11 05 02 PM" src="https://github.com/EA11R/rusefi_documentation/assets/82368250/9d82b48b-54bb-4207-9160-485ea3346552">

those Should go to your RusEFI VR+, VR-
Some ECU Brands Call them "NE+" "NE-" it's practically the same deal

### HALL EFFECT SENSOR
they have a Square shaped wave and typically a 3 wire system
powered by Either 5v or 12v power and ground and has a signal as a third pin

<img width="270" alt="Screen Shot 2024-05-27 at 11 08 32 PM" src="https://github.com/EA11R/rusefi_documentation/assets/82368250/46e6a5a2-526e-42a6-9b7d-27da88775580">

### OPTICAL SENSORS
Typically Found in Nissans and they have a 360deg wheel as secondary trigger and small slits in the number of cylinders
wiring is very simple on those typically: (Trigger Second, Trigger Main, 12v+, GND)
they're powered by 12v and output 5V Signals

As of 2024 May 27 RusEFI doesn't Support Nissan 360 Trigger
I suggest getting an aftermarket trigger wheel ("Optical DISC") If you plan on installation on a nissan
Some hardware variants have a provision for knock sensors.

In regards of Knock Sensor quality of Signal I suggest a shielded cable (2 core)
KNOCK goes to (KNOCK_IN_RAW) signal IN
Shield and GND of sensor Goes to Sensor GND
it's prefered to do it this way to get the best performance of your ECU input and sensor.

## General Sensor Inputs

The two basic kinds of general-purpose inputs are categorized as "digital" and "analog" inputs. Digital inputs only measure an "on" or "off" condition. Analog inputs measure a signal voltage with some degree of precision.

Digital inputs need to have a pull resistor in order to ensure they do not pick up interference and trigger falsely. Most (double check your hardware!) digital inputs are configured with a pull-up resistor. Switches "turn on" the input by connecting it to a ground signal. When the switch is open, the pull-up resistor ensures that the hardware can see the difference. Most hardware implementations have basic protection circuitry to allow inputs to see battery voltage without damage. (double check your hardware!) Most switches in an engine bay such as power steering pressure, AC pressure, brake pressure switch, many PRNDL switches on automatic transmission shifters, oil "idiot" pressure, diagnostic enable, etc. are wired so that the other end connects to ground. This makes digital inputs ideal for monitoring most on-off type switches.

As of May 2020, analog inputs are broken into two basic categories:

1. "Thermistor" inputs have an internal pull up to 5V (varies according to hardware: 2.7k on proteus) to make connecting to sensors like coolant temp and air temperature easier. When using a thermistor input, one terminal of the sensor is connected to the ECU and the "other" end of your sensor should be connected to sensor ground. Note: many "single wire" thermistors used for coolant temperature have metal threads which make contact with the cylinder head/block, providing the "other" terminal without a wire.
2. "Analog Voltage" inputs have a **weak** pull-down to sensor ground (varies according to hardware: 500k on proteus) and are intended for things like MAP or TPS sensors that drive a voltage. On most hardware implementations (double check your hardware!), these inputs are also protected against excessive voltage. The combination of an internal pull-down resistor and built-in protection means that analog inputs can safely double as "active high" inputs, where battery voltage indicates that a switch is high.
