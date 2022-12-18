In order to leverage github/wiki look&feel in combination with github pull request process we have to use two git repositories in our workflow:

1) Technical git repository https://github.com/rusefi/rusefi_documentation is used to submit content using fork&pull request process

2) The user-facing https://github.com/rusefi/rusefi.wiki.git repository is displayed to viewers at https://github.com/rusefi/rusefi/wiki and Jenkins automation merges all changes from technical git into https://github.com/rusefi/rusefi.wiki.git behind the scenes.


For example, in order for user abelom to edit this page:

1) abelom would start editing at https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md which would automatically create a branch in https://github.com/abelom/rusefi_documentation fork
2) Once changed are made, abelom would create a Pull Request
3) Once that PR is merged into primary rusEFI modified content would appear as https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md
4) Within the next 5 minutes automation would sync this page into wiki git and it would be available with nicer layout as https://github.com/rusefi/rusefi/wiki/Documentation_Workflow

Same but in different terms:

1) Fork https://github.com/rusefi/rusefi_documentation
2) Make your changes
3) PR your changes
4) Once PR is merged by one of moderators, your changes will appear at https://github.com/rusefi/rusefi_documentation instantaneously
5) Within the next 5 minutes magic happens and the changes appear at https://github.com/rusefi/rusefi/wiki

**Q:** Is there a place where we are holding all images for these documents?
**A:** We have images in the same repository! Just add your images while editing pages. Please consider using some (any really) folder structure.

For example https://github.com/rusefi/rusefi_documentation/blob/master/Images/TunerStudio_new_project.png is visible on /wiki/ as https://raw.githubusercontent.com/wiki/rusefi/rusefi/Images/TunerStudio_new_project.png

Long story short, for images to work correctly both in the technical git and the user-facing wiki, we place all .md files into the same root folder.

(More details: 
Please note that all .md files like https://github.com/rusefi/rusefi_documentation/blob/master/HOWTO_quick_start.md are displayed without folder name like https://github.com/rusefi/rusefi/wiki/HOWTO_quick_start - which also means
that you need full image path like ``Images/rusEFI_console_start_screen.png`` for the image to be rendered properly. This is one of the github wiki features which are a bit counter-intuitive to me.

This also means that .md file names have to be unique for the whole.)

**Q:** What sort of fancy options do we have?
**A:** We can do collapsible sections & hints sections! See [cranking](Cranking) for an example.
