# How to Compile the Firmware From Source

## You Don't Need To

We are pretty addicted to GitHub Actions. Just fork the repo, enable GitHub actions and push, GH will leave you all the binaries already compiled in the actions artifacts.

## Set up Windows Subsystem for Linux

If you are using Windows 10 or newer, the best way to build the rusEFI firmware is by setting up Windows Subsystem for Linux, which allows you to run tools built for Linux on your Windows computer.

1. Install WSL  
   Run the following in an elevated powershell:  

      ``` shell
      Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
      ```

2. Download Linux  
   Download the appx for Ubuntu 20.04 from here:
   [WSL Install Manual](https://docs.microsoft.com/en-us/windows/wsl/install-manual)  
   Or type the following into powershell:  

      ``` shell
      cd ubuntu/
      Invoke-WebRequest -Uri <https://aka.ms/wsl-ubuntu-2004> -OutFile Ubuntu.appx -UseBasicParsing
      ```

    This command will download the file to the currently active directory.  

3. Install Linux

      ``` shell
      PS C:\Windows\system32> cd c:/Ubuntu
      PS C:\Ubuntu> Add-AppxPackage Ubuntu_2004.2020.424.0_x64.appx
      ```

    Open the Start menu and launch Linux  
    Wait for it to complete install and ask for username and password

4. Check WSL default install  
   In powershell type:  

      ``` shell
      wslconfig /l
      ```

    Make sure the Ubuntu 20.04 is marked as default.

5. Now just follow the [Linux instructions](#linux) below.

## Without WSL

A less fancy toolchain without WSL works as well.
There is [a forum thread](https://rusefi.com/forum/viewtopic.php?f=5&t=9) on building the firmware, but be aware that it contains some out-of-date information.

## Linux

These instructions apply to Debian and Ubuntu-based Linux distros. If you are running a different distro, you probably know how to adjust them to suit.

1. Install git  

      ``` shell
      sudo apt update
      sudo apt install git
      ```

2. Clone the repository  

      ``` shell
      git clone https://github.com/<YOUR GITHUB USERNAME>/rusefi.git
      ```

3. Run the setup script  

      ``` shell
      cd rusefi/firmware
      bash setup_linux_environment.sh
      ```

4. Run the compile script  

      ``` shell
      bash bin/compile.sh
      ```

      This will give you a list of build targets to choose from. Enter the corresponding number and press enter.
