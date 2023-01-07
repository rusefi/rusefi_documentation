# Engine Types

Update 2017: things are much more settled these days, at least 6 months without an incompatible configuration format change.

The best way to configure rusEFI according to your engine setup is via Tuner Studio - there are not many settings there, it should be to some expend self-explanatory. In case of any questions your best chance at the moment is to ask questions on the forum - there are still not enough walk-troughs and articles.

But rusEFI is still in the phase of active development: some parts of the code are still far from final, and new configuration parameters are being added every month. Because of that, the TunerStudio project definition is still pretty volatile. Volatile TunerStudio project definition means your settings could be lost next time you upgrade the firmware, because of that we need a way to keep default configurations for each setup in a more persistent way. This is the reason why we have...

Engine Type concept: we have an array of default configurations for different engines defined [right in the source code](https://github.com/rusefi/rusefi/tree/master/firmware/config/engines). Which of the configurations is used is controlled by 'engine type' field which is persisted in the internal chip flash memory along with the rest of the configuration. So, in order to get your trigger decoding parameters and your fuel & injection control strategies activated, you need to invoke the 'set engine_type X' command as described [here](http://rusefi.com/forum/viewtopic.php?f=5&t=210#p4038).

Ford Aspire Frankenstein default configuration: `set engine_type 3`

Mazda Miata 1994 Frankenso default configuration: `set engine_type 20`

Mazda Miata 1996 Frankenstein default configuration: `set engine_type 21`

Please post on the forum to get your own engine type ID started - I'll take care of the code.

Part of the problem is the fact that Tuner Studio works only one way - once project is created, TS does not read new values from the controller but considers it's copy of the config to have priority.

TODO: we need a better solution.

See also [https://github.com/rusefi/rusefi/issues/93](https://github.com/rusefi/rusefi/issues/93)
