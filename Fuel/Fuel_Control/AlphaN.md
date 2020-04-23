TPS-based table fuel lookup with interpolation (Alpha-N)

fuel_squirt_duration = injector_lag_curve_lookup(V_BATT) + warm_up_curve_lookup(COOLANT_TEMPERATURE) * intake_air_correction_curve_lookup(INTAKE_AIR_TEMP) * fuel_table_lookup(RPM, TPS)

where TPS is the reading at the start of engine cycle