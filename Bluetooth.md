# Bluetooth

rusEFI supports a **serial Bluetooth module** that provides a wireless serial link, mainly used to connect TunerStudio (or the rusEFI Console) without a USB cable.

> Bluetooth support is limited and the connection is slow. There is currently no TunerStudio interface for setting up the module — it is initialised from the rusEFI Console (see below). For a faster wireless link, consider Wi-Fi instead, for example the [CANbus to WiFi adapter](can2wifi) or a serial-to-network bridge such as [UART-TCP-proxy](https://github.com/Light-r4y/UART-TCP-proxy).

## Supported modules

The module is a TTL-level serial (UART) Bluetooth adapter. rusEFI can initialise several types:

- **JDY-33** — the default and recommended module. The popular [AlphaX 4chan](https://github.com/rusefi/alphax-4chan) board comes with a JDY-33 on board. There are still [some known issues](https://github.com/rusefi/rusefi/issues/5918).
- **HC-05**, **HC-06** — older classic-Bluetooth modules. Whether HC-06 is still a good choice is an [open question](https://github.com/rusefi/rusefi/issues/6197). On start, an HC-06 accepts AT commands at 9600 baud, and its default pairing PIN is `1234`.
- **BK** modules.

## Hardware: what you need to wire on

If your board does not already have Bluetooth on board (the AlphaX 4chan does), you add a TTL serial Bluetooth module and connect it to the ECU's **primary serial UART** — the same UART used for TunerStudio/console serial communication:

- **Power** — the module's VCC and GND. Use the voltage the module expects (many TTL Bluetooth modules run on 3.3 V logic; use a module compatible with the ECU's 3.3 V UART levels, which the JDY-33 is).
- **Serial data — cross TX and RX:**
  - module **TX → ECU serial RX** (`binarySerialRxPin`)
  - module **RX → ECU serial TX** (`binarySerialTxPin`)

The ECU's UART is selected by `consoleUartDevice` (Off / UART1 / UART2 / UART3) and its baud rate by `uartConsoleSerialSpeed` ("Baud rate for primary TTL"). Some boards expose these UART pins on a header or pads for a Bluetooth module; on others you solder to the appropriate UART pins. Always check your board's pinout for the correct serial pins and the module's voltage requirements before wiring.

## Setting up the module

Initialise the module from the rusEFI Console. The general form is:

```
bluetooth_<module> <baud> <name> <pincode>
```

with `bluetooth_hc05`, `bluetooth_hc06`, `bluetooth_bk`, and `bluetooth_jdy` available. For example:

```
bluetooth_jdy 115200 alphax 1234
```

sets a JDY-33 to 115200 baud, names it `alphax`, and sets the PIN to `1234`. Use a baud rate that matches the ECU's serial speed, then pair with the module and point TunerStudio at the resulting serial (COM) port.

## Utilities

- [BluetoothView](https://www.nirsoft.net/utils/bluetooth_viewer.html) — a Windows utility for seeing nearby Bluetooth devices.
- rusEFI forum thread on module setup: <https://rusefi.com/forum/viewtopic.php?f=13&t=1999>

## Related pages

- [CANbus to WiFi adapter](can2wifi) — a faster first-party wireless option.
- [CAN Broadcast for Dashboards and Gauges](CAN-Broadcast-for-Dashboards) — using a Bluetooth CAN adapter for a phone/tablet dashboard.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `binarySerialTxPin`, `binarySerialRxPin`, `consoleUartDevice` (Off / UART1 / UART2 / UART3), `uartConsoleSerialSpeed`.
