
#### How to contribute to https://github.com/rusefi/rusefi_documentation

Step 0: Edits are possible directly via [https://github.com/rusefi/rusefi/wiki/](https://wiki.rusefi.com/) 'Edit in GitHub' button. A Fork and PR will be created.
![image](https://user-images.githubusercontent.com/22799428/200407238-74b1fd66-e6b1-46cc-a7b8-398f5c5b41f6.png)

Step 1: Sign up or sign in to https://github.com

Step 2: Open https://github.com/rusefi/rusefi_documentation and click 'Fork' - this would produce your own fork/copy of rusefi_documentation which you can now edit right in your browser!
![editor](FAQ/github_online_editor.png)  

Step 3: Edit your code and Commit changes using the button below the editor.

Step 4: Once you are ready to contribute your changes, hit 'New pull request' button on the main page of your fork.

This would produce a [Pull request like this](https://github.com/rusefi/rusefi_documentation/pull/3) in the official rusefi repository and your changes would probably soon become public!   
https://github.com/rusefi/rusefi/blob/master/firmware/tunerstudio/rusefi.input


#### How to contribute to rusEFI TunerStudio project


Same as above, fork https://github.com/rusefi/rusefi and edit your local copy of
https://github.com/rusefi/rusefi/blob/master/firmware/tunerstudio/rusefi.input file

https://github.com/rusefi/rusefi/commit/9d9ae5a05499027b32ed76df3e7ee2e2e8240c31 is an example of how more help could be added
right into TunerStudio project file. Lines with green background are the lines being added.

Unfortunately while you would be modifying your mainController.ini file while trying your changes, you need to edit rusefi.input file which
is a template from which rusefi.ini is generated programmatically on rusefi side.

# Wiki location migration

As of Dec 2022, https://github.com/rusefi/rusefi/wiki called "wiki2-human" is the primary documentation URL. wiki.rusefi.com migration is on-going we are fighting some issues. 


# Technical implementation details

Github Wiki is weird.

One the one hand, we have https://github.com/rusefi/rusefi_documentation called "wiki2-technical" - that's a git repository with nice pull
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
