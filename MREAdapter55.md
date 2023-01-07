# 55 pin microRusEFI Adapter

Looking for a motivated beta tester.

[Forum thread](https://rusefi.com/forum/viewtopic.php?f=4&t=1668)

## E30 fitment notes  

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
pin 39 normally programming signal, best left floating not connected to high side output for risk of killing other modules.
pin 40 and pin 42 - not sure what is going on here but this will need work  
pin 43 tacho out but is actually used for AFM/MAF on euro motronics (vauxhall or M30 engine)  
pin 46 left floating on E30 or jumpered to use as relay or fan output  
pin 47 programming voltage, this is crank -ve on E30  
pin 48 crank -v is crank -ve on E30  
pin 49 crank +ve is unused on E30  
pin 50 EGR position is input from ABS for traction intervention, this should be ok as both are signal inputs  
pin 50 power steering request is kickdown on auto E30, might be ok as both are signal inputs  
pin 52 is throttle closed on E30, should work with AN input  
pin 53 is WOT tps signal on E30, should be ok.  

- Note on pin 52/53, early motronic is a 3 position TPS not variable, standard is to convert to a M52 TPS, we could do this conversion on the board as they are a compatible plug  
pin 54 fuel rate output is auto trans lockup on E30, might work if both need lowsides.  
