


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


