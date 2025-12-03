# Remote Tuning

Remote tuning is possible over the internet using the rusEFI TunerStudio plugin if the rusEFI ECU is connected to the internet.

![Remote Tuning Diagram](Images/remote_tuning.png)

There are three ways to connect rusEFI to the internet:

1. The "Broadcast" tab of the rusEFI TunerStudio plugin.
2. The rusEFI network_connector tool for running an instance on a Raspberry Pi or similar Single Board Computer
3. [The rusEFI Android application](rusEFI-Android)

Connecting to a remote ECU is a two step process:  
First you connect rusEFI TunerStudio plugin to remote controller via the Internet, and then you connect TunerStudio to the rusEFI TunerStudio plugin locally.

- IP Address "localhost"
- Port (default value): 29001

![TunerStudio TCP Communication Settings](Images/TS/TS_plugin_TCP.png)
