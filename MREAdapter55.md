
Looking for a motivated beta tester.

[Forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1668)


# E30 fitment notes  

pin fixes needed:-  
Pin 6 is marked as fan but is a lowside output, this will work fine for tacho as it is a 12v grounded.  
pin 9 speed sensor needs jumping to pin 29 with the stepper input disabled/left floating.  
pin 15 lambda sensor heat is just a lowside to turn on relay, this should work for CEL   
pin 17 EGR valve is another lowside, this can work with the injectors just fine.  
pin 20 left floating as single coil on E30  
pin 21 left floating as no stepper on E30  
pin 22 is check lamp but icv on E30, should be fine as both are lowsides.   
pin 23 is injectors but lambda heater on e30, should be fine as both are lowsides.  
pin 25 air con relay left floating or jumped to pin 40/41 as appropriate  
pin 26 is a problem, MAF on stepper output - don't know solution at present.  
pin 29 is a problem, VSS input on stepper output - don't know solution at present.  
pin 33 is reserved for a high current output but is cam signal on all others - don't know solution at present.  
pin 32 is extra low side, this should work for fuel rate base on Matt and my checking of fuel rate outputs  
pin 33 left floating or jumped to pin 23  
pin 34 left floating as no inj4 on E30  
pin 35 left floating as no inj3 on E30  
pin 36 is variable intake on January but main relay on E30, might work if both are lowsides?  
pin 38 high side output, no idea if this is correct for transmission output.  
