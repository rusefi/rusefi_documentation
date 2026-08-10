# rusEFI Universal Patchcord Color Scheme

Standard wire colors for rusEFI universal patch cords, so that any patchcord can be
identified without tracing it back to a connector pin.

## Power

| Signal               | Color | Swatch |
| -------------------- | ----- | ------ |
| +12V from main relay | red   | 🔴     |
| Power ground         | black | ⚫     |
| Sensor +5V feed      | red   | 🔴     |
| Sensor ground (GNDA) | black | ⚫     |

AlphaX boards use orange 🟠 for the sensor +5V feed.

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

## Electronic throttle and pedal

| Signal            | Color        | Swatch |
| ----------------- | ------------ | ------ |
| DC motor positive | blue         | 🔵     |
| DC motor negative | white        | ⚪     |
| TPS 1             | green        | 🟢     |
| TPS 2             | blue         | 🔵     |
| PPS 1             | white        | ⚪     |
| PPS 2             | orange/brown | 🟠🟤   |

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
