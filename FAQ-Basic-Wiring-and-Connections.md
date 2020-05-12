# Intro

This page is going to have information about how to hook up to rusEFI hardware, in general.  It's not intended to be a guide to a specific hardware variant but rather how to figure out what you're going to need to run different kinds of hardware you'd find in an engine bay.  ***WARNING: The exact implementation of these pins is hardware specific!!!**  You should always consult the documentation on your particular hardware.  Information here is presented for "planning" purposes only - to help you figure out which of the hardware variants will suit the sensors and solenoids present on your engine.

## Fuel injectors

As of May 2020, only saturated port injectors are supported.  All hardware variants support more than one fuel injector.  You do **not** need to wire injectors in a particular way.  Cylinder #1 (as numbered by the manufacturer) does not need to be wired to injector #1.  Likewise, the 3rd (for example) injector in the firing order does **not** need to be wired to Injector #3.  Any injector driver output can be used to drive any injector.  Order of firing / phasing can be adjusted in software.

## Coils

As of May 2020, logic level coils are the most common implementation on hardware variants.  You should consult the documentation for the hardware you are using to determine whether the coils you have are compatible / external ignitor is required.  Like injectors, all coil outputs are equal.  Coil outputs do not need to be used sequentially and order of firing / phasing can be adjusted in software

## General purpose outputs

The two main types of output are "low side" and "high side."

Low side outputs are used to control things in the engine bay that have one terminal permanently connected to battery voltage.  The ECU supplies the ground side of the circuit to turn things on.

High side outputs are used to control things in the engine bay that have one terminal permanently connected to ground.  The ECU supplies battery voltage to the circuit to turn things on.

## Specific Outputs

Most hardware variants are set up to provide control over a main relay or auto-shutdown relay.  The rusEFI ECU has a permanent connection to the battery.  The primary power for the ECU is supplied by a relay that is energized under the control of the ECU.

## Specific Inputs

Engine position (crank, cam) are specific inputs required.  Hall Effect (square wave / magnetic or optical) and Variable Reluctance (VR / inductive) sensors are supported.

## Sensor Inputs

The two basic kinds of general-purpose inputs are categorized as "digital" and "analog" inputs.  Digital inputs only measure an "on" or "off" condition.  Analog inputs measure a signal voltage with some degree of precision.  

Digital inputs need to have a pull resistor in order to ensure they do not pick up interference and trigger falsely.  Most (double check your hardware!) digital inputs are configured with a pull-up resistor.  Switches "turn on" the input by connecting it to a ground signal.  When the switch is open, the pull-up resistor ensures that the hardware can see the difference.  Most hardware implementations have basic protection circuitry to allow inputs to see battery voltage without damage. (double check your hardware!) Most switches in an engine bay such as power steering pressure, AC pressure, brake pressure switch, many PRNDL switches on automatic transmission shifters, oil "idiot" pressure, diagnostic enable, etc. are wired so that the other end connects to ground. This makes digital inputs ideal for monitoring most on-off type switches.

As of May 2020, analog inputs are broken into two basic categories:
1. "Thermistor" inputs have an internal pull up to 5V (varies according to hardware: 2.7k on proteus) to make connecting to sensors like coolant temp and air temperature easier.  When using a thermistor input, the "other" end of your sensor should be connected to sensor ground.
1. "Analog Voltage" inputs have a **weak** pull-down to sensor ground (varies according to hardware: 500k on proteus) and are intended for things like MAP or TPS sensors that drive a voltage.  On most hardware implementations(double check your hardware!), these inputs are also protected against excessive voltage.  The combination of an internal pull-down resistor and built-in protection means that analog inputs can safely double as "active high" inputs, where battery voltage indicates that a switch is high.