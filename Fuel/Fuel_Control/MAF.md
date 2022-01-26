# MAF

# Current Status 
The MAF based fueling of rusEFI is still undergoing development, the current status has the fueling functioning correctly but presents a few tuning challenges due to TunerStudio integration and the Spark Table still being reliant on the old engine load math. 

This is an evolving situation at present and thus MAF fueling is still considered experimental.  
**Please only use for development work at your own risk.** 

# MAF fuel theory - The detail
The implementation of the MAF in rusEFI is intended to replicate the functionality of OEM systems and as such is more complex than some other systems. 

The foundation of the MAF system is the Mass Air Flow sensor itself, this is a device using a hot wire, hot film or vane to directly measure the flow of air into the engine. 
Obviously this sensor does not give out an airflow value, it gives us a voltage, current or PWM signal that represents the flow. rusEFI can interpret a voltage or current MAF at this time via a transfer function table. 

[//]: # "Insert the MAF transfer function screen shot"

The Transfer function table is used to convert the raw MAF sensor reading into a Kg/h (Kilogram Per Hour) airflow. 

This Kg/h value is then processed into a required fuel quantity by the following calculations:

    g/s = Kg/h * 1000 / 3600

	n/s = rpm / 60

	airPerRevolution = g/s / n/s 

	cylinder Airmass = airPerRevolution / half Cylinder number

In rusEFI we use a correction factor table to modify this measured air mass to allow correction of any errors in the measurement due to dynamic air flow effects. 
To do this we need to have a "load" value that allows us to have a Load Vs Speed fuel table. 

    StandardAirCharge = engine displacement / number of cylinders * 1.2929 

This produces the air mass for cylinder filling at 100% VE under standard SAE conditions. 
Using this we can relate our cylinder air mass back to a standardised 100% cylinder filling and thus we have a "load" value to use when tuning. 

    airChargeLoad = 100 * cylinder Airmass / Standard AirCharge

The required fuel is now simply corrected by adjusting the measured air by the value in the VE table, this value is simply a %.

    corrected Cylinder Airmass = cylinder Airmass * (VE map value / 100)

	fuelMassGram = corrected Cylinder Airmass / desired AFR

    pulse Width = fuelMass / injector flow (in g/s)

Using this method rusEFI is able to directly measure the air flow into an engine and calculate the required fuel with minimal tuning. 

# MAF fuel tuning - The quick version

To tune rusEFI using the MAF is probably the quickest and easiest method provided you have a working MAF sensor and the correct information to input in the Transfer Function Table. 

The first thing to do is input the voltage (or current) to Kg/h information into the Transfer Function Table in tuner studio.

Secondly you will need to decide what Air/Fuel ratio you would like your engine to run at and input this into the AFR table in tuner studio. 
For a first start a value of 14 is perfectly acceptable for gasoline. 
This table is the primary source of the desired fuel mixture, it will be this table that is tuned to decide the engines target AFR. 
A future update will make this fueling table dynamic so that an input % of ethanol in the main fueling dialog will change the fuel density and thus the required fuel mass injected. The result of this will be that users can leave this table tuned as though it were for pure gasoline (14.7:1 stoiciometric) and the % ethanol input will make sure the fuelling stays at the same Lambda value. 
This has the advantage of working well with aftermarket wideband controllers that generally work in AFR using pure gasoline as the standard. 

[//]: # "Add AFR table picture"

Before starting the engine for the first time it is wise to ensure the Fuel Table is filled with values of "100", a value of 100 means that the fuel calculation uses 100% of its measured air mass to decide on the fuel injection pulse.  
Tuning this table will adjust for dynamic airflow effects that happen in the inlet of an engine and will allow small (or large but hopefully not) corrections to the fuel injection which may be required to have the engine meet it's desired air/fuel target.  
This table should only be tuned if the engine is not meeting the desired air/fuel target under relatively steady state conditions (i.e. without any acceleration enrichment or overrun fuel cut).
If a different air/fuel ratio is desired at a specific load or RPM then the AFR Table is the correct table to adjust instead. 

[//]: # "Add VE table picture"

Some useful MAF sensor maths in [this link](https://www.efunda.com/designstandards/sensors/hot_wires/hot_wires_theory.cfm)

[//]: # "OrchardPerformance" 
