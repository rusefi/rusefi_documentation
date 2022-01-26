
#### How to contribute to https://github.com/rusefi/rusefi_documentation

1. From the wiki page you wish to edit on [https://wiki.rusefi.com](https://wiki.rusefi.com), click on the "Edit on GitHub" link in the upper right hand corner.

2. Sign up or sign in to [Github](https://github.com) if you aren't already

3. If you have been given write access the the rusefi_documentation priority, you can commit changes directly. If not, clicking on "Propose Changes" will fork the repository and give you the option to create a pull request.

4. Click "Create Pull Request" and wait for your change to be reviewed.

#### How to contribute to rusEFI TunerStudio project

1. Sign up or sign in to [Github](https://github.com) if you aren't already

2. Go to  [https://github.com/rusefi/rusefi](https://github.com/rusefi/rusefi) and click "Fork" near the upper right corner

3. Edit your fork of [the TunerStudio input](https://github.com/rusefi/rusefi/blob/master/firmware/tunerstudio/rusefi.input) file

[This commit](https://github.com/rusefi/rusefi/commit/9d9ae5a05499027b32ed76df3e7ee2e2e8240c31) is an example of how more help could be added
right into TunerStudio project file. Lines with green background are the lines being added.

Unfortunately while you would be modifying your mainController.ini file while trying your changes, you need to edit rusefi.input file which
is a template from which rusefi.ini is generated programmatically on rusefi side.



# Technical implementation details

Github Wiki is weird.

One the one hand, we have https://github.com/rusefi/rusefi_documentation - that's a git repository with nice pull
request process, but less nice web page rendering which start each folder by showing list of files, that's not what end users want to see. 


On the other hand, we have https://github.com/rusefi/rusefi_documentation/wiki which is displayed much nicer - and 
that https://github.com/rusefi/rusefi_documentation/wiki is actually implemented by ANOTHER git repository 
https://github.com/rusefi/rusefi_documentation.wiki.git behind the scene. That https://github.com/rusefi/rusefi_documentation.wiki.git repository does not have a nice Pull Request process :(

Solution? A combination. Here at rusefi_documentation both repositories are actually set to mirror each other.
This way we have the nice Pull Request process on https://github.com/rusefi/rusefi_documentation and once changes are
merged into https://github.com/rusefi/rusefi_documentation, complete https://github.com/rusefi/rusefi_documentation is merged
into https://github.com/rusefi/rusefi_documentation.wiki.git which makes actual content nicely visible at https://github.com/rusefi/rusefi_documentation/wiki 


# Technical FAQ

Q: Is it ok that https://github.com/rusefi/rusefi_documentation.wiki.git cannot be opened from browser?

A: There is no reason to open https://github.com/rusefi/rusefi_documentation.wiki.git from browser. Also while you technically
CAN "git clone https://github.com/rusefi/rusefi_documentation.wiki.git" and it would work -
 you should NOT. Anyone looking to make changes should be making changes to non-wiki git via normal fork & pull request process.
 
Additional automation is in charge of merging from https://github.com/rusefi/rusefi_documentation.git into https://github.com/rusefi/rusefi_documentation.wiki.git 
