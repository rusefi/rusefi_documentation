## Parameters

By default Tuner Studio connectivity is using pin PC10 for TX and PC11 RX, **baud rate 38400**. Do not forget about GND wire.

![Communication Settings](Images/communication_settings.png)

See also: [TunerStudio Console Commands](Dev-Console-Commands#tuner-studio)

Please be sure to use current firmware version with current rusefi.ini project from [http://rusefi.com/build_server/rusefi_firmware.zip build_server]

## Troubleshooting Tuner Studio connectivity

First of all make sure that you have serial port drivers installed. STMicroelectronics Virtual for microUSB or USB serial for PC10/PC11

![Device Manager Ports](Images/device_manager_ports.png)

You can test physical connectivity with a terminal application like putty:
1. connect to the TS port
2. type 't'
you are expected to see a response like this:

![Expected Response](Images/response.png)

Q: I try to connect with Tuner Studio and it says "line:532:rusEfiVersion,20140822@4388 Ford
Aspire,outpin,c1@PC6,outpin,c2@PA5,ou"?

A: what you have is a piece of rusEfi own console text-based protocol, you need to connect TS to the other port.

Q: how should it look in Tuner Studio mini terminal?

A: like that. Note that now new lines between 't' symbols, note that at first some random stuff was received once and that's OK

![TunerStudio Mini Terminal](Images/ts_mini_terminal.png)
