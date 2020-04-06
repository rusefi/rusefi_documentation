Bare minimum microRusEfi instructions: 


# Step 1 80% ready microRusEfi
Fabricate "pre-populated" 80% ready microRusEfi at https://jlcpcb.com/

You would need three files to do that - gerbers archive, BOM and placement files."

Current version as of April 7, 2020 is 0.4.8
 
https://github.com/rusefi/hw_microRusEfi/tree/master/gerbers/0.4.8

# Step 2 Finish assembly
Order the following 8 parts:

| Qty | PartNumber | Comment   |
| ----------:|:--------  |:---------------------------------------------------- |
| 1  | TLE88882QKXUMA1     | Power Management Chip  |
| 1  | 614105150721     | Vertical microUSB  |
| 2  |   PTS636 SM43 SMTR LFS   | push button  |
| 4  | CA064X103K2RACAUTO     | capacitor array  |


https://www.mouser.com/ProjectManager/ProjectDetail.aspx?AccessID=dacd727e05

# Step 3 Upload firmware

Once you solder 8 parts to your 80% ready microRusEfi upload firmware into micro-controller

https://rusefi.com/build_server/rusefi_bundle_mre-f4.zip

# More info

More info like connector & case see https://github.com/rusefi/hw_microRusEfi

For quicker results kits and fully assembled units are available at https://rusefi.com/shop/