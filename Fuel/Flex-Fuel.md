## Sensor Setup

Connect your sensor to a digital input on the ECU.  Then, pick the pin in TunerStudio at `Sensors -> Misc sensors -> Flex fuel sensor`.

## Fueling Setup

In `Fuel -> Injection Configuration`, configure `Stoichiometric ratio` and `E100 stoichiometric ratio`.  Unless you're doing something very weird, 14.7 and 9.0 are the correct values respectively (pure gas has a stoich ratio of 14.7:1, and pure ethanol 9.0:1).

That's it! The firmware will now automatically vary the fuel's stoichiometric ratio based on ethanol content.

**It's recommended to switch to lambda mode (`File -> Vehicle Projects -> Project Properties -> Settings -> Lambda Display`), as the target lambda table is multiplied by the current stoichiometric ratio to get the target air/fuel ratio.**

## Ignition Timing

Coming soon...

## Boost Control

Coming soon...