
# How to contribute to documentation

In order to leverage the Github pull request process for access control to the wiki, it is stored in a [Github repo](https://github.com/rusefi/rusefi_documentation).

1. From the wiki page you wish to edit on [https://wiki.rusefi.com](https://wiki.rusefi.com), click on the "Edit on GitHub" link in the upper right hand corner.

2. Sign up or sign in to [Github](https://github.com) if you aren't already

3. If you have been given write access the the rusefi_documentation priority, you can commit changes directly. If not, clicking on "Propose Changes" will fork the repository and give you the option to create a pull request.

4. Click "Create Pull Request" and wait for your change to be reviewed.

5. Within the next 5 minutes after the pull request has been merged, a Github Action automatically builds the wiki and uploads it to [https://wiki.rusefi.com](https://wiki.rusefi.com)

#### How to contribute to rusEFI TunerStudio project

1. Sign up or sign in to [Github](https://github.com) if you aren't already

2. Go to  [https://github.com/rusefi/rusefi](https://github.com/rusefi/rusefi) and click "Fork" near the upper right corner

3. Edit your fork of [the TunerStudio input](https://github.com/rusefi/rusefi/blob/master/firmware/tunerstudio/rusefi.input) file

4. Click "Contribute", then "Open Pull Request", and finally "Create Pull Request"

5. Wait for your changes to be reviewed and merged.

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


### How URLs work

Links to page names use only the name of the page; relative path does not matter.
Example:

`[How to contribute to documentation](HOWTO-contribute-to-documentation)`
Result:
[How to contribute to documentation](HOWTO-contribute-to-documentation)

Links to images are relative to the .md file they are in.
Example:

`![TunerStudio New Project View](FAQ/images/TunerStudio_new_project.png)`
Result:
![TunerStudio New Project View](FAQ/images/TunerStudio_new_project.png)

# Technical FAQ

**Q:** Is there a place where we are holding all images for these documents?
**A:** We have images in the same repository! Just add your images while editing pages. Please consider using some (any really) folder structure.
For example [https://github.com/rusefi/rusefi_documentation/blob/master/FAQ/images/TunerStudio_new_project.png](https://github.com/rusefi/rusefi_documentation/blob/master/FAQ/images/TunerStudio_new_project.png) is visible on wiki.rusefi.com as [https://wiki.rusefi.com/FAQ/images/TunerStudio_new_project.png](https://wiki.rusefi.com/FAQ/images/TunerStudio_new_project.png)

**Q:** What sort of fancy options do we have?
**A:** We can do collapsible sections & hints sections! See [cranking](Cranking) for an example.

**Q:** Is it ok that https://github.com/rusefi/rusefi_documentation.wiki.git cannot be opened from browser?
**A:** There is no reason to open https://github.com/rusefi/rusefi_documentation.wiki.git from browser. Also while you technically CAN "git clone https://github.com/rusefi/rusefi_documentation.wiki.git" and it would work - you should NOT. Anyone looking to make changes should be making changes to non-wiki git via normal fork & pull request process.
Additional automation is in charge of merging from https://github.com/rusefi/rusefi_documentation.git into https://github.com/rusefi/rusefi_documentation.wiki.git 
