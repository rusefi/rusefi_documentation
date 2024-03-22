# All Supported Triggers

See also [Trigger](Trigger)

To change your trigger settings, open TunerStudio, Engine->Trigger Configuration.

## Important Note

Cam always goes before crank. For shapes with two wheels, left wheel is top in tuner studio.
Also order of channels on engine sniffer should match order of channels on the bottom part of corresponding image.

[Universal](#universal)

[GM](#gm)

[Honda](#honda)

[Mazda](#mazda)

[Nissan](#nissan)

[Toyota](#toyota)

[Subaru](#subaru)

[Mitsubishi](#mitsubishi)

[Jeep & Renix](#jeep)

[Chrysler](#chrysler)

[Miscellaneous](#miscellaneous)

## Universal

Universal  36/1
ToDo: add picture

## 60/2

If you also have a CAM sensor somewhere see [VVT](VVT)

![60/2](Images/triggers/trigger_TT_TOOTHED_WHEEL_60_2.png)

## 32/2

![36/1](Images/triggers/trigger_TT_TOOTHED_WHEEL_32_2.png)

## 36/1

![36/1](Images/triggers/trigger_TT_TOOTHED_WHEEL_36_1.png)

## 36/2

![x](Images/triggers/trigger_TT_TOOTHED_WHEEL_36_2.png)

## Bosch Quick Start

![x](Images/triggers/trigger_TT_VVT_BOSCH_QUICK_START.png)

## Honda

### 12 crank/24 crank

Similar but different from "Custom 12/0":
* "Custom 12/0" synchronizes on any tooth relying on a distributor
* "12crank/24cam" is a special popular trigger which depends on cam sensor for engine phase detection. 

[temporary link for Honda 12](https://github.com/rusefi/rusefi_documentation/issues/227)

### Honda K 1/12 Crankshaft

![x](Images/triggers/trigger_TT_HONDA_K_12_1.png)

### Honda K 4+1

Honda K Exhaust Camshaft

![x](Images/triggers/trigger_TT_HONDA_K_CAM_4_1.png)

### Honda CBR600

![Honda CBR600](Images/triggers/trigger_TT_HONDA_CBR_600.png)

## Mazda

### Mazda Protege SOHC

![Mazda Protege SOHC](Images/triggers/trigger_TT_MAZDA_SOHC_4.png)

### Mazda Miata NA

Also used on some Mitsubishi like 4g18 4g93

![Mazda Miata NA](Images/triggers/trigger_TT_MAZDA_MIATA_NA.png)

### Mazda Miata NB

![Mazda Miata NB1](Images/triggers/trigger_TT_MAZDA_MIATA_NB1.png)

### Mazda Protege 1993 DOHC

![Mazda Protege 1993 DOHC](Images/triggers/trigger_TT_MAZDA_DOHC_1_4.png)

### Mazda 121/Ford Aspire

![Ford Aspire](Images/triggers/trigger_TT_FORD_ASPIRE.png)

## GM

### GM 7x

![GM 7x](Images/triggers/trigger_TT_GM_7X.png)

### GM LS 24x

See https://github.com/rusefi/rusefi/pull/4140

![x](Images/triggers/trigger_TT_GM_24x.png)

### GM 60/2/2/2

GM/Daewoo Distributor F8CV

![x](Images/triggers/trigger_TT_GM_60_2_2_2.png)

## Jeep

### Jeep 18-2-2-2

![Jeep 18-2-2-2](Images/triggers/trigger_TT_JEEP_18_2_2_2.png)

### Renix 44/2/2

![x](Images/triggers/trigger_TT_RENIX_44_2_2.png)

### Renix 66/2/2/2

![x](Images/triggers/trigger_TT_RENIX_66_2_2_2.png)

## Subaru

### Subaru 7+6 tooth

![Subaru 7+6](Images/triggers/trigger_TT_SUBARU_7_6.png)

### 36/2/2/2

Might also be used on some Daihatsu, Nissan and Miata

![36/2/2](Images/triggers/trigger_TT_36_2_2_2.png)

### Subaru EZ30 variation of 36/2/2/2

![!](Images/triggers/trigger_TT_SUBARU_EZ30.png)

### Subaru SVX

![x](Images/triggers/trigger_TT_SUBARU_SVX.png)

## Chrysler

### Dodge Neon 1995

![Dodge Neon 1995](Images/triggers/trigger_TT_DODGE_NEON_1995.png)

### Dodge Neon 1995 only crankshaft sensor

![Dodge Neon 1995 crank only](Images/triggers/trigger_TT_DODGE_NEON_1995_ONLY_CRANK.png)

### Dodge Hemi and SRT4

![x](Images/triggers/trigger_TT_CHRYSLER_NGC_36_2_2.png)

### Dodge Ram

![Dodge Ram](Images/triggers/trigger_TT_DODGE_RAM.png)

### Dodge Neon 2003

Chrysler NGC 4 cylinder

![Dodge Neon 2003](Images/triggers/trigger_TT_DODGE_NEON_2003_CAM.png)

### Dodge Stratus

Chrysler NGC 6 cylinder

![Dodge Stratus](Images/triggers/trigger_TT_DODGE_STRATUS.png)

## Miscellaneous

### 60 degree tooth

Sovek, Saruman ignition blind type

![x](Images/triggers/trigger_TT_60DEG_TOOTH.png)

### Renault F

A bit of a 60/2/2

![x](Images/triggers/trigger_TT_60_2_2_F3R.png)

### Suzuki G13B

![x](Images/triggers/trigger_TT_SUZUKI_G13B.png)

### Universal skipped wheel

A basic wheel - assumes equally spaced teeth with a number of missing teeth.
Tuner studio allows up to 500 teeth with 500 missing - functional limits are not tested.

### Ford Barra VVT

![x](Images/triggers/trigger_TT_VVT_BARRA_3_PLUS_1.png)

### Ford Coyote VVT

![x](Images/triggers/trigger_TT_VVT_FORD_COYOTE.png)

### Daihatsu

3 cylinder

![x](Images/triggers/trigger_TT_DAIHATSU_3_CYL.png)

4 cylinder

![x](Images/triggers/trigger_TT_DAIHATSU_4_CYL.png)

### Benelli Tre

![x](Images/triggers/trigger_TT_BENELLI_TRE.png)

### Ford ST170

![x](Images/triggers/trigger_TT_FORD_ST170.png)

### One tooth

![One Tooth](Images/triggers/trigger_TT_ONE.png)

## Mitsubishi

### 4G93

![x](Images/triggers/trigger_TT_MITSUBISHI.png)

### 36-2-1-1

![x](Images/triggers/trigger_TT_36_2_1_1.png)

### 36-2-1

For example 4B11 4G15 4G69

![x](Images/triggers/trigger_TT_36_2_1.png)

### 3A92 VVT

![x](Images/triggers/trigger_TT_VVT_MITSUBISHI_3A92.png)

### 4G69 VVT

Same as 4G15

![x](Images/triggers/trigger_TT_VVT_MITSUBISHI_4G69.png)

### 6G72 Cam

![x](Images/triggers/trigger_TT_VVT_MITSU_6G72.png)

## Nissan

QR25 crank
![x](Images/triggers/trigger_TT_NISSAN_QR25.png)

QR/MR cam
![x](Images/triggers/trigger_TT_NISSAN_MR18_CAM_VVT.png)

VQ35 crank
![x](Images/triggers/trigger_TT_NISSAN_VQ35.png)
VQ cam
![x](Images/triggers/trigger_TT_VVT_NISSAN_VQ35.png)

VQ30
![x](Images/triggers/trigger_TT_NISSAN_VQ30.png)

360 slot trigger not ready yet, no test vehicles :(

![Nissan](Images/triggers/trigger_TT_NISSAN_SR20VE.png)

## VW 60/2

VW special understanding of 60/2 with a wide tooth instead of of just missing tooth.

See also [Universal True 60/2](All-Supported-Triggers#602)

![VW 60/2](Images/triggers/trigger_TT_60_2_VW.png)

### Toyota

## Toyota 2JZ

### 1/12 version

2JZ would use global trigger offset 65

Use this with "Single Tooth First Half" VVT mode for cam input

![x](Images/triggers/trigger_TT_12_TOOTH_CRANK.png)

### 3/34 version

Use skipped wheel for crank and "Toyota 3 Tooth" previously known as "VVT: 2JZ" for cam.

## VVT 3-0 "Toyota 3 Tooth" previously known as "VVT: 2JZ"

![1+60/2](Images/triggers/trigger_TT_VVT_JZ.png)

## VVT 4-1

![x](Images/triggers/trigger_TT_VVT_TOYOTA_4_1.png)

## TriTach

Some older German vehicles

![x](Images/triggers/trigger_TT_TRI_TACH.png)

## Skoda Favorit

![x](Images/triggers/trigger_TT_SKODA_FAVORIT.png)

## Ford PIP

![Ford PIP](Images/triggers/trigger_TT_FORD_TFI_PIP.png)

## Unknown trigger type

[Unknown Trigger](#unknown-trigger-type)

TODO: implement a feature so that trigger could be defined via TunerStudio

If your have an unknown or an unsupported trigger shape, once you've confirmed that trigger events are getting into the software (see "troubleshooting" sections) you need to crank your engine while rusEFI console is connected with Engine Sniffer tab active.

With long enough cranking you should get a visual log of your trigger signal, that would give you some idea of what kind of trigger shape you have. Save an image and post it on a forum. It's recommended to remove spark plugs while investigating trigger shape to make your cranking more even.

Once preliminary shape of a new trigger is added into rusEFI firmware based on the Engine Sniffer image, second step is getting a more precise recording of the shape with exact angles. This is done with spark plugs removed and Sensor Sniffer mode set to TRIGGER. With long enough cranking a chart of trigger shape would appear on the Sensor Sniffer tab and the console log file (see out/ folder next to rusefi console binaries) would contain the angles. Please post this log file on the forum for the developers to encode the new trigger shape into the software.

## How this works

Trigger decoding cycle starts at 'synchronization point' - that's the trigger fall or rise event which satisfies the 'synchronization gap' condition. Since trigger synchronization point usually has nothing to do with top dead center #1 (TDC), we have have 'globalTriggerAngleOffset' parameter - that's the offset between synchronization point and TDC.

For example, 'set global_trigger_offset_angle 0', TDC is set to synchronization point, the green vertical line is TDC mark:

![Offset Angle 0](Images/offset_0.png)

Now the real TDC, 'set global_trigger_offset_angle 175' command:

![Offset Angle 175](Images/offset_175.png)

Note the different location of the green TDC line. Also note how all Injector #1 pulse has moved (Injector #3 is the lowest signal on these pictures) - that's because ignition and injection are scheduled based on TDC point.

While running ignition is controlled by ignition timing map, you can also offset the whole ignition timing map using 'set ignition_offset' command. Ignition dwell is controlled by dwell time curve.

Injection could be offset using 'set injection_offset X' command.

While cranking, you can set angle-based ignition instead of timing map & dwell based ignition. In angle-based mode, dwell is defined in crankshaft angle duration and timing is constant. set cranking_charge_angle and set_cranking_timing_angle.

See 'trigger decoding' in [Doxygen](http://rusefi.com/docs/html/)

Dev note: unit_tests executable produces triggers.txt file - gen_trigger_images.bat reads triggers.txt and produces these .png files.
TODO: automate this further?
