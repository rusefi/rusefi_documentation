# Collected Limp Mode info  

List of threads with existing limp info:  

https://github.com/rusefi/rusefi/issues/2244 - Limp mode affecting the unit tests  
https://github.com/rusefi/rusefi/issues/932 - Limp mode for MAP failure  
https://github.com/rusefi/rusefi/issues/2125 - Fail second ETB when other is down  
https://github.com/rusefi/rusefi/issues/2258 - Time since boot should be included in main relay logic  
https://github.com/rusefi/rusefi/issues/2073 - Try to check which trigger wheel the signal is coming from to allow limp from second trigger  
https://github.com/rusefi/rusefi/issues/2058 - better handling of FSIO fails  
https://github.com/rusefi/rusefi/issues/1604 - Allow negative values for the TPS  
https://github.com/rusefi/rusefi/issues/1535 - Rev limit with ETB  
https://github.com/rusefi/rusefi/issues/1444 - Use pin input to trigger a log  
https://github.com/rusefi/rusefi/issues/1236 - ETB feedback logic  
https://github.com/rusefi/rusefi/issues/987 - Better handling of unexpected trigger shape  
https://github.com/rusefi/rusefi/issues/936 - Misfire detection  
https://github.com/rusefi/rusefi/issues/932 - Fail safe mode/limp mode for MAP failure  
https://github.com/rusefi/rusefi/issues/680 - Document TS FSIO formulas  
https://github.com/rusefi/rusefi/issues/468 - TPS vs MAP error detection logic  
https://github.com/rusefi/rusefi/issues/455 - RPM hard limit depending on CLT  
https://github.com/rusefi/rusefi/issues/202 - Knock reaction  
https://github.com/rusefi/rusefi/issues/95 - per-injector performance correction  

https://rusefi.com/forum/viewtopic.php?f=5&t=1952&p=40009 - Fw. improvement - PANIC BUTTON  
https://rusefi.com/forum/viewtopic.php?f=5&t=1900&p=39412 - Limp Home and Engine Protection  
https://rusefi.com/forum/viewtopic.php?f=5&t=1469&p=39327 - Software knock processing  


# Control methods and logic:   
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


