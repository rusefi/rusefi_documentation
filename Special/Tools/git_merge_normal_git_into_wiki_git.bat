git fetch normal-git                                    >> log.txt 2>>err.txt

git checkout -b wiki-git-local wiki-git/master          >> log.txt 2>>err.txt
git merge normal-git/master                             >> log.txt 2>>err.txt
git push best-wiki-git HEAD:master                      >> log.txt 2>>err.txt


git checkout -b best-wiki-git-local wiki-git/master     >> log.txt 2>>err.txt
git merge normal-git/master                             >> log.txt 2>>err.txt
git push wiki-git HEAD:master                           >> log.txt 2>>err.txt


git checkout master                                     >> log.txt 2>>err.txt
git pull                                                >> log.txt 2>>err.txt
git branch -d wiki-git-local                            >> log.txt 2>>err.txt
git branch -d best-wiki-git-local                       >> log.txt 2>>err.txt


