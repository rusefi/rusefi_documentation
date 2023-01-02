## Sensor and Wiring

The following Sensors are known to work

GM part numbers

13577379 - SENSOR (short tube)

13577394 - SENSOR (long tube)

13352241 - HARNESS

The Pinout is shown below

![](https://i.imgur.com/RGOmlZq.png)

## Sensor Setup

Connect your sensor to a digital input on the ECU. Then, pick the pin in TunerStudio at `Sensors -> Misc sensors -> Flex fuel sensor`.

(technical details - we expect a pull-up on the ECU, about 3K, somewhere 1K to 5K)

![](https://i.imgur.com/a3NWAhn.png)

## Fueling Setup

In `Fuel -> Injection Configuration`, configure `Stoichiometric ratio` and `E100 stoichiometric ratio`.  Unless you're doing something very weird, 14.7 and 9.0 are the correct values respectively (pure gas has a stoich ratio of 14.7:1, and pure ethanol 9.0:1).

That's it! The firmware will now automatically vary the fuel's stoichiometric ratio based on ethanol content.

**It's recommended to switch to lambda mode (`File -> Vehicle Projects -> Project Properties -> Settings -> Lambda Display`), as the target lambda table is multiplied by the current stoichiometric ratio to get the target air/fuel ratio.**

![](https://i.imgur.com/mRKFNjT.png)

## Ignition Timing

Coming soon...

## Boost Control

Coming soon...
