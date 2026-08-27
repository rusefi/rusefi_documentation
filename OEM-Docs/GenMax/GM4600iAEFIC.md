# GenMax GM4600iAEFIC

Notes transcribed from the factory circuit diagram (manual page 29):
[1738024826774241282-schematics.pdf](1738024826774241282-schematics.pdf)
(full manual: [1738024826774241282.pdf](1738024826774241282.pdf))

Has a **discrete ECU** separate from the inverter, driving a fuel injector, oil pump,
ignition coil and stepping motor (throttle).

Inverter generator, 125V-only output with paralleling receptacle, electric start
("One-click start"), remote control module with antenna, CO module with alarm light,
LED work light, DC12V outlet, battery charger port, multifunction digital display
(V/F/T, power, fuel, indicator light).

## Wire color legend (from schematic)

| Code | Color  | Code | Color |
|------|--------|------|-------|
| B    | Black  | R    | Red   |
| Y    | Yellow | W    | White |
| Bu   | Blue   | Br   | Brown |
| G    | Green  | Gr   | Grey  |
| O    | Orange | P    | Pink  |
| Pu   | Purple |      |       |

Slash = stripe, e.g. Br/W = brown with white stripe.

## ECU pinout

Pins are numbered on the schematic (22-pin style numbering; pins 5–8 and 14 are not shown).
As drawn: stepping motor pins on top, sensor/actuator pins on the left, power/comm pins on
the right, engine pins on the bottom.

| Pin | Wire | Function                                                                  |
|-----|------|---------------------------------------------------------------------------|
| 1   | Bu | Stepping motor (throttle)                                                 |
| 2   | O  | Stepping motor                                                            |
| 3   | Bu/W | Trigger coil (pickup, "CF"; other side grounded)                          |
| 4   | B  | Ground                                                                    |
| 9   | Y/R | Temperature sensor (sensor's other wire goes to B ground rail)            |
| 10  | B  | Ground (B net, chassis grounded)                                          |
| 11  | Gr | Fuel pump low side (pump's other wire on R power rail)                    |
| 12  | Br | Ignition coil primary driver (coil's other primary wire on R power rail)  |
| 13  | Br/W | Link to inverter (2-wire inverter connector: Br/W + B-to-ground)          |
| 15  | Y  | Oil level switch (other side grounded)                                    |
| 16  | R  | +12V Power (R net) — jumpered externally to pin 19                        |
| 17  | W  | Starter relay control (W net, shared with remote control module)          |
| 18  | Pu | Fuel injector low side (injector's other wire on R power rail)            |
| 19  | R  | +12V Power (R net)                                                        |
| 20  | G  | To control panel — G net (remote control module / one-click start button) |
| 21  | Y  | Stepping motor                                                            |
| 22  | P  | Stepping motor                                                            |

Power distribution nets:

- **R net** (switched 12V power): ECU pins 16+19, fuel injector high side, fuel pump high side,
  ignition coil primary high side; runs into the control panel to the engine switch BAT circuit
  through an SR10100 diode.
- **B net** (ground): ECU pins 4+10, temperature sensor return, chassis ground.

## Engine block

| Wire(s) | Device                                                     |
|---------|------------------------------------------------------------|
| Bu, P, Y, O | Stepping motor (4-wire), ECU pins 1/22/21/2                |
| Y/R + gnd | Temperature sensor                                         |
| Pu + R | Fuel injector                                              |
| Gr + R | Fuel pump                                                  |
| Y | Oil level switch                                           |
| Br + R | Ignition coil primary; secondary B → spark plug            |
| Bu/W | Trigger coil (CF)                                          |
| W | Starting relay coil drive                                  |
| B/W | Battery + line (to relay contact / charging circuit)       |
| — | Starting motor, fed by starting relay contact from battery |

## Generator block

- **Main winding**: 3-phase star, 3× R wires through a 3-pin connector to the inverter.
- **Direct current regulator**: outputs R + B feeding the **DC12V receptacle** (R through
  **Protector 8A**, B to ground), plus B/W and R/W (R/W through **Fuse 2A**) for the
  battery-charging circuit.

## Inverter

- Input: 3× R from main winding; earth ground.
- AC output: R (L) + Bu (N) →
  - **Parallel and series** (paralleling) receptacle
  - **AC receptacle 125V/20A** duplex, with **20A protector**
  - **AC receptacle 125V/30A** twist-lock
  - G/Y earth at the receptacles
- 2-wire connector: Br/W → ECU pin 13, B → ground.
- 2-wire connector: Pu + Bu → CO module.
- Control panel fan-out: B + Gr → **ECO switch**; Br + B → **overload recovery switch**;
  B, B, R, G, R → **multifunction digital display**.

## Multifunction display

Left side (from inverter): B, B, R, G, R. Right side: R (power net), B (grounded),
G + Bu/W pair running to the **fuel sensor** (fuel level sender, in the fuel tank block).

## CO module

| Wire | Function |
|------|----------|
| Pu, Bu | To inverter (2-pin connector) |
| Gr | Runs right into the control panel (remote module area) |
| G, Y, R | CO alarm light (two LEDs) |

## Control panel

- **Engine switch**: 2 terminals only — BAT and Key; closes battery power to the control
  (Key) circuit. Battery feed passes a **PTC/8A/30V** resettable protector; an **SR10100**
  diode sits between the R net and the BAT line, and a second SR10100 feeds the
  **battery charger** socket.
- **One-click start button**: 5 wires — B, G, R, Bu, Y (Y grounded at the button) — going to
  the remote control module's 12-pin connector.
- **LED light** with LED switch (panel work light).
- **Remote control module**: antenna, plus
  - 4-pin connector: G/W, R/W, W
  - 12-pin connector (numbered 1–12): harness wires G, R, B, B/W, W, Bu/W, Bu, W
    (serves the one-click start button, battery feed, starter-relay W line)
  - 6-position connector with wires R, Bu, Y, P, O (function not labeled on the diagram;
    colors match the stepping-motor group)

## Starting circuit

Battery + → B/W → starting relay. Relay coil is driven by the W net (ECU pin 17 / remote
control module); the relay contact feeds the starting motor. Battery − is grounded.
