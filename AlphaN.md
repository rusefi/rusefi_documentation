# AlphaN fueling

AlphaN is a method of fueling that uses the angle of the TPS (Alpha) and the RPM of the engine (N) to determine how much fuel should be injected.

It is a very simple method that simply uses the Alpha as the Y axis and N as the X axis of the fuel table.

This method is most commonly used on pure race cars that are willing to sacrifice an amount of drivability for simplicity, or on installations where there is a great difficulty reading for a MAP or MAF sensor.
An example of this would be ITBs.

It is not suggested that this method is used with rusEFI as we have implemented very good windowing and smoothing of MAP sensor signals, which allows for the speed density method to be used reliably on systems where it would not traditionally function well.  
However we are aware that there are many users that would still prefer to use this method so it has been provided.

# The detail

fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) *intake_air_correction_curve_lookup(INTAKE_AIR_TEMP)* fuel_table_lookup(RPM, TPS)

Where TPS is the reading at the start of engine cycle

# How to tune

The AlphaN system in rusEFI can be tuned in the same way as all other standalone ECUs, it is simply a case of inputting the required fuel values in the main fuel table.

It is planned that a future update will modify this table to be a VE table in a similar way to several other aftermarket systems. This will be done for simplicity of use.

[//]: # "OrchardPerformance"
