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

## Setting it up

1. **Select the algorithm.** Set the fuel algorithm (`fuelAlgorithm`) to Speed Density. The firmware describes this mode as using "intake manifold pressure (MAP) and intake air temperature (IAT) to calculate air density and fuel requirements."
2. **Calibrate the MAP sensor.** Speed density depends entirely on an accurate MAP reading, so make sure your MAP sensor is configured and reading correctly.
3. **Tune the VE table.** The volumetric efficiency (VE) table — indexed by RPM and load (MAP), a 16×16 table — is the main table you tune. Building an accurate VE table is what makes speed density work well; a fully registered copy of TunerStudio can auto-tune it (see [Fuel Overview](Fuel-Overview)).

### Other algorithms

If speed density does not suit your engine, rusEFI offers alternatives selected by the same `fuelAlgorithm` setting:

- [AlphaN](AlphaN) — throttle-position based, for individual throttle bodies or engines without a reliable MAP signal.
- [Mass Air Flow](MAF) — uses a MAF sensor to measure incoming air directly.

## How To Tune

The speed density strategy in rusEFI shares its basic tuning method with the speed density systems in other aftermarket ECUs.  
If you are familiar with the tuning of another aftermarket ECU then it is likely the tuning of speed density on rusEFI will be very easy to get into.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `fuelAlgorithm` (`engine_load_mode_e`: Speed Density / Alpha-N / MAF Air Charge / Lua). The fuel/VE table is 16×16 (`FUEL_RPM_COUNT` × `FUEL_LOAD_COUNT`).
