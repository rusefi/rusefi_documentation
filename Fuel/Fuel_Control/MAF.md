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
To do this we to have a "load" value that allows us to have a Load Vs Speed fuel table. 

    StandardAirCharge = engine displacement / number of cylinders * 1.2929 

This produces the air mass for cylinder filling at 100% VE under standard SAE conditions. 
Using this we can relate our cylinder air mass back to a standardised 100% cylinder filling and this we have a "load" value to use when tuning. 

    airChargeLoad = 100 * cylinder Airmass / Standard AirCharge

The required fuel is now simply corrected by adjusting the measured air by the value in the VE table, this value is simply a %.

    corrected Cylinder Airmass = cylinder Airmass * (VE map value / 100)

	fuelMassGram = corrected Cylinder Airmass / desired AFR

    pulse Width = fuelMass / injector flow (in g/s)

Using this method rusEFI is able to directly measure the air flow into an engine and calculate the required fuel with minimal tuning. 

# MAF fuel tuning - The quick version

To tune rusEFI using the MAF is probably the quickest and easiest method provided you have a working MAF sensor and the correct information to input in the Transfer Function Table. 



# Obsolete information below

MAF-based table fuel lookup with interpolation

fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) * intake_air_correction_curve_lookup(INTAKE_AIR_TEMP) * fuel_table_lookup(RPM, MAF)

where MAF is the reading at the start of engine cycle

[//]: # "Comment"
