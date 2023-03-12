
# General Context

SEFMJ Honda protocol running 9600 K-line communication between 2004 Honda ECU and multiplex module within body control unit / cabin fuse box.

Some packets are sent my BCM some packets are sent by ECU. Assumption is that BCM is master thus first packet in the cycle is coming from BCM.

![image](https://user-images.githubusercontent.com/48498823/224524802-0bbde452-66a4-43b7-95c5-b523dc23cb63.png)



Byte packets are clearly CRC-terminated, for instance 0x140 is crc of 1,0,0 packet

![image](https://user-images.githubusercontent.com/48498823/224524734-9c9ed54d-0ecd-4aa1-a46e-3e1f9ce53acb.png)


# Problem statement

* ECU seem to be reporting CLT temperature to BDM and eventually for dash board / instrument cluster

* BDM seem to be reporting state of A/C request button to ECU




# What we have

E24-SEFMJ-white-civic-si-logicdata.zip has all the raw data as saleae https://support.saleae.com/logic-software/legacy-software/older-software-releases files


E24-SEFMJ-white-civic-si-csv.zip has same data exported as timestamp,byte value pairs

3-door-open-wakes-bus-up opening door waking up SEFMJ


6-high-rpm idle at around 2K RPM hoping for CLT to go up


7-ac-on-off pressing/depressing A/C button a few times
