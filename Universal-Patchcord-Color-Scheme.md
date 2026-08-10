# rusEFI Universal Patchcord Color Scheme

Standard wire colors for rusEFI universal patch cords, so that any patchcord can be
identified without tracing it back to a connector pin.

Sections are presented in the suggested wiring order

## Power

| Signal               | Color         | Swatch |
| -------------------- |---------------|--------|
| +12V ignition key (KL15) | red       | 🔴     |
| Power ground         | black         | ⚫      |
| Main relay control (low-side) | grey | 🩶     |
| +12V from main relay | red           | 🔴     |
| Sensor +5V feed      | red or orange | 🔴 or 🟠 |
| Sensor ground (GNDA) | black         | ⚫      |

## Electronic throttle and pedal

| Signal            | Color        | Swatch |
| ----------------- | ------------ | ------ |
| TPS 1             | green        | 🟢     |
| TPS 2             | blue         | 🔵     |
| PPS 1             | white        | ⚪     |
| PPS 2             | orange/brown | 🟠🟤   |
| DC motor positive | blue         | 🔵     |
| DC motor negative | white        | ⚪     |

## Communication

| Signal   | Color | Swatch |
| -------- | ----- | ------ |
| CAN high | green | 🟢     |
| CAN low  | blue  | 🔵     |

## Sensors

| Signal | Color | Swatch |
| ------ | ----- | ------ |
| MAP    | orange | 🟠    |
| CLT    | grey   | 🩶    |
| IAT    | blue   | 🔵    |

## Wideband oxygen sensor (WBO)

Bosch LSU 4.9 wiring, matching the sensor's factory lead colors:

| Signal          | LSU 4.9 pin | Color  | Swatch |
| --------------- | ----------- | ------ | ------ |
| Ip              | 1           | red    | 🔴     |
| Vs/Ip (Vm)      | 2           | yellow | 🟡     |
| Heater negative | 3           | white  | ⚪     |
| Heater positive | 4           | grey   | 🩶     |
| CalR            | 5           | green  | 🟢     |
| Vs (Un)         | 6           | black  | ⚫     |

## Numbered channels

Injector, coil and similar numbered channels:

| Channel | Color        | Swatch |
| ------- | ------------ | ------ |
| 1       | green        | 🟢     |
| 2       | white        | ⚪     |
| 3       | blue         | 🔵     |
| 4       | orange/brown | 🟠🟤   |
| 5       | brown        | 🟤     |
| 6       | yellow       | 🟡     |

See also [OEM harness connectors](OEM-harness-connectors) for connector part numbers.
