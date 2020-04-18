
One way to preview local changes to your fork of technical repository is to push those changes into your personal wiki git.

I only know how to do this from command line


```
git clone https://github.com/YOURNAME/rusefi_documentation.git
cd rusefi_documentation
git remote add personal-wiki-git https://github.com/YOURNAME/rusefi_documentation.wiki.git
git push --force personal-wiki-git master

```