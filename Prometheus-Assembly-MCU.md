## 2 MCU block

## (a) - MCU:

### Component List:
![U5_2](Hardware/Prometheus/Prometheus_assembly_2a-comp.jpg)

### PCB Top Side:
![Orientation](Hardware/Prometheus/Prometheus_assembly_2a-pcb.jpg)

## (b) - ground/power connections

### Component List:
![Components](Hardware/Prometheus/Prometheus_assembly_2b-comp.jpg)

### PCB Top Side:
![Placement](Hardware/Prometheus/Prometheus_assembly_2b-pcb1.jpg)

## (c) - minimal circuitry:
### Component List:
![Components](Hardware/Prometheus/Prometheus_assembly_2c-comp.jpg)

### PCB Top Side:
![Placement](Hardware/Prometheus/Prometheus_assembly_2c-pcb1.jpg)

### PCB Bottom Side:
![Placement Bottom Side](Hardware/Prometheus/Prometheus_assembly_2c-pcb2.jpg)

**Warning for Rev0.1!** Be careful when soldering C42 and C43 - they should not be in contact!

## (d) - pull-up resistors:
### Component List:
![Components](Hardware/Prometheus/Prometheus_assembly_2d-comp.jpg)

### PCB Top Side:
![Placement](Hardware/Prometheus/Prometheus_assembly_2d-pcb1.jpg)

### PCB Bottom Side:
![Placement Bottom Side](Hardware/Prometheus/Prometheus_assembly_2d-pcb2.jpg)

## (e) - crystal:
### Component List:
![Component](Hardware/Prometheus/Prometheus_assembly_2e-comp.jpg)

### PCB Top Side:
![Placement](Hardware/Prometheus/Prometheus_assembly_2e-pcb.jpg)

The 1st pin is marked with a little dash:
![Placement Dash](Hardware/Prometheus/Prometheus_assembly_2e-pcb-dash.jpg)

## (f) - LED and programmer connector:
### Component List:
![Components](Hardware/Prometheus/Prometheus_assembly_2f-comp.jpg)

### PCB Top Side:
![Placement](Hardware/Prometheus/Prometheus_assembly_2f-pcb.jpg)

## Connecting the programmer:

**Now check if MCU works using ST-Link/V2 programmer:**

Make sure that an external +12V power supply is always connected when using the board:
![Programmer](Hardware/Prometheus/Prometheus_assembly_programmer.jpg)

### SWD Connector pinout:
The programmer connector pinout (from left to right):
1 - the first pin is not used
2 - GND (ground)
3 - NRST (reset)
4 - SWCLK
5 - SWDIO

![Connector Pinout](Hardware/Prometheus/Prometheus_assembly_2f_swd_connector.jpg)
