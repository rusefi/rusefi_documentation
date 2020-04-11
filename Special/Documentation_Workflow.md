In order to leverage github/wiki look&feel in combination with github pull request process we have to use two git repositories in our workflow:

1) "normal" git repository https://github.com/rusefi/rusefi_documentation is used to submit content using fork&pull request process

2) Automation merged all changes from normal git into https://github.com/rusefi/rusefi_documentation.wiki.git befind the scenes.


For example, in order for user abelom to edit this page:

1) abelom would edit XXX
2) abelo would create a Pull Request
3) once merged this page would appear as XXX
4) within the next 5 minutes automation would sync this page into wiki git and it would be available with nicer layour under XXX name.
