# Digital Dash

[Dash-hardware-comparison](Dash-hardware-comparison)

TL,DR: dash situation is not ideal. Open question what is acceptable boot time and what is boot time for each of the options.

We have 4 versions of Digital Dash currently

A-- The Quickest and easiest Digital Dash is TunerStudioMS... And  is described Below

B-- Second  is a PowerTune IMG that is just copied onto a SDcard -- and will boot up PowerTune on a raspberry Pi 3 ... [More details](https://rusefi.com/forum/viewtopic.php?p=41535)

C-- Third is a Custom Digital Gauge cluster... [Link HERE](https://customgt6.com/2021/03/28/custom-digital-gauge-cluster/) ... And here is the [GitHub link for Code](https://github.com/joshellissh/pi-dgc)

D-- Fourth is Android tablet or phone running the [Real Dash](http://realdash.net/index.php) App

## How to set up a Raspberry Pi with TunerStudio as a Digital Dash

Click the image to watch a video of a Raspberry Pi rusEFI connected display. Early "proof of concept"

[![IMAGE ALT TEXT](https://user-images.githubusercontent.com/5051341/125208727-ee206800-e259-11eb-9600-6cf742fba5a6.jpg)](https://www.youtube.com/watch?v=a0mdhANrIhw "PiDash rusEFI")

## Hardware Needed to run TunerStudioMS on Pi

Component|Link
-------|----------
Raspberry Pi (3 b+ or 4)|[Raspberry Pi](https://www.sparkfun.com/products/15446?src=raspberrypi)
Display of your choice|[7" Display](https://www.amazon.com/Eviciv-Portable-Monitor-Display-1024X600/dp/B07L6WT77H/ref=sr_1_5?crid=1X69430RFAY22&dchild=1&keywords=raspberry+pi+display&qid=1626032478&s=electronics&sprefix=raspberry+pi+dis%2Celectronics%2C200&sr=1-5)
Controls|[Keyboard and Mouse](https://www.amazon.com/Logitech-Wireless-Keyboard-Control-Touchpad/dp/B014EUQOGK/ref=sxin_12?asc_contentid=amzn1.osa.1213c232-4911-4c93-a5a9-080c7940f1b5.ATVPDKIKX0DER.en_US&asc_contenttype=article&ascsubtag=amzn1.osa.1213c232-4911-4c93-a5a9-080c7940f1b5.ATVPDKIKX0DER.en_US&creativeASIN=B014EUQOGK&cv_ct_cx=raspberry+pi+keyboard&cv_ct_id=amzn1.osa.1213c232-4911-4c93-a5a9-080c7940f1b5.ATVPDKIKX0DER.en_US&cv_ct_pg=search&cv_ct_we=asin&cv_ct_wn=osp-single-source-earns-comm&dchild=1&keywords=raspberry+pi+keyboard&linkCode=oas&pd_rd_i=B014EUQOGK&pd_rd_r=049c7620-3794-42f7-9f0a-6c7b318fad45&pd_rd_w=sSrfX&pd_rd_wg=V1Net&pf_rd_p=f8108e8c-9dee-4dc9-af6c-073db3c1eea1&pf_rd_r=GXV8H8RAJ5G714NZ79M9&qid=1626032549&s=electronics&sr=1-1-a3cc9a7a-2f07-46dc-8259-ac02200376a0&tag=gadgetreview-tca-20)
12+ Power Module|[12v-5v](https://www.amazon.com/Type-C-Step-Down-Converter-Output-Waterproof/dp/B086KTGRH1/ref=sr_1_1?crid=1HPUPPNJUMBA9&dchild=1&keywords=raspberry+pi+12v+power+supply&qid=1626032600&s=electronics&sprefix=raspberry+pi+12v+p%2Celectronics%2C191&sr=1-1)

## Setup

1. Download [TunerStudio](http://tunerstudio.com/index.php/downloads) - you want the tar.gz file

2. Extract to your home directory

   a. Default home directory is "pi", open terminal and type: "ls /home/pi/TunerStudioMS" (if your home directory isnt "pi" change to match your home directory)

   b. Ensure that "TunerStudio.sh" shows up in the results. If it is not, re-install

      Note: you MAY need to install JAVA... if so, type

      `sudo apt-get install openjdk-8-jre`

      To set default Java runtime

      `sudo update-alternatives --config java`

3. Create link to start TunerStudio:

     a. Open termnial and type: "ln -s /home/pi/TunerStudioMS/TunerStudio.sh /usr/local/bin"

     b. Once complete in terminal type: type: "bash /usr/local/bin/TunerStudio.sh"

        i. TunerStudio will open. Enter your registration information now. 

        ii. Load your tune and dash

        iii. Go to options - preferences - select "load last project on startup" **paid TunerStudio function

        iv. Go to options - preferences - select "make dashboard fullscreen" **paid TunerStudio function

        v. Save tune. Close TunerStudio

Here is a [site](https://tunerstudiodashboards.com) with free dashboards to spice up your look

Here is a [site](http://www.tunerstudio.com/index.php/manuals/53-using-tunerstudio-dashboard-designer) on how to make your own custom dashboards
