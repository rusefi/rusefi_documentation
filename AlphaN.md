# AlphaN Fueling

AlphaN is a method of fueling that uses the angle of the TPS (Alpha) and the RPM of the engine (N) to determine how much fuel should be injected.

It is a very simple method that simply uses the Alpha as the Y axis and N as the X axis of the VE table.

This method is most commonly used on pure race cars that are willing to sacrifice some drivability for simplicity, or on installations where there is great difficulty reading a MAP or MAF sensor.
An example of this would be ITBs.

Using this method with rusEFI is not recommended as we have implemented very good windowing and smoothing of MAP sensor signals, which allows for the speed density method to be used reliably on systems where it would not traditionally function well.  
However we are aware that there are many users that would still prefer to use this method so it has been provided.

## The Details

`fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) *intake_air_correction_curve_lookup(INTAKE_AIR_TEMP)* fuel_table_lookup(RPM, TPS)`

Where TPS is the reading at the start of the engine cycle

## How to Tune

The AlphaN system in rusEFI can be tuned in the same way as Speed Density.
