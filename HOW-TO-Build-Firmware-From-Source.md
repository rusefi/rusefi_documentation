# How to build the rusEFI firmware from the source files  

## The following process is a step-by-step guide to creating the build environment in windows 10+ using Windows Shell for Linux

The best way to build the rusEFI firmware is using a set of tools that run best under linux,

1. Install WSL
   Run the following in an elevated powershell  

   ```shell
   Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
   ```

2. Download linux  
   Download the appx for linux 2004 from here:
   [WSL Install Manual](https://docs.microsoft.com/en-us/windows/wsl/install-manual)  
   Or type the following into powershell:  

   ```shell
   cd ubuntu/  
   Invoke-WebRequest -Uri <https://aka.ms/wsl-ubuntu-2004> -OutFile Ubuntu.appx -UseBasicParsing  
   ```

   This command will download the file to the currently active directory.  

3. install linux

   ```shell
   PS C:\Windows\system32> cd c:/Ubuntu  
   PS C:\Ubuntu> Add-AppxPackage Ubuntu_2004.2020.424.0_x64.appx  
   ```

   Open start menu and launch linux  
   Wait for it to complete install and ask for username and password

4. check WSL default install
   In powershell type:  

   ```shell
   wslconfig /l  
   ```

   Make sure the ubuntu 2004 is marked as default.

5. get git  

   ```shell
   sudo apt-get install git  
   ```

6. clone git  

   ```shell
   git clone <https://github.com/YOUR-REPOSITORY/rusefi.git>  
   ```

7. Run setup script  

   ```shell
   cd /home/owner/rusefi/firmware  
   sh setup_linux_environment.sh  
   ```

8. install VScode in windows  
   Download and install as normal, is should detect WSL and ask to install the extension for it, do this and close VScode  

9. Install VScode in linux  

   ```shell
   cd /home/owner/rusefi  
   code .  
   ```

10. Hit ctrl-b and run "build unit tests"
    Allow to run and complete, it may exit with "multiple targets" error, if so just run it a second time.  

11. exit both VScode and ubunu  
    Click the x in VScode and type exit in ubuntu  

12. reboot ubuntu from the start menu and run make  

    ```shell
    cd /home/owner/rusefi/firmware  
    make  
    ```

    This should build the firmware  

13. If successful then reopen VScode in ubuntu  

    ```shell
    cd /home/owner/rusefi  
    code .  
    ```

14. Run the built tool for the specific board in VScode  
    Ctrl-Shift-B and select the chosen board, this should build the firmware.  

- Note submodules are their own thing - the main repo just contains a pointer to where the submodule should be checked out  

- Zach method:

install wsl (already have ubuntu 20.04 on wsl2)  

```shell
sudo apt update  
sudo apt install openjdk-8-jre-headless -y  
curl -O <https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2>  
tar -xf gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2  
```

## Without WSL

Less fancy toolchain without WSL works as well <https://rusefi.com/forum/viewtopic.php?f=5&t=9>
