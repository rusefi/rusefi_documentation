In order to leverage github/wiki look&feel in combination with github pull request process we have to use two git repositories in our workflow:

1) Technical git repository https://github.com/rusefi/rusefi_documentation is used to submit content using fork&pull request process

2) user-facing https://github.com/rusefi/rusefi.wiki.git repository is displayed to viewers at https://github.com/rusefi/rusefi/wiki
Jenkins automation merges all changes from technical git into https://github.com/rusefi/rusefi.wiki.git behind the scenes.


For example, in order for user abelom to edit this page:

1) abelom would start editing at https://github.com/rusefi/rusefi_documentation/blob/master/Special/Documentation_Workflow.md which would automatically create a branch in https://github.com/abelom/rusefi_documentation fork
1) once changed are made, abelom would create a Pull Request
3) once that PR is merged into primary rusEfi modified content would appear as https://github.com/rusefi/rusefi_documentation/blob/master/Special/Documentation_Workflow.md
4) within the next 5 minutes automation would sync this page into wiki git and it would be available with nicer layout as https://github.com/rusefi/rusefi/wiki/Documentation_Workflow

Same but in different terms:

1) fork https://github.com/rusefi/rusefi_documentation
2) make your changes
3) PR my changes
4) once PR is merged by one of moderators, your changes would appear at https://github.com/rusefi/rusefi_documentation instantaneously
5) within the next 5 minutes magic happens and changes appear at https://github.com/rusefi/rusefi/wiki