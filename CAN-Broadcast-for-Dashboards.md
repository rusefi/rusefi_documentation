# CAN Broadcast for Dashboards and Gauges

rusEFI can stream live engine data (RPM, coolant temperature, MAP, TPS, lambda and much more) onto the CAN bus so that external dashboards, gauge clusters, and phone/tablet apps can display it. The broadcast is one-way (rusEFI transmits, the dash listens), so once it is enabled you only need CAN wiring between rusEFI and the dash — no per-channel wiring.

There are three ways to get rusEFI data onto a dash:

1. **rusEFI verbose broadcast + a DBC file** — for custom clusters and app dashes that can import a CAN database.
2. **Dashboard presets (`canNbcType`)** — rusEFI mimics a known OEM or aftermarket dashboard protocol so a factory cluster or a dash expecting that protocol works with no DBC.
3. **OBD2** — for generic OBD gauges and apps.

## Wiring and CAN speed

- Connect **CAN High** to CAN High and **CAN Low** to CAN Low between rusEFI and the dash. Use a twisted pair.
- A CAN bus needs a **120 ohm termination resistor at each physical end** of the bus (two total). Many ECUs and dashes have a built-in or switchable terminator — check yours; a bus with the wrong termination is a common cause of "no data".
- Set the CAN speed to match the dash. rusEFI's `canBaudRate` (and `can2BaudRate` for a second bus) supports 33.33kbps, 50kbps, 83.33kbps, 100kbps, 125kbps, 250kbps, **500kbps**, 666kbps and 1Mbps. 500 kbps is the most common dashboard speed. **Both ends must use the same speed.**

rusEFI can carry the dashboard broadcast, a [wideband controller](CAN), and [TunerStudio over CAN](TS-over-CAN) on the same bus at the same time because they use different CAN IDs. On a two-bus board you can also put the dash on one bus and other devices on the other.

## Enabling CAN and the broadcast

- `canWriteEnabled` — enable CAN transmit (required for any broadcast). `canReadEnabled` enables receive.
- `enableVerboseCanTx` — "CAN broadcast using custom rusEFI protocol". Enable this for method 1 below.
- `canNbcType` — selects a dashboard preset for method 2 below.
- `verboseCan` / `verboseCan2` — "Print all" incoming and outgoing CAN messages to the rusEFI Console. Leave these off in normal use; turn one on to watch traffic while debugging.

Set these in TunerStudio (CAN settings).

## Method 1: rusEFI verbose broadcast + DBC

This is the flexible option for custom gauge clusters and phone/tablet dash apps.

- Enable `canWriteEnabled` and `enableVerboseCanTx`.
- rusEFI transmits a set of messages starting at the **base address `verboseCanBaseAddress`** (default **`0x200`**). If your dash already uses `0x200` for something else, change the base address so it does not clash.
- To decode the messages, import rusEFI's **DBC file** into your dash or CAN tool: [`rusEFI_CAN_verbose.dbc`](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/can/rusEFI_CAN_verbose.dbc). A DBC describes which signal (RPM, CLT, etc.) lives in which byte of which message, so any DBC-aware dash (many Android apps, and tools like SavvyCAN) can display the data.

If you change `verboseCanBaseAddress`, apply the same base offset in your dash configuration so the IDs line up.

## Method 2: Dashboard presets (`canNbcType`)

If you want to drive a **factory instrument cluster** or a dash that expects a specific OEM/aftermarket protocol, set `canNbcType` and rusEFI will transmit in that format — no DBC needed. The available presets are:

`None`, `FIAT`, `VAG`, `MAZDA RX8`, `BMW E46`, `W202` (Mercedes), `BMW E90`, `Haltech`, `VAG MQB`, `Nissan VQ35`, `Genesis Coupe`, `Honda K`, `AiM`, and `MS Simplified Broadcast`.

Pick the one that matches your cluster or dash. For example, `BMW E46` lets rusEFI drive a BMW E46 instrument cluster's tach and temperature gauge, and `Haltech` / `AiM` make rusEFI look like those systems to a dash that already speaks their protocol. Set the CAN speed to what that cluster/dash uses.

