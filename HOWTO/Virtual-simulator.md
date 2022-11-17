# rusEFI Virtual simulator

##### You'll be able to test out the rusEFI controller on your computer 

rusEFI virtual firmware simulator is a way to play with the rusEFI without any hardware! 
This simulator allows you to see how the firmware reacts to different commands and configuration adjustments via Tuner Studio. The main thing one would be looking at would be the 'Engine Sniffer'.

All you need is a Windows computer. This virtual simulator is built from the same source code as rusEFI controllers firmware. 

The rusEFI console runs on Java, so if you don't have that installed on your PC you'll need to download it.
If you don't have the rusEFI console you can download it [here](http://rusefi.com/build_server/rusefi_bundle.zip).  
You'll have to unzip the file and go into the console folder.
 
 ![Directory](FAQ/images/simulator/rusEFI_console_directory.png)
 
 And then open the rusefi_console.jar file.
 
 ![Contents](FAQ/images/simulator/rusEFI_console_directionary_files.png)

After this, you'll start the virtual simulator.

![rusEFI_start](FAQ/images/simulator/rusEFI_start.png)

## Connecting the simulator to Tunerstudio

There are two ways to connect rusEFI virtual simulator to Tunerstudio, it all depends on whether you have the lite or commercial version.

To start off you'll need to open one of your existing projects or just create a new one.

If you don't know how to create a Tunerstudio project go [here](HOWTO-create-tunerstudio-project)
 
With the paid version all you need to do is to go into the communication settings inside a created project
 
 ![Commsetings](FAQ/images/simulator/Tunerstudio_comm._settings.png)
 
 
choose the driver "Standard Protocols Driver" and connection type "TCP/IP - WiFi driver", enter the Port as "29002" and the IP address as "localhost" (aka 127.0.0.1)
 
 ![Communication_settings](FAQ/images/simulator/Communication_settings_direct.png)
 
**However, if you only have the lite version of Tunerstudio the process will be different.**

## Emulating a serial port to connect to Tunerstudio lite

If you prefer using the free version of Tunerstudio - Tunerstudio lite -  you'll need to install a serial port emulator from [here](https://www.hw-group.com/software/hw-vsp3-virtual-serial-port#download). You'll need to emulate a port on your PC. The only thing that you'll need to do is to choose a port name, COM100 for example, and to change the port address to 29002.



![Virtual serial port](FAQ/images/simulator/Emulator_settings.png)

Now you can create your virtual port.

![Virtual_port_start](FAQ/images/simulator/Virtual_port_start.png)

So now if you open the communication settings in Tunerstudio,

![Commsettings](FAQ/images/simulator/Tunerstudio_comm._settings.png)

you'll be able to connect to your emulator.

![Emulated Communication settings](FAQ/images/simulator/Communication_settings_tutorial.png) 

Now if your virtual simulator is connected to Tunerstudio you'll see a green zero in your rusEFI virtual simulator.

![Connected virtual simulator](FAQ/images/simulator/rusEFI_virtual_simulator_connected.png) 

## Troubleshooting
In case something does not work with the TCP<>Serial driver, first thing is to make sure that rusefi_simulator.exe is in the list of Processes in Task Manager

Next step is executing

`telnet localhost 29001`

to make sure that dev console protocol is alive

and

`telnet localhost 29002`

to make sure that TS protocol is alive.

Expected behavior is that connection would be established. If it does not, you might need to look in firewall settings. 


