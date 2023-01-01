# Testing Documentation Changes

## Wiki2

###Setup:

You must have a fork of the main rusefi repo as well as a fork of the rusefi_documentation repo.
Clone your fork of the rusefi_documentation repo:  
`git clone git@github.com:<your username>/rusefi_documentation.git`  
From your clone, add your wiki as a remote and push to it.
```
git remote add wiki git@github.com:<your username>/rusefi.wiki.git
git fetch wiki
git push wiki
```
This will get your wiki2 up and running. Now you can make changes, and run
```
git commit -am "your commit message"
git push wiki
```
to test them on wiki2.  
You might have to use `git push --force wiki`.  
Also, note that the changes must be in the master branch of your fork for this to work.

If you want the changes to be synced automatically, you will have to change the usernames in your forks' action files.  
Specifically, these action workflows:  
[rusefi_documentation/.github/workflows/sync-wiki.yaml](https://github.com/rusefi/rusefi_documentation/blob/master/.github/workflows/sync-wiki.yaml)  
[rusefi/.github/workflows/sync-wiki.yaml](https://github.com/rusefi/rusefi/blob/master/.github/workflows/sync-wiki.yaml)  
You need to set up an access token in your repository secrets for Actions.

## Wiki3

The easiest way to test Wiki3 is locally. You could also set up a webserver and your repository secrets to let the workflow upload it for you, but here I'll just explain how to test locally.

The full instructions for installing MkDocs can be found [here](https://www.mkdocs.org/user-guide/installation/), but the short version is to run `pip install mkdocs`.  
You will also need some plugin, which you can install with `pip install mkdocs-ezlinks-plugin mkdocs-exclude`.

Once MkDocs is installed, you can now generate the site.  
I do this with a one-liner, run from the root directory of the repo:  
`cd mkdocs; ln -s .. docs; cp style.css ..; mkdocs build; cd ..; rm style.css`  
MkDocs expects the Markdown documentation files to be in a "docs" subdirectory, so we create it and move everything to it, and then we can go ahead and build the site.
