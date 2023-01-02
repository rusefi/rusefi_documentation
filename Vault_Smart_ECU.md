# Collected Limp Mode info  

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

# Control methods and logic

### Malfunction light behavior  

One of the most critical things in terms of driver feedback is making the error warnings as clear as possible. In a critical engine protection situation the last thing you want is the driver not being sure what he needs to do.  
Because of this the EML light should have 2 stages:  

1. Solid on light - meaning there is an issue and reducing speed/demand/aggression is advised but there is no need to immediately stop driving.  
2. Flashing light - Lift off immediately and check error.  

### Knock Intervention  

Current status - Knock sensors work, we have reliable logging of signals, we have some level of noise threshold working, we have know windowing working, we have auto calculation of the second harmonic?  

Knock mitigation - few ways to do this:  

1. Retard timing to reduce rate of pressure rise, requires:  
Value for max total retard allowed,  value for retard per knock event, strategy to re-advance one or two degrees per no-knock cycle.
Should probably be done as soon as knock is detected above the noise threshold.  

2. Enrich mixture. Works by cooling the cylinder and reducing the chance of being lean.  
Should be done in the event that initial spark intervention is not enough to stop knock by the retard limit.  
Should also be the first action if AFR is below target when knock is detected. Suggest this setting an enrichment of 0.1 lambda.  
This should probably activate and stay on for x number of engine cycles.  
Requires:

3. MAP pressure reduction.
2 ways to do this, either close ETB or open wastegate (or both).  
Should be designed to be user configurable as to the level of intervention and which method to take.  
Requires: max allowed pressure reduction by ETB, toggle option for etb, toggle option for wastegate, maybe a max pwm duty cycle increase for wastegate.  
Should remain on until driver lifts throttle to prevent surging. Should be the next action after the enrichment if knock still present.  

4. Use water meth.  
In cases where vehicle has water meth injection then this should be activated in addition to the initial spark retard.  
In a situation where EGT results are available and the engine is near EGT limit then this should take preference to retarding spark.  
I.e. above user defined EGT spark max retard is reduced to user defined level and meth is activated as soon as knock is detected.  
Requires: flag "has water meth", user defined EGT limit, maybe water meth pin assignment, user defined water meth pwm? Trigger water meth from gpio table?  

5. Extreme case cut fuel and ignition for x cycles to reduce the in cylinder temperatures before re-enabling as a last ditch to keep auto ignition down.  

EML severity: no action until the need to reduce boost, at which point flash light.  

### Overboost protection  

This one is more easy, take similar action to knock stages 3 and 4.  
EML severity: Solid on for light as boost reduction will take care of it, if after x cycles boost still high then flash light.  

### High coolant temperature  

Intended to help prevent mishaps with overstretched cooling systems.  
Use knock stage 2 and 3, if 4 available then activating has benefit to reduce in cylinder temps.  
If EWP then also demand increased or MAX pump duty cycle for x time (1 min).  
If electric fan then enable fan until temp is restored.  
Requires: user defined maximum coolant temperature, boost cut and enrichment optional.  
EML severity: solid on for light while temp is over set limit.  

### High EGT  

Where vehicle has EGT sensing allow user to set a preferred EGT limit and max exceed value.  
If EGT limit is reached light eml and enrich. If EGT max exceed value is breached flash EML.  
As we schedule events individually we could cut the cylinder that was detected to be high, this would require killing the injector for just that cylinder or for the batch.  

### Low fuel pressure or max injector duty cycle  

Main thing to avoid here is leanout, fuel pressure compensation is going to deal with a lot of the problem as the pressure drop but at some point it will reach the max injector duty cycle.  
Possible ways to mitigate this are to limit RPM, limit boost and/or limit pedal to achieve the previous.  

### ETB deviation error  

Implies a loss or lack of accurate control of the ETB, this should probably be considered a serious error resulting in a flashing EML.  

### Fatal errors  

As these are "fatal" we should likely treat them as such and perform a controlled shutdown.  
In this case it would be to deactivate injection and ignition and close ETB.  
This MUST only be the case for truly fatal errors where the consequences of keeping the engine running are worse than leaving someone with a total loss of power (even if it is done in a controlled fashion), again this is a case where a flashing EML is needed.  

### Load sensor failure  

Loss of primary load sensor (MAP, TPS or MAF) is currently a problem that will leave the engine inoperable.

###
