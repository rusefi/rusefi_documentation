In order to leverage the github pull request process for access control to the wiki, it is stored in a github repo:

[https://github.com/rusefi/rusefi_documentation](https://github.com/rusefi/rusefi_documentation)

When a change is made to the repo, a Github Action automatically builds the wiki and uploads it.


For example, in order for user abelom to edit this page:

1. abelom would start editing at [https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md](https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md) which would automatically create a branch in [https://github.com/abelom/rusefi_documentation](https://github.com/abelom/rusefi_documentation) fork
2. Once changed are made, abelom would create a Pull Request
3. Once that PR is merged into primary rusEFI modified content would appear as [https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md](https://github.com/rusefi/rusefi_documentation/blob/master/Documentation_Workflow.md)
4. Within the next 5 minutes automation would build this page and upload it, and it would be available with nicer layout as [https://wiki.rusefi.com/Documentation_Workflow](https://wiki.rusefi.com/Documentation_Workflow)

Same but in different terms:

1. Fork [https://github.com/rusefi/rusefi_documentation](https://github.com/rusefi/rusefi_documentation)
2. Make your changes
3. PR your changes
4. Once PR is merged by one of moderators, your changes will appear at [https://github.com/rusefi/rusefi_documentation](https://github.com/rusefi/rusefi_documentation) instantaneously
5. Within the next 5 minutes magic happens and the changes appear at [https://wiki.rusefi.com](https://wiki.rusefi.com)

If you have been added to the documentation team, you will be able to make changes directly to the repo, and won't have to fork and PR.

**Q:** Is there a place where we are holding all images for these documents?
**A:** We have images in the same repository! Just add your images while editing pages. Please consider using some (any really) folder structure.

For example [https://github.com/rusefi/rusefi_documentation/blob/master/Images/TunerStudio_new_project.png](https://github.com/rusefi/rusefi_documentation/blob/master/Images/TunerStudio_new_project.png) is visible on wiki.rusefi.com as [https://wiki.rusefi.com/Images/TunerStudio_new_project.png](https://wiki.rusefi.com/Images/TunerStudio_new_project.png)

### How URLs work

Links to page names use only the name of the page; relative path does not matter.
Example:

`[The Documentation Workflow](Documentation-Workflow)`

Links to images are relative to the .md file they are in.
Example:

`![TunerStudio New Project View](Images/TunerStudio_new_project.png)`

**Q:** What sort of fancy options do we have?

**A:** We can do collapsible sections & hints sections! See [cranking](Cranking) for an example.
