In order to leverage github/wiki look&feel in combination with github pull request process we have to use two git repositories in our workflow:

1) "normal" git repository https://github.com/rusefi/rusefi_documentation is used to submit content using fork&pull request process

2) Automation merged all changes from normal git into https://github.com/rusefi/rusefi_documentation.wiki.git befind the scenes.


For example, in order for user abelom to edit this page:

1) abelom would start editing at https://github.com/rusefi/rusefi_documentation/blob/master/Special/Documentation_Workflow.md which would automatically create a branch in https://github.com/abelom/rusefi_documentation fork
1) once changed are made, abelom would create a Pull Request
3) once that PR is merged into primary rusEfi modified content would appear as https://github.com/rusefi/rusefi_documentation/blob/master/Special/Documentation_Workflow.md
4) within the next 5 minutes automation would sync this page into wiki git and it would be available with nicer layour as https://github.com/rusefi/rusefi_documentation/wiki/Documentation_Workflow
