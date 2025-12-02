# Vault of BMW Info

This is a repository of a bunch of info relevant to fitting rusEFI to the older (Pre E46/Pre CANBUS) BMWs.

https://www.bimmertuningtools.com/pinouts/

[Proteus M54 Adapter](Proteus-BMW-M54)

## Early Motronic Ti Signal (Fuel Consumption)

[BMW MPG gauge and MS3](https://www.msextra.com/forums/viewtopic.php?f=131&t=59516&start=20)  
[OBC input signal, correcting signal options](https://www.msextra.com/forums/viewtopic.php?f=131&t=53920)  

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

## 55 pin pinouts

## 88 pin Motronic pinouts

[88 pin ECU pinout](https://docs.google.com/spreadsheets/d/1OiEaak7TElKwF-fXWvl9Dk-fD84a0NENe6lOwhXiOe4/)

## See also

BMW 3 Series (E30) 1982–1994

[BMW 5 Series E34](BMW-e34) 1987–1996

[BMW 3 Series E36](BMW-e36) 1990–2000

BMW 7 Series (E38) 1994–2001

[BWM e38](BMW-e38)

[BMW e38 Part Numbers](BMW-e38-Part-Numbers)

[BMW e38 1996 750](BMW-e38-1996-750)

[BMW e38 750](BMW-e38-750)

[HOWTO M73 v12 on Proteus](HOWTO-M73-v12-on-Proteus)

[How To Custom M73 Full Harness](HOWTO-custom-harness-lazyharnezz-M73)

BMW [5 Series E39](BMW-e39)  1995–May 2004

[3 Series E46](BMW-e46) 1997–2006

[BMW X5 E53](BMW-e53) 1999-2006

[7 Series E65](BMW-e65) 2001–2008

[BMW S1000RR](BMW-S1000RR)

[2003 Mini](Mini-Cooper-2003)

[BMW N20](BMW-N20)

[BMW N73](BMW-N73)

## TEVES MK60 Info

The E46 switched from a different ABS partway through production (I think 2003). The earlier units don't work. I believe the M3 devices have programming  that is more suitable for track use, but that the non-M3 are still considered quite good (the differences are pretty qualitative and I haven't seen any  real back to back comparison). Some of the M3 units are also flashable with special race tunes including one that is fully programmable. So short answer  is you CAN use pretty much any Teves Mk60 from E46, but the M3 unit is often preferred. MINI's and some VAG cars of similar years also came with the Teves  
 Mk60 and I believe those can also be used  
There are a subset of MK60 units that can be used for Race ABS applications which requires a bench flash of a map specifically set to your chassis. Any  ZCP/CSL unit can accept the Race ABS programming and any E46 M3 MK60 who's computer number ends in 813.3 can also.
There are e46 m3 units that end with 818.3 which can't be flashed with the race program.
