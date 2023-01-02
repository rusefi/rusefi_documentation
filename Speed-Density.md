# Speed Density

Speed density is the most popular fuel control system employed but rusEFI users are present. This is due to its simplicity of tuning and it's suitability for turbocharged cars.  
It is due to this widespread use that it is the most well developed fuel control method and is the primary recommendation for fuel control at present (27/4/2020).

# The detail

Speed Density is probably the most popular algorithm since with knowing MAP calibration, CLT, IAT and TPS and injector flow rate we get a good enough tune without much difficulty.

fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) *(cylinder_displacement* VE_table_lookup(RPM, MAP) *MAP / GAS_R* charge_temp(COOLANT_TEMPERATURE, INTAKE_AIR_TEMP, TPS)) / target_afr_table_lookup(RPM, MAP) / injector_flow

where:
MAP is the average of multiple 10KHz ADC readings within specified camshaft angle range, value in kPa  
VE is intake volumetric efficiency coefficient  
GAS_R is gas constant  

[Speed Density calculation](http://rusefi.com/docs/html/speed__density_8cpp.html)

[MAP sensor processing](http://rusefi.com/docs/html/map__averaging_8cpp.html)

charge_temp is charge temperature heuristic formula: Tcharge = CLT *(1 - Tcharge_coff) + IAT* Tcharge_coff Where Tcharge_coff is interpolated between 0.25 if RPMs are low or throttle is closed to 0.9 if RPMs are high and wide open throttle. See [http://rusefi.com/math/t_charge.html](http://rusefi.com/math/t_charge.html)

[//]: # "aware this needs more detail or cleaning up, hoping it will hold for now, happy for someone to add to the detail"

# How to tune

The Speed density strategy in rusEFI shares its basic tuning method with all other speed density systems in other aftermarket ECUs.  
If you are familiar with the tuning of another aftermarket ECU then it is likely the tuning of speed density on rusEFI will be very easy to get into.

[//]: # "OrchardPerformance"
