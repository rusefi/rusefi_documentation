# Bluetooth

rusEFI supports a **serial Bluetooth module** that provides a wireless serial link, mainly used to connect TunerStudio (or the rusEFI Console) without a USB cable.

> Bluetooth support is limited and the connection is slow. There is currently no TunerStudio interface for setting up the module — it is initialised from the rusEFI Console (see below). For a faster wireless link, consider Wi-Fi instead, for example the [CANbus to WiFi adapter](can2wifi) or a serial-to-network bridge such as [UART-TCP-proxy](https://github.com/Light-r4y/UART-TCP-proxy).

## Supported modules

The module is a TTL-level serial (UART) Bluetooth adapter. rusEFI can initialise several types:

- **JDY-33** — the default and recommended module. The popular [AlphaX 4chan](https://github.com/rusefi/alphax-4chan) board comes with a JDY-33 on board. There are still [some known issues](https://github.com/rusefi/rusefi/issues/5918).
- **HC-05**, **HC-06** — older classic-Bluetooth modules. Whether HC-06 is still a good choice is an [open question](https://github.com/rusefi/rusefi/issues/6197). On start, an HC-06 accepts AT commands at 9600 baud, and its default pairing PIN is `1234`.
- **BK** modules.

### Classic Bluetooth SPP, not BLE

rusEFI drives the module as a **Bluetooth Classic SPP** serial bridge — for the JDY-33 it sends `AT+TYPE0`, which selects SPP. The JDY-33 is a dual-mode part and rusEFI also sets a separate BLE advertising name (`<name>-BLE`), but the serial link rusEFI speaks is Classic SPP only.

What that means in practice:

- **Windows, Linux, macOS, Android** and ESP32-class microcontrollers can all open the SPP port, so any of them can be the client.
- **iPhone and iPad cannot.** iOS does not let apps open arbitrary Bluetooth Classic SPP sockets, so an iOS device cannot be used as the TunerStudio or dashboard client over this link. This is an iOS restriction, not a rusEFI or module limitation.

## Hardware: what you need to wire on

If your board does not already have Bluetooth on board (the AlphaX 4chan does), you add a TTL serial Bluetooth module and connect it to one of the ECU's TTL serial UARTs — the same kind of UART used for TunerStudio/console serial communication:

- **Power** — the module's VCC and GND. Use the voltage the module expects (many TTL Bluetooth modules run on 3.3 V logic; use a module compatible with the ECU's 3.3 V UART levels, which the JDY-33 is).
- **Serial data — cross TX and RX:**
  - module **TX → ECU serial RX**
  - module **RX → ECU serial TX**

### Which UART, and therefore which baud setting

rusEFI does not use one fixed UART for Bluetooth. It **prefers the board's secondary TTL port**, and falls back to the primary port only on boards that do not define a secondary one. That choice decides which baud-rate setting has to match your module:

| Port used for Bluetooth | When | Baud rate setting |
|---|---|---|
| Secondary TTL | The board defines a secondary TTL port | `tunerStudioSerialSpeed` — "Secondary TTL channel baud rate" |
| Primary TTL | The board has no secondary TTL port | `uartConsoleSerialSpeed` — "Baud rate for primary TTL" |

The primary port is user-configurable in TunerStudio: `consoleUartDevice` selects the device (Off / UART1 / UART2 / UART3) and `binarySerialTxPin` / `binarySerialRxPin` its pins. The secondary TTL port is fixed by the board definition instead, so consult your board's pinout for its pins. Some boards expose UART pins on a header or pads for a Bluetooth module; on others you solder to them. Always confirm the module's voltage requirements before wiring.

## Setting up the module

Initialise the module from the rusEFI Console. The general form is:

```text
bluetooth_<module> <baud> <name> <pincode>
```

with `bluetooth_hc05`, `bluetooth_hc06`, `bluetooth_bk`, and `bluetooth_jdy` available. For example:

```text
bluetooth_jdy 115200 alphax 1234
```

sets a JDY-33 to 115200 baud, names it `alphax`, and sets the PIN to `1234`.

Things to get right:

- **`<baud>` must match the ECU serial speed** of whichever port Bluetooth uses — see the table above. This is the most common setup mistake, and it produces a link that pairs and connects but never transfers a single byte.
- **`<baud>` must be one of** 2400, 4800, 9600, 19200, 38400, 57600 or 115200; other values are rejected.
- **`<name>`** is up to 20 characters, and **`<pincode>`** must be exactly 4 digits.
- **The command does not run immediately.** It only arms the procedure. Because the firmware has to use that same UART to send AT commands to the module, it waits for the serial channel to go quiet first — so close your console/TunerStudio session and leave the board powered. `bluetooth_cancel` aborts an armed procedure.

### Power-cycle the ECU when it finishes

Two things routinely make a *successful* setup look like a failure:

- **`AT+RESET` timing out is normal.** rusEFI sends `AT+RESET` last and logs `JDY3x failed to reset` when the module does not acknowledge it, which many JDY-33 units simply never do. That message alone does not mean the setup failed.
- **The new name and PIN do not take effect until the ECU is power-cycled.** Until then the module keeps advertising its previous name, which looks exactly like "the command did nothing".

So: run the command, let it finish, then power-cycle the ECU and re-scan before concluding anything.

## Troubleshooting

Work down the list — every row here is a problem that presents as a dead module but is not one.

| Symptom | Likely cause | What to do |
|---|---|---|
| Module still advertises its old name | Rename not applied yet | Power-cycle the ECU, then re-scan |
| Console logs `JDY3x failed to reset` | Module did not ACK `AT+RESET` | Expected; power-cycle and re-scan to confirm |
| Setup command seems to do nothing | The procedure is waiting for a quiet UART | Close the console/TunerStudio session, keep the board powered |
| Module missing from the Bluetooth scan | Inquiry scanning is genuinely unreliable | Retry; it often appears on the next attempt |
| Pairs and connects, but **no data at all** | Module baud does not match the ECU serial speed | Match `<baud>` to the correct setting for the port in use |
| Pairs and connects, but **no data at all** | A USB TunerStudio session is holding the ECU | Disconnect USB TunerStudio — it starves the Bluetooth channel while connected |
| Worked before, now permanently silent, and restarting the client does not help | ECU serial comms desynchronised by a client that sent overlapping requests | Power-cycle the ECU, then use a client that waits for each reply — see below |

> **"Connected" does not mean "working".** The SPP link comes up at the Bluetooth level even when the baud rate is wrong, when TunerStudio is holding the ECU over USB, or when the ECU is not answering at all. A healthy-looking pairing combined with total silence is the normal appearance of all three.

## Using a third-party dashboard or client

The module is a **transparent** bridge: once connected, bytes written to the SPP socket appear on the ECU's UART and vice versa. It adds no protocol, no packetisation and no framing of its own, so a custom client must implement the TunerStudio serial protocol itself. If you are writing one:

- **Send one request at a time and wait for its reply.** A new request arriving while a response is still in flight desynchronises the ECU's receive parser, and it may stop answering until the ECU is physically power-cycled. Do not poll on a fixed timer without waiting for each response.
- **SPP does not preserve message boundaries.** A single response may arrive as several reads of arbitrary size. Reassemble incrementally, reading the length prefix first; never assume one read is one frame.
- **The `O` (output channels) request mixes endianness.** The frame is `[size:2 big-endian]['O'][offset:2][count:2][crc32:4 big-endian]`, but `offset` and `count` are **little-endian**, because the firmware reads them through a `uint16_t*` cast on a little-endian core instead of byte-swapping. Sending them big-endian returns `0x84` (out of range) on every request. The CRC-32 is the standard reflected variety, polynomial `0xEDB88320`.
- **Prefer several small reads over one large one.** They are noticeably more reliable over SPP, and less is lost when a reply is dropped.
- **Output-channel offsets are specific to the firmware build, and a mismatch fails silently** — it decodes neighbouring fields into plausible-looking but wrong values. Take the layout from the `[OutputChannels]` section of the `.ini` whose signature matches the ECU; TunerStudio stores the file it downloaded for that signature under `~/.efiAnalytics/TunerStudio/config/ecuDef/`.
- **Respect each field's signedness** as the `.ini` declares it. Reading an unsigned field as signed is a bug that only appears at high values: `injectorDutyCycle` is `U08` with scale 0.5, so 100 % duty is raw 200 and reports −28 % if treated as signed.
- **Sanity-check a new offset table against physics before trusting it.** With the engine off, MAP should read close to both barometric pressure and local atmospheric pressure for your elevation, battery voltage should match the supply, and unfitted sensors should read exactly zero. The ECU's own sensor-error flags are a useful independent cross-check. For calculating boost, prefer the ECU's own `baroPressure` over a sea-level constant, which is off by a fixed amount at altitude.
- **A CRC-framed `Q` is not answered.** The firmware's list of recognised framed commands does not include `Q`, so a framed query is rejected — silently, if the channel is not already in sync. TunerStudio instead probes ports with a **bare, unframed `Q` byte**, which the firmware answers with an unframed signature string.

## Utilities

- [BluetoothView](https://www.nirsoft.net/utils/bluetooth_viewer.html) — a Windows utility for seeing nearby Bluetooth devices.
- rusEFI forum thread on module setup: <https://rusefi.com/forum/viewtopic.php?f=13&t=1999>

## Related pages

- [CANbus to WiFi adapter](can2wifi) — a faster first-party wireless option.
- [CAN Broadcast for Dashboards and Gauges](CAN-Broadcast-for-Dashboards) — using a Bluetooth CAN adapter for a phone/tablet dashboard.

## Technical sources

- Module initialisation, AT sequences and accepted baud rates: `firmware/console/binary/bluetooth.cpp` and `firmware/console/binary/bluetooth_readme.txt`.
- Bluetooth channel selection (secondary TTL preferred, primary as fallback): `getBluetoothChannel()` in `firmware/console/binary/tunerstudio_io_serial_ports.cpp`.
- Protocol framing, command dispatch and the recognised-command list: `firmware/console/binary/tunerstudio.cpp`.
- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `binarySerialTxPin`, `binarySerialRxPin`, `consoleUartDevice` (Off / UART1 / UART2 / UART3), `uartConsoleSerialSpeed`, `tunerStudioSerialSpeed`.
