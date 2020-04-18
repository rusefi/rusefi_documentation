
git fetch personal-wiki-git                                       >> log.txt 2>>err.txt
git checkout -b personal-wiki-git-local personal-wiki-git/master  >> log.txt 2>>err.txt
git merge origin/master                                           >> log.txt 2>>err.txt
git push personal-wiki-git HEAD:master                            >> log.txt 2>>err.txt
git branch -d personal-wiki-git-local                             >> log.txt 2>>err.txt
