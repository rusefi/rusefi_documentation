# Speed Density
Speed Density is probably the most popular algorithm since with knowing MAP calibration, CLT, IAT and TPS and injector flow rate we get a good enough tune without much tuning (tuning would obviously be needed anyway)

fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) * (cylinder_displacement * VE_table_lookup(RPM, MAP) * MAP / GAS_R * charge_temp(COOLANT_TEMPERATURE, INTAKE_AIR_TEMP, TPS)) / target_afr_table_lookup(RPM, MAP) / injector_flow

where

MAP is the average of multiple 10KHz ADC readings within specified camshaft angle range, kPa

VE is intake volumetric efficiency coefficient

GAS_R is gas constant

Speed Density calculation: http://rusefi.com/docs/html/speed__density_8cpp.html

MAP sensor processing: http://rusefi.com/docs/html/map__averaging_8cpp.html

charge_temp is charge temperature heuristic formula: Tcharge = CLT * (1 - Tcharge_coff) + IAT * Tcharge_coff Where Tcharge_coff is interpolated between 0.25 if RPMs are low or throttle is closed to 0.9 if RPMs are high and wide open throttle. See http://rusefi.com/math/t_charge.html