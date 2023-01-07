# Fuel injector info

## Fuel injectors

As of May 2020, only saturated (high impedance, >8 ohms) port injectors are supported.  
All hardware variants are built around the concept of one ECU pin controlling one fuel injector.  The use of multiple injectors on one ECU output must be very carefully evaluated to avoid overloading drivers.  One injector may also be used for all cylinders("single point").  A pair of injectors can be wired together and fired simultaneously, as in 4 pairs of injectors on a V8.  It's possible but not intuitive to configure two banks of multiple cylinders of injectors alternating fire.  It is recommended to use one injector per cylinder.  As of May 2020, staged injection with multiple injectors per cylinder is possible in hardware but the software is not yet ready.  

You do **not** need to wire injectors in a particular way.  Cylinder #1 (as numbered by the manufacturer) does not need to be wired to injector #1 on the ECU pinout.  Likewise, the 3rd (for example) injector in the firing order does **not** need to be wired to INJ#3 on the ECU.  Order of firing / phasing can be adjusted in software.  Any injector driver output can be used to drive any injector.

Bottom line: as long as the hardware variant has at least as many injector outputs as your engine has cylinders, you will be able to run one injector per cylinder.

Info to be updated soon.
