At the moment rusEFI does NOT have any working ion sense hardware or firmware.

Orchardperformance has some proto hardware he has not yet assembled which might help with signal acquisition. Link TBD.

We like 

*Saab 9-3 COP 2003-on ecotec engine

*Mazda skyactiv COP 2016-on  

*mini r50 coil pack

*BMW M5 v-10 COP  usable for ion sense. M5 coils, Bremi PN/20631   bmw 12 13 7 835 108 

Q: Is Saab/Mazda smart coil unusual in any way?

A: the problem with many smart coils is that you can't apply a voltage/sense current on the primary since it's grounded internally. The mazda/Saab coils have the voltage generation internally. 

The three pins on bmw  are just both sides of the primary, and one side of the secondary (other side on the plug ofc)
Theyre a normal dumb coil
All the magic is in the box
The mazda/Saab coils have the voltage generation internally
They have gnd/12v/trigger/sense
here is no magic in the bmw coil
It's just a transformer
No silicon
In my mazda, they cut the BMW box in half: half is in the coil, half is in the ecu
On Saab, they put half in the coil, and half in the extra module

Background on mazda skyactiv coil on plug  https://www.hexorcism.com/16ND/sh13084/

bmw M5 ionic control module... for reference... we do not use this  --  

AndreiKA latest---
https://rusefi.com/forum/viewtopic.php?p=35035#p35035


Simon latest---  Hooked up the Ion board to the R50 coil, connected the lot to a test MRE and will attempt to run a spark with the ion board connected and check the voltages produced, might try to scope the ion output to see if we get some kind of output.
If I need to I will play a flame over the plug while sparking to have something to pass the ions.