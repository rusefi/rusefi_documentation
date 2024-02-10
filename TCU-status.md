# TCU Status

First we need to establish good terminology.

There are oldest transmission with external TCU, those are mostly controlled by on/off solenoids. We have some _untested_ _unfinished_ code to handle those, this work is totally halted as of Dec 2022. There is hope to revive it in 2024 :)

![image](https://github.com/rusefi/rusefi/assets/48498823/0d065f3c-4d31-4d5d-bc41-1baff06a7455)

Then we have some complex transmissions with external TCU like Honda, or clutch-to-clutch like Aisin 09G/09M, and modern transmissions with TCU located inside the transmission assembly. For those we are focusing on CAN integration only, not looking to re-invent the TCU itself.
