# F7 Requires Full Erase

While most rusEFI units support incremental firmware update while keeping settings intact, we are facing an unexplained issue with some F7 Proteus units. Those units require a full erase prior to software update.

## OpenBLT Approach

![image](Images/console/Console_auto_dfu_update.png)

## Older approach before OpenBLT

1. Enter DFU using one of these options:
    1. In rusEFI console, use "switch to DFU mode"
    2. Open the case, power the ECU while holding the "PROG" button to enter manual DFU

2. In rusEFI console, use "Full Erase Chip"

3. Manual DFU programming using rusEFI console as usual
