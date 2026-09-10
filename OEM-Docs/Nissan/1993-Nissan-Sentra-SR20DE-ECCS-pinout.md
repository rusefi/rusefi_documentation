# 1993 Nissan Sentra 2.0L (SR20DE) — ECCS pinout

Transcribed from [1993 Nissan-Datsun Sentra 2.0 ECU.pdf](1993%20Nissan-Datsun%20Sentra%202.0%20ECU.pdf), the single-sheet ALLDATA **Electronic Concentrated Control System Diagram** for the 1993 Sentra L4-1998cc 2.0L DOHC MFI (SR20DE).

The E.C.C.S. control module uses the early Nissan 64-terminal layout: terminals 1–48 and 101–116. The drawing does not print a connector name for the module; `F15` is the harness-side connector callout beside it. This is an engine-management system diagram, so the tables list only terminals whose destination or circuit is explicitly traceable on this sheet. They do not claim that omitted terminals are physically unused.

Wire colours are reproduced as printed: `B` black, `BR` brown, `G` green, `L` blue, `LG` light green, `OR` orange, `P` pink, `PU` purple, `R` red, `SB` sky blue, `W` white, and `Y` yellow. A slash separates the base and tracer colours. The diagram's model marks are `A` (A/T), `M` (M/T), `CL` (California), `DG` (digital meter), `ND` (needle meter), `SD` (sedan), and `CP` (coupe).

## E.C.C.S. control module — terminals 1–48

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 1 | W | Ignition signal | Power transistor |
| 2 | L/B | Tachometer signal | Combination meter |
| 3 | Y/R | Ignition check | Resistor and condenser circuit |
| 4 | W/G | E.C.C.S. relay self-shut-off | E.C.C.S. relay |
| 6 | B | Ground | Engine ground |
| 9 | L | Radiator-fan relay control | Radiator-fan relay circuit |
| 11 | Y/L | A/C relay control | A/C relay |
| 13 | B | Ground | Engine ground |
| 16 | OR | Mass air-flow signal | Mass air-flow sensor |
| 17 | W | Mass air-flow ground | Mass air-flow sensor |
| 18 | L/OR | Engine coolant temperature | Engine coolant temperature sensor |
| 19 | W | Oxygen-sensor signal | Heated oxygen sensor |
| 20 | W | Throttle position | Throttle-position sensor |
| 21 | B | Sensor ground | Sensor-ground circuit |
| 22 | L | Crank-angle reference | Crank-angle sensor 180° signal |
| 27 | W | Detonation | Detonation (knock) sensor |
| 30 | L | Crank-angle reference | Crank-angle sensor 180° signal |
| 31 | Y | Crank-angle position | Crank-angle sensor 1° signal |
| 32 | Y/G | Vehicle speed | Combination meter / vehicle-speed sensor |
| 34 | PU | Start signal | Ignition switch |
| 35 | G/OR | Neutral position | M/T neutral switch / A/T inhibitor circuit |
| 36 | B/R | Ignition-switch signal | Ignition switch |
| 37 | R/Y | Throttle-sensor supply | Throttle-position sensor |
| 38 | OR/L | E.C.C.S. switched supply | E.C.C.S. relay output |
| 39 | B | Ground | Engine ground |
| 40 | Y | Crank-angle position | Crank-angle sensor 1° signal |
| 41 | Y/R | A/C switch | A/C switch |
| 43 | LG/B | Power-steering pressure | Power-steering oil-pressure switch |
| 46 | W | Back-up power | Battery/fuse supply |
| 47 | OR/L | E.C.C.S. switched supply | E.C.C.S. relay output |
| 48 | B | Ground | Engine ground |

## E.C.C.S. control module — terminals 101–116

| Pin | Wire | Function | Connects to |
|-----|------|----------|-------------|
| 101 | W/B | Injector No. 1 drive | Fuel injector No. 1 (low side) |
| 102 | P | PAIRC solenoid control | PAIRC solenoid valve |
| 103 | G/B | Injector No. 3 drive | Fuel injector No. 3 (low side) |
| 104 | B/Y | Fuel-pump relay control | Fuel-pump relay |
| 105 | G/Y | EGR/canister solenoid control | EGR and canister control solenoid valve |
| 107 | B | Ground | Engine ground |
| 108 | B | Ground | Engine ground |
| 110 | Y/B | Injector No. 2 drive | Fuel injector No. 2 (low side) |
| 112 | L/B | Injector No. 4 drive | Fuel injector No. 4 (low side) |
| 113 | SB | IACV-AAC control | IACV-AAC valve |
| 116 | B | Ground | Engine ground |

## Component and power-routing notes

- **Fuel injection:** injector No. 1 (W/B), No. 2 (Y/B), No. 3 (G/B), and No. 4 (L/B) receive their individual low-side drives from the E.C.C.S. module. Their shared supply joins at the E.C.C.S. relay circuit.
- **Ignition:** terminal 1 reaches the power transistor; terminal 3 reaches the resistor and condenser circuit. The power transistor drives the ignition coil and distributor.
- **Crank-angle sensor:** the distributor-mounted sensor has paired reference wires to terminals 22 and 30 and paired position wires to terminals 31 and 40. The source calls the component a crankshaft position sensor at the distributor.
- **Fuel pump:** terminal 104 controls the fuel-pump relay. The relay supplies both the fuel pump and the condenser at the pump; their ground is shown at body ground B5.
- **Idle air:** terminal 113 controls the IACV-AAC valve. The drawing also shows the IACV-FICD solenoid valve and IACV-air regulator on the E.C.C.S. relay-fed circuit.
- **Cooling and A/C:** terminal 9 controls the radiator-fan relay circuit; terminal 11 controls the A/C relay, while terminal 41 receives the A/C-switch signal. The drawing includes three radiator-fan relays and two fan motors, with equipment variation marked by `A`, `M`, `SD`, and `CP`.
- **Power:** terminal 34 receives the start signal, terminal 36 the ignition-switch signal, terminal 46 the back-up supply, and terminals 38 and 47 the E.C.C.S. relay's switched supply. The source draws the E.C.C.S. relay from the ignition-switch ON/START supply and the back-up path from the battery/fusible-link and fuse box.
- **Grounds:** the engine-ground network joins terminals 6, 13, 39, 48, 107, 108, and 116. Terminal 21 is the separate sensor-ground path.

## Source limitations

This diagram combines M/T and A/T, California, body-style, and instrument-cluster variants on one page. The `A`, `M`, `CL`, `DG`, `ND`, `SD`, and `CP` marks identify which branch applies. Several wired terminals are drawn only as harness continuations with no readable end component on this one sheet; they are deliberately not included in the pin tables.
