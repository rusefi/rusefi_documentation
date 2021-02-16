## SD card logging

rusEfi supports SD card logging. SD has to be formatted FAT16 or FAT32, up to 32Gb cards are known to work.

![Fat Format](Images/Gat_format.png

logs are being written at about 2 megabytes per hour, so the oldest 128Mb card would be enough for a track day and a newer 32Gb card would hold the logs for a year.


![TunerStudio Logging](Images/Ts_logging.png)


In rusEfi console `sdinfo` command could be used to query logging state.

![SD Info](Images/SD_info.png)
