# TunerStudio Over CAN

rusEFI TS communication could go over CAN wires. Definitely much slower than USB, but should be much more noise tolerant!

As of today, TunerStudio does not communicate with CAN dongles directly, so we have rusEFI proxy software with ISO/TP on the CAN dongle side, and TCP/IP for TunerStudio.

1. Have relevant hardware: PCAN for Windows or SocketCAN for Unix; see [CAN hardware options](CAN#hardware-options).
2. In the bundle bin folder, execute pcan_connector.bat or socketcan_connector.sh
3. Connect TS to localhost port 29001.
4. Report results at <https://rusefi.com/forum/viewtopic.php?f=5&t=2233>
