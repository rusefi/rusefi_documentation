While most rusEFI units support incremental firmware update while keeping settings intact we are facing unexplained issue with some F7 Proteus units. Those units require full erase prior to software update.

Step 1:
open case, power ECU while holding "PROG" button to enter manual DFU

Step 2: Invoke manual DFU full erase
``console\STM32_Programmer_CLI\bin\stm32-full-erase.bat``

Coming soon: full erase from console UI

Step 3:
Manual DFU programming as ususal