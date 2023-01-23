# Bad Link Tests

This file has some examples of good and bad link and image styles.

[good link](Idle-Control)

[bad link](Idle_Control)
should be  Idle-Control

[bad link](./Idle-Control)
should be  Idle-Control

[bad link](/Idle-Control)
should be  Idle-Control

[bad link](./Idle-Control.md)
should be  Idle-Control

[bad link](/Idle-Control.md)
should be  Idle-Control

[bad link](Idle-Control.md)
should be  Idle-Control

[bad link](Idle-Control.md#valve-initialization)
should be  Idle-Control#valve-initialization

[bad link](Idle-Control#Valve-initialization)
should be  Idle-Control#valve-initialization

[bad link](Idle-Control#valve_initialization)
should be  Idle-Control#valve-initialization

![good img](Images/Red_LED.png)

![bad img](Images/Red-LED.png)
should be  Images/Red_LED.png

![bad img](Red_LED.png)
should be  Images/Red_LED.png

![bad img](Red_LED)
should be  Images/Red_LED.png

![bad img](Images/Red_LED)
should be  Images/Red_LED.png

![bad img](./Images/Red_LED.png)
should be  Images/Red_LED.png

![bad img](./Images/Red_LED)
should be  Images/Red_LED.png

![bad img](/Images/Red_LED.png)
should be  Images/Red_LED.png

![bad img](/Images/Red_LED)
should be  Images/Red_LED.png
