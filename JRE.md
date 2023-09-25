# JRE

[Eclipse Temurin](https://adoptium.net/temurin/releases/) is one of the options for Java Runtime Environment these days.

[OpenJDK17U-jre_x64_windows_hotspot_17.0.7_7.msi](https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.7%2B7/OpenJDK17U-jre_x64_windows_hotspot_17.0.7_7.msi)

## TunerStudio cacerts work-around

Until TunerStudio updates embedded JRE please download https://rusefi.com/s/j/cacerts

Please place that file into ``C:\Program Files (x86)\EFIAnalytics\TunerStudioMS\runtime\lib\security`` folder

## Technical Details on the above

Q: Why the workaroud?

A: See https://github.com/rusefi/rusefi/issues/5536

Q: Is that some custom (unsafe?) cacerts?

A: No, this fresh cacerts (MD5 ``c2b8864a67786044b279d17c550ee4f7``) is what comes with zulu-8 JDK 1.8.0_382 Zulu8.72.0.17-CA-win64 git:1bc0593d05e7, you can manually install zulu-8 and copy same file from there.
