# Vault of Smart ECU Info

## Collected Limp Mode Info

List of threads with existing limp info:  

[https://github.com/rusefi/rusefi/issues/2244](https://github.com/rusefi/rusefi/issues/2244) - Limp mode affecting the unit tests  
[https://github.com/rusefi/rusefi/issues/932](https://github.com/rusefi/rusefi/issues/932) - Limp mode for MAP failure  
[https://github.com/rusefi/rusefi/issues/2125](https://github.com/rusefi/rusefi/issues/2125) - Fail second ETB when other is down  
[https://github.com/rusefi/rusefi/issues/2258](https://github.com/rusefi/rusefi/issues/2258) - Time since boot should be included in main relay logic  
[https://github.com/rusefi/rusefi/issues/2073](https://github.com/rusefi/rusefi/issues/2073) - Try to check which trigger wheel the signal is coming from to allow limp from second trigger  
[https://github.com/rusefi/rusefi/issues/2058](https://github.com/rusefi/rusefi/issues/2058) - better handling of FSIO fails  
[https://github.com/rusefi/rusefi/issues/1604](https://github.com/rusefi/rusefi/issues/1604) - Allow negative values for the TPS  
[https://github.com/rusefi/rusefi/issues/1535](https://github.com/rusefi/rusefi/issues/1535) - Rev limit with ETB  
[https://github.com/rusefi/rusefi/issues/1444](https://github.com/rusefi/rusefi/issues/1444) - Use pin input to trigger a log  
[https://github.com/rusefi/rusefi/issues/1236](https://github.com/rusefi/rusefi/issues/1236) - ETB feedback logic  
[https://github.com/rusefi/rusefi/issues/987](https://github.com/rusefi/rusefi/issues/987) - Better handling of unexpected trigger shape  
[https://github.com/rusefi/rusefi/issues/936](https://github.com/rusefi/rusefi/issues/936) - Misfire detection  
[https://github.com/rusefi/rusefi/issues/932](https://github.com/rusefi/rusefi/issues/932) - Fail safe mode/limp mode for MAP failure  
[https://github.com/rusefi/rusefi/issues/680](https://github.com/rusefi/rusefi/issues/680) - Document TS FSIO formulas  
[https://github.com/rusefi/rusefi/issues/468](https://github.com/rusefi/rusefi/issues/468) - TPS vs MAP error detection logic  
[https://github.com/rusefi/rusefi/issues/455](https://github.com/rusefi/rusefi/issues/455) - RPM hard limit depending on CLT  
[https://github.com/rusefi/rusefi/issues/202](https://github.com/rusefi/rusefi/issues/202) - Knock reaction  
[https://github.com/rusefi/rusefi/issues/95](https://github.com/rusefi/rusefi/issues/95) - per-injector performance correction  

[https://rusefi.com/forum/viewtopic.php?f=5&t=1952&p=40009](https://rusefi.com/forum/viewtopic.php?f=5&t=1952&p=40009) - Fw. improvement - PANIC BUTTON  
[https://rusefi.com/forum/viewtopic.php?f=5&t=1900&p=39412](https://rusefi.com/forum/viewtopic.php?f=5&t=1900&p=39412) - Limp Home and Engine Protection  
[https://rusefi.com/forum/viewtopic.php?f=5&t=1469&p=39327](https://rusefi.com/forum/viewtopic.php?f=5&t=1469&p=39327) - Software knock processing  

## Control Methods and Logic

### Malfunction Light Behavior

One of the most critical things in terms of driver feedback is making the error warnings as clear as possible. In a critical engine protection situation the last thing you want is the driver not being sure what he needs to do.  
Because of this, the EML light should have 2 stages:  

1. Solid on light - meaning there is an issue and reducing speed/demand/aggression is advised but there is no need to immediately stop driving.  
2. Flashing light - Lift off immediately and check the error.  

### Knock Intervention

Currently timing retard and mixture enrichment are implemented; see [Knock Sensing](knock-sensing).

1. Timing Retard  
    Retarding the ignition timing reduces the rate of pressure rise.
Configuration values:

    - Agressiveness
    - Re-apply rate (degrees per second)
    - Maximum retard

2. Mixture Enrichment  
    Works by cooling the cylinder and reducing the chance of being lean.  
    Configuration values:

    - Agressiveness
    - Re-apply rate (degrees per second)
    - Maximum fuel trim (percent)

3. MAP Reduction  
    This can be achieved by closing the ETB, opening the wastegate, or both at the same time.  
    Should be designed to be user configurable as to the level of intervention and which method to take.  
    Configuration values:

    - Maximum allowed pressure reduction by ETB
    - Toggle option for etb
    - Toggle option for wastegate
    - Maybe a maximum PWM duty cycle increase for the wastegate

    Should remain on until the driver lifts the throttle to prevent surging. Should be the next action after the enrichment if knock is still present.  

4. Water Methanol Injection  
    In cases where the vehicle has water methanol injection, this should be activated in addition to the initial spark retard.  
    In a situation where EGT results are available and the engine is near the EGT limit, this should take preference to retarding spark.  
    That is, above user defined EGT, spark max retard is reduced to a user defined level and meth injection is activated as soon as knock is detected.  
    Configuration values:

    - "Has water meth" toggle
    - EGT limit
    - Water meth pump pin assignment
    - Water meth pump PWM curve

5. Ignition and Fuel Cut  
    In the extreme case, cut fuel and ignition for x cycles to reduce the in-cylinder temperatures before re-enabling as a last ditch to keep auto-ignition down.  

EML severity: no action until the need to reduce boost, at which point flash light.  

### Overboost Protection

This one is easier - take similar action to knock stages 3 and 4.  
EML severity: Illuminate continuously while active; if boost reduction does not take care of it after some number of cycles, flash.

### High Coolant Temperature

This is intended to help prevent mishaps with overstrained cooling systems.  
Use knock stage 2 and 3; if 4 is available, activating it will help reduce in-cylinder temps.  
If an EWP is present, also demand increased or maximum pump duty cycle for some amount of time.  
If an electric fan is present, run the fan at full speed until temp is restored.  
Configuration values:

- Maximum coolant temperature
- Boost cut and enrichment option

EML severity: Illuminate continuously while the temperature is over the limit.

### High EGT

If the vehicle has EGT sensing, allow the user to set a preferred EGT limit and a maximum limit.  
If EGT limit is reached, illuminate the EML and enrich. If the EGT maximum limit is exceeded, flash the EML.  
As we schedule events individually we, could cut the cylinder that was detected to be high; this would require killing the injector for just that cylinder or for the batch.  

### Low fuel pressure or max injector duty cycle

The main thing to avoid here is excessively a lean mixture. Fuel pressure compensation is going to deal with a lot of the problem as the pressure drops, but at some point it will reach the max injector duty cycle.  
Possible ways to mitigate this are to limit RPM, limit boost, and/or limit throttle.  

### ETB deviation error

Implies a loss or lack of accurate control of the ETB, this should probably be considered a serious error resulting in a flashing EML.  

### Fatal errors

As these are "fatal", we should likely treat them as such and perform a controlled shutdown.  
In this case it would be to deactivate injection and ignition and close the ETB.  
This MUST only be the case for truly fatal errors where the consequences of keeping the engine running are worse than leaving someone with a total loss of power (even if it is done in a controlled fashion); again this is a case where a flashing EML is needed.  

### Load sensor failure

Loss of primary load sensor (MAP, TPS or MAF) is currently a problem that will leave the engine inoperable.
