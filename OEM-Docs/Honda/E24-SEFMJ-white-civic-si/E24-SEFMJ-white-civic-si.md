
# General Context

SEFMJ Honda protocol running 9600 K-line (effectively 12v serial port) communication between 2004 Honda ECU and multiplex module within body control unit (BCM) / cabin fuse box.

Some packets are sent my BCM, some packets are sent by ECU. Assumption is that BCM is master thus first packet in the cycle is coming from BCM.

![image](https://user-images.githubusercontent.com/48498823/224524802-0bbde452-66a4-43b7-95c5-b523dc23cb63.png)

Byte packets are clearly CRC-terminated, for instance 0x8C is crc of 1,0,0 packet

![image](https://user-images.githubusercontent.com/48498823/224524734-9c9ed54d-0ecd-4aa1-a46e-3e1f9ce53acb.png)

# Available data

Schematics: A bunch of 2003-acura-rsx PDF files at https://github.com/rusefi/rusefi_documentation/tree/master/OEM-Docs/Honda

* Bench setup in NJ: just BCM sending out same five byte packet see https://rusefi.com/forum/viewtopic.php?p=47371#p47371
* a bunch of logic analyzer recordings of real while honda civic, see below

# Problem statement

* ECU seem to be reporting CLT temperature to BDM and eventually for dash board / instrument cluster.

* BCM seem to be reporting state of A/C request button to ECU.

Open question: which packets are sent by which of the two devices?

Open question: how is A/C request encoded? Partial answer: looks like third byte 0x80 see https://github.com/rusefi/hellen125honda-issues/issues/26#issuecomment-1464826791

Open question: how is CLT encoded in what packets?

# What we have

E24-SEFMJ-white-civic-si-logicdata.zip has all the raw data as saleae https://support.saleae.com/logic-software/legacy-software/older-software-releases files

E24-SEFMJ-white-civic-si-csv.zip has same data exported as timestamp,byte value pairs

SEFMJ traces.xlsx same data in Excel spreadsheet, but combined into packets based on inter-byte delays.

3-door-open-wakes-bus-up opening door waking up SEFMJ

6-high-rpm idle at around 2K RPM hoping for CLT to go up

7-ac-on-off pressing/depressing A/C button a few times

![image](https://user-images.githubusercontent.com/48498823/224524984-d926c878-4eca-4196-8265-8a69c9910193.png)

# Data analysis

* This data contains three packet types. Probably, two of them belongs to BCM (type 0 and 1) and one to ECU (type 2).
* Packet type encoded in lower nibble of first byte (now I have no ideas, what is encoded in second one).
* Packet size is fixed and depends on it type (there is no any 'packet length' field).
* All packets contains CRC with a such parameters: `width=8  poly=0x1d  init=0xff  refin=true  refout=true  xorout=0xff` (according to RevEng tool).
* Packet type 1 always presents in bus (if it not in a sleep mode), packet 0 appears only on some events (?), packet 2 depends on ignition state.
* Looks like BCM starts communication with a packet 1 or pair of packets 0 and 1 and after small delay (about 2 ms) ECU sends packet type 2, after 5 ms this cycle repeats.
* Probably, engine temperature encoded in byte 3 (starting from 0) in packet 2. Calculation formula is not clear (probably, it presens as is, in celsius degrees).
* Maybe AC button press cause sending several packets 0. Behavior in a real car is a definitely different from experiments 'on a table'.
