rusEfi is a GPL open source engine control unit for gasoline port injected internal combustion engines.

In order to use rusEfi you would need to acquire or fabricate one of the [supported boards](Hardware). You can also design you custom board if desired.

You can use rusEfi PC simulator to try rusEfi. PC simulator Windows binaries are included into [rusEfi Bundle](Download), Unix version of PC simulator could be compiled from [source code](https://github.com/rusefi/rusefi/tree/master/simulator).


rusEfi has following features
1. batch and individual injection on 1, 2, 3, 4, 5, 6, 8 and 12 cylinder gasoline engines.

2. wasted and sequential ignition on the abovementioned engines.

3. [Acceleration enrichment - wall wetting/fuel trip/tau factor.](wall_wetting)



As of April 2020 rusEfi does not have following features:
1. rusEfi was never used on diesel engines

2. rusEfi has no support for direct injection

3. even with FSIO, rusEfi has never controlled an automatic transmission
 