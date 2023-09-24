# JRE

[Eclipse Temurin](https://adoptium.net/temurin/releases/) is one of the options for Java Runtime Environment these days.

[OpenJDK17U-jre_x64_windows_hotspot_17.0.7_7.msi](https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.7%2B7/OpenJDK17U-jre_x64_windows_hotspot_17.0.7_7.msi)

## TunerStudio cacerts work-around

Until TunerStudio updates embedded JRE please download https://rusefi.com/s/j/cacerts (that file is what comes with fresh zulu-8 JDK, you can manually install zulu-8 and copy same file from there)

Please place that file into ``C:\Program Files (x86)\EFIAnalytics\TunerStudioMS\runtime\lib\security`` folder