## OBD2 for generic gauges and apps

rusEFI answers standard OBD2 PID requests, so generic OBD2 gauges and phone apps can read basic parameters. Note the wiki's own caveat: OBD2 support here is intended for **gauges/dashes/apps, not real diagnosis**.

## Phone and tablet dashes over Bluetooth

Android/tablet dash apps such as [RealDash](http://realdash.net/), and others listed on the [Digital Dash](Digital-Dash) page, are a popular way to display rusEFI data. There are two wireless paths, and it helps to keep them separate in your head:

### Read the CAN broadcast over a Bluetooth CAN adapter (recommended for a live dash)

The robust way to feed a phone dash is to let it read the CAN broadcast above:

1. Enable the rusEFI broadcast (method 1 with the DBC, or a method 2 preset the app understands).
2. Connect a **Bluetooth CAN adapter** to the same CAN bus. This is a small dongle that bridges CAN to the phone over Bluetooth.
3. In the dash app, add a CAN connection over that Bluetooth adapter and load the rusEFI DBC (or the app's rusEFI/CAN configuration) so it can decode the messages.

This path is fast and reliable because the dash reads the native CAN broadcast; the Bluetooth link only carries CAN frames.

### rusEFI's built-in Bluetooth serial module

rusEFI also has built-in support for a **Bluetooth serial module** on a UART — `JDY-33` is the default, and `HC-05`, `HC-06`, and `BK` modules are also supported. The module is set up from the rusEFI Console, for example:

```
bluetooth_jdy 115200 rusefi 1234
```

(the general form is `bluetooth_<module> <baud> <name> <pincode>`, with `bluetooth_hc05`, `bluetooth_hc06`, `bluetooth_bk`, and `bluetooth_jdy` available). See the [Bluetooth](Bluetooth) page for details and current caveats.

This built-in Bluetooth link is a wireless **serial** connection, used mainly for a wireless [TunerStudio](Digital-Dash) connection rather than for the CAN gauge broadcast. rusEFI itself notes that this serial Bluetooth is limited and slow; for wireless tuning many people prefer Wi-Fi, for example the [CANbus to WiFi adapter](can2wifi). For a dedicated live dashboard, the Bluetooth-CAN-adapter path above is usually the better choice.

## Tips and troubleshooting

- **No data at all:** check termination (120 ohm at each end), that CAN High/Low are not swapped, and that both ends use the same baud rate.
- **Some values wrong or scaled oddly:** the DBC or dash configuration does not match rusEFI's format — confirm you imported the correct `rusEFI_CAN_verbose.dbc` and that the base address matches.
- **Watch the traffic:** temporarily enable `verboseCan` to print CAN frames in the rusEFI Console, or use a CAN tool such as SavvyCAN with the DBC to see the decoded signals.
- Keep the dash broadcast, wideband, and TS-over-CAN on IDs that do not overlap (the defaults already do).

## Related pages

- [CAN Bus](CAN) — the CAN IDs rusEFI uses and hardware adapter options.
- [TunerStudio over CAN](TS-over-CAN) — tuning over the same CAN bus.
- [Digital Dash](Digital-Dash) — the dashboard options (TunerStudio on a Pi, custom clusters, phone/tablet apps).
- [Bluetooth](Bluetooth) — the built-in Bluetooth serial module.
- [CANbus to WiFi adapter](can2wifi) — a first-party wireless bridge.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `canWriteEnabled`, `canReadEnabled`, `enableVerboseCanTx`, `verboseCan`/`verboseCan2`, `canBaudRate`/`can2BaudRate` (`can_baudrate_e`), `verboseCanBaseAddress` (`CAN_DEFAULT_BASE 0x200`), and `canNbcType` (`can_nbc_e`: None / FIAT / VAG / MAZDA RX8 / BMW E46 / W202 / BMW E90 / Haltech / VAG MQB / Nissan VQ35 / Genesis Coupe / Honda K / AiM / MS Simplified Broadcast).
- Broadcast signal definitions: `firmware/controllers/can/rusEFI_CAN_verbose.dbc`.
