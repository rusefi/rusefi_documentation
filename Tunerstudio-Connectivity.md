# TunerStudio Connectivity

__Note: If your computer is running Linux, you might have to [fix issues with ModemManager or other device recognition issues](Linux-Connectivity).__

## Communications Parameters

### COM-port and Baud Rate

![Communication Settings](Images/TS/communication_settings.png)

Select the correct COM port for your rusEFI. You will usually see only two COM ports. Chances are, the one with the higher number is the rusEFI COM-port. For most cases, the selected baud rate does not matter.

If you can't establish communication, try baud rate 38,400, 57,600, or 115,200. If that doesn't work, you may need to try a different COM port.

After selecting the COM-port (and baud rate), click on "Test Port". This should result in a "successful!" message. If you get a failure message, you need to adjust your settings. After a successful test of the port, click "Accept".

## Troubleshooting Tuner Studio connectivity

By default Tuner Studio connectivity is using pin PC10 for TX and PC11 RX. Do not forget about the GND wire.

Please be sure to use current firmware version with current rusefi.ini project from the [build server](http://rusefi.com/build_server/rusefi_firmware.zip).

First of all, make sure that you have serial port drivers installed. You need STMicroelectronics Virtual COM port for microUSB, or USB serial for PC10/PC11.

![Device Manager Ports](Images/device_manager_ports.png)

You can test physical connectivity with a terminal application like putty:

1. Connect to the TunerStudio COM port
2. Type 't'

You are expected to see a response like this:

![Expected Response](Images/response.png)

*__Q:__ I try to connect with TunerStudio and it says:*  

``` text
line:532:rusEfiVersion,20140822@4388 Ford
Aspire,outpin,c1@PC6,outpin,c2@PA5,ou"?
```

__A:__ What you have is a piece of rusEFI's own console text-based protocol; you need to connect TunerStudio to the other COM port.

*__Q:__ How should it look in TunerStudio mini terminal?*  
__A:__ Like this:

![TunerStudio Mini Terminal](Images/TS/ts_mini_terminal.png)

Note there are no new lines between 't' symbols. Note that at first some random stuff was received once and that's OK.

### USB TTL cable

__Question:__ found [on the forum](http://rusefi.com/forum/viewtopic.php?f=5&t=210&start=29)

I'd like to try to connect to TunerStudio and see what happens. I have a USB/TTL device which looks the same as the photo that Andrey posted. What do I connect to what and what is the procedure?

__Answer:__

![Serial Cable Connection](Images/615px-SerialCableConnection.jpg)

1. Verify pin assignments for your USB TTL cable. Colors might be slightly different from what is shown above and there may be additional wires which are not needed. Before connecting the TTL to the brain board, connect it to your desktop and install the drivers if required.

2. Once the USB TTL Serial device and drivers are installed, connect the GND wire to GND on the brain board

3. connect RX wire of the TTL to pin PC10

4. connect TX wire of the TTL to pin PC11

5. Set up the new serial port @ 38400 with 8/N/1 no flow control using your favorite terminal

6. Hit button 't' on the keyboard. You should get something like this:

    `4073 Alive`

This UART/real serial is just another way to connect either TunerStudio or rusEFI console to the firmware. By combining both micro USB virtual serial and real TTL serial, one can connect to rusEFI with both TunerStudio and rusEFI console simultaneously.
