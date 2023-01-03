![](Hardware/Deucalion/Deucalion_0_1_uart.jpg)

From right to left:

* Black GND
* Yellow above GND: +5v supply
* Blue next to yellow: TXD
* Green next to blue: RXD

The above mentioned four wires are all you need to update the firmware in Kinetis and connect to Deucalion via UART.

Another green is another RXD for second UART, another blue is another TXD.

This is related EFI_PRINT_MESSAGES_TO_TERMINAL

Orange jumper on the left is enabling LED. The single LED on Deucalion is shared between stm32 and Kinetis.
