# Vault of BMW Info 

This is a repository of a bunch of info relevant to fitting rusEFI to the older (Pre E46/Pre CANBUS) BMWs.

## Early Motronic Ti Signal (Fuel Consumption)

https://www.msextra.com/forums/viewtopic.php?f=131&t=59516&start=20  
https://www.msextra.com/forums/viewtopic.php?f=131&t=53920  

Load Signal (Ti):  
is produced by the ECM as an output function that represents the actual amount of fuel injected.  
It is made available to other control modules as an input for operation.  

These control modules include:  
* OBC=Fuel consumption for MPG and Range.  
* Instrument Cluster = MPG Gauge  
* EGS = Load signal for shift points (If Equipped)  

The Ti output is a processed square wave signal.  
The frequency of the signal is proportional to engine RPM.  
The pulse width and duty cycle will vary to reflect the injection quantity  

It looks like it is a 12v signal as some have managed to get it working with it wired to inj1 running sequential mode on an MS.
12:53
Which also implies it is a 12v lowside to run it

you could actually run it with general purpose pwm pretty easily  

## 88 pin Motronic pinouts 

https://docs.google.com/spreadsheets/d/1OiEaak7TElKwF-fXWvl9Dk-fD84a0NENe6lOwhXiOe4/edit?usp=sharing



