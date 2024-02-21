# HOWTO Upload Log

## Data Rate

Licensed TunerStudio would you give you faster data rate which is *very* important while troubleshooting trigger/vvt issues. Go "Communications->Data Rate->Max Rate Per Second". We pride for having above 500Hz data rate via USB! See [Logging Guide](Logging-Guide) for more info.

Slower rate is recommended for running fuel control troubleshooting, higher rate logs are needed for cranking/trigger troubleshooting. Logs below 100Hz are totally useless for trigger troubleshooting

![image](https://github.com/rusefi/rusefi/assets/48498823/2e78dc91-b258-4b56-9259-311214089b73)

## HOWTO

In TunerStudio hit "Data Logging" -> "Start Logging".
Once you've done something interesting, hit "Data Logging" -> "Stop"

Then hit "Data Logging" -> "Show DataLog Folder"

At this point you can upload your log at [https://rusefi.com/online/](https://rusefi.com/online/)
