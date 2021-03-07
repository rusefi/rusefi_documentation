## Gauges

![Console Gauges](Images/java_console_1.png)

## Analog Chart

You can sniff either trigger angles or MAP values. 

Analog chart tab in java console is a very, very plain oscilloscope build into rusEFI firmware.

Analog chart always displays the signal for a duration of one complete engine cycle.

Currently analog chart can display one of these two things

1. trigger signal shape. the value consists of the trigger signal index and fall/rise type of the event

`set_analog_chart_mode 1`

2. MAP sensor signal

`set_analog_chart_mode 2`

## Digital Chart

![Log Viewer](Images/log_viewer.png)

Green line is a border of engine cycle. Please note that the angle within current engine cycle is displayed in the bottom left corner - the angle is from 0 to 720 in case of a four stroke engine.

Red line is just absolute time scale. One line per second? Per 100ms? Something like that. TODO.

## Log Viewer
