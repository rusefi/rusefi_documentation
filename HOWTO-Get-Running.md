# Summary

So you either have hardware under way, or are considering getting rusEFI hardware. This manual is intended for those that are using purchased hardware. If you are not, don't worry, we also encourage DIY and like hearing back from those that have. We also encourage people to use the purchased boards as a starting point for a DIY effort, feel free to modify the board we'll likely make suggestions on how to make your effort better.

# Hardware requirements

## Plan the engine

The engine will need wires that connect to various sensors and devices. You will need crimp tools, soldering tools, and certain electrical and mechanical skills. 

We suggest that before you purchase hardware, that you create a plan with a schematic. Even if the schematic is on a napkin, I suggest you take picture of it with your phone or scan it in and get feedback from members in the forum. We can help steer you to a successful build. 

### Start ordering components

Once you have a plan, you can start making a bill of materials. You'll likely be purchasing harnesses, wires, connectors, and all sorts of things. You may have to do junk yard runs to get certain hard to obtain items, ect. If you have your rough schematic at arms length, it will really help you know what you need and when you'll need it. 

### Assembling components

We should offer some notes about crimps, how to verify a good crimp, things like that. 

[Frankenso](Hardware_Frankenso)

[Frankenstein](Hardware_Frankenstein)

## Preparing your engine

### Physically locating the controller

Place some place that is away from hot items like the exhaust. Mount on a piece of steal that can function as a heat sink. Preferably in a dry well ventilated location, were the wires can be easily routed to and from.

### Route the wires and harnesses

* It is recommended you route your wires in two different groups, analog and digital/high power. This helps ensure good signals make it to and from the ECU.

* Wire size and fusing go together. The fuse is used to protect the wire against electrical fire. So the wire you can use depends largely on the upstream fuse you select. High-Z injectors are going to draw about 1A, so you can technically get by with tiny stuff like 24AWG or 22AWG. However that is generally not very strong and is prone to breaking and failure. So you would be well advised to follow the NFPA79's suggestion to use a min of 18AWG, as smaller is easily mechanically damaged. In terms of electrical sizing this is very much over sized, which is only suggested to get more rugged mechanical properties. 

* You should always reference the MFG's specifications for the wire you are using, as different insulation's have different properties. Some wire is rated for 30A in 18AWG wire, but that is some really special wire which is rated for such conditions. See this general suggestion for general fusing.
  * 18AWG, no larger than a 15A fuse 
  * 20AWG, no larger than a 10A fuse 
  * 22AWG, no larger than a 7A fuse
  * 24AWG, no larger than a 3A fuse 
 Those fuse sizes are based on this table for chassis wiring. http://www.powerstream.com/Wire_Size.htm

* When selecting a fuse, you can use the below guide to help. Generally you choose the fuse and wire based on what the load needs. If your load is 1A capable, you need wire and fusing that can provide at least 1A. However you don't want too large of a wire as it adds costs, or the wire size might be to large for certain connectors, etc. 

http://www.littelfuse.com/~/media/automotive/catalogs/littelfuse_fuseology.pdf

* Take note there is a fatigue issue known as I2t (That's amps squared time) which is a common reason for failures after several cycles. 

* If you want to properly select a fuse, you really need a scope with a current measurement probe, then choose the I2t with the suggested method in the PDF. If you do not have such a scope, make sure to have extra fuses on hand just in case it blows a fuse some time down the road. 

* For Frankenso it can typically use a typical automotive blade style fuse. From page 9 of the Frankenso schematic it suggests to use a 1.5A fuse. However that was for the one mounted on the PCB, which generally has a small wire installed. The below 2A would work for an external fuse. 

http://www.littelfuse.com/~/media/automotive/datasheets/fuses/passenger-car-and-commercial-vehicle/blade-fuses/littelfuse_mini_datasheet.pdf

### Testing the wiring

Once connected you should test the wires. Especially the power wires like coil wires and injector wires. A poor connection with a slight resistance like .1 ohms can cause an electrical fire, which I'm sure you do not want. Once everything is connected measure both the voltage drop and current from the ECU connector, or where ever is applicably appropriate. Using your voltage and current readings, calculate the ohms, if it's above about .1 ohms fix the issue. Take note that .1 ohms at 1A is about .1watt that that connection will have to dissipate. If you have a 12 cyl, and 12 .1 ohm connections, the connector will have to dissipate 1.2 watts. 

## Diagnostics and trouble shooting of your engine

### Basic tests

List basic tests here, like is LED on, are jumpers installed correctly if applicable, find hot components and do basic visual checks for burn things and such.

### Test equipment tests

List tests that can be done with O-Scopes, multimeters, scan tools, and other such options for diagnosing a problem. 

### Get help from a local

We provide much more info than most OEM options. If you are stuck, you may be able to get help from a local mechanic or someone local. Try asking for help in the forums there may be a member or a club meeting that's near by. It's common you can find local people who are willing to help. 

### On board hardware diagnostics

Don't have a scope, no problem, the IO board has basic scope built inside. You can connect pin blah to nearly any point on the board and you can measure a variety of points synchronized with the logging software. 
