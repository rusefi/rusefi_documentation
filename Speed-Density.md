# Speed Density

Speed density is the most popular fuel control system employed by rusEFI users at present. This is due to its simplicity of tuning and its suitability for turbocharged cars.  
It is due to this widespread use that it is the most well developed fuel control method and is the primary recommendation for fuel control.

## The Details

Speed Density is probably the most popular algorithm since by knowing MAP calibration, CLT, IAT, TPS, and injector flow rate we get a good-enough tune without much difficulty.

`fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) *(cylinder_displacement* VE_table_lookup(RPM, MAP) *MAP / GAS_R* charge_temp(COOLANT_TEMPERATURE, INTAKE_AIR_TEMP, TPS)) / target_afr_table_lookup(RPM, MAP) / injector_flow`

Where:

- MAP is the average of multiple 10KHz ADC readings within a specified camshaft angle range, value in kPa  
- VE is intake volumetric efficiency coefficient  
- GAS_R is the gas constant  

[Speed Density calculation](http://rusefi.com/docs/html/speed__density_8cpp.html)

[MAP sensor processing](http://rusefi.com/docs/html/map__averaging_8cpp.html)

charge_temp (Tcharge) is a charge temperature heuristic formula: `Tcharge = CLT *(1 - Tcharge_coff) + IAT* Tcharge_coff`  
Where Tcharge_coff is interpolated between 0.25 if RPM is low or the throttle is closed to 0.9 if RPM is high and the throttle is wide open. See [http://rusefi.com/math/t_charge.html](http://rusefi.com/math/t_charge.html)

## How To Tune

The speed density strategy in rusEFI shares its basic tuning method with the speed density systems in other aftermarket ECUs.  
If you are familiar with the tuning of another aftermarket ECU then it is likely the tuning of speed density on rusEFI will be very easy to get into.
