# Default Vehicle Tune

Current global default tune available at https://github.com/rusefi/rusefi/blob/master/simulator/generated/simulator_tune.msq

## Two way street

Problem: reference custom tunes have a birthday somewhere in the past. We keep adding features with defaults for those features, we keep improving global default. While useful custom values go into canned vehicle defaults, at the same time reference tune should take reasonable defaults from current defaults.

For example ``primingDelay = 0.5`` global default was added, https://github.com/rusefi/rusefi/blob/master/simulator/generated/canned-tunes/COUPE-BK1-comparing-against-current-COUPE-BK1-default.md reports override but really it's just COUPE-BK1 reference tune was created before that default. It's recommended to manually pick reasonable new global defaults.

## Internal implementation details

See ``[CannedTunes]`` tag in all below mentioned files.

``simulator\Makefile`` makes sure simulator has all needed compilation guards.

rusEfiFunctionalTest.cpp exports tunes as .bin files

WriteSimulatorConfiguration.java exports tunes as .xml
