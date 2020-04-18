git fetch technical-git                                   >> log.txt 2>>err.txt

git checkout -b best-wiki-git-local best-wiki-git/master  >> log.txt 2>>err.txt
git merge technical-git/master                            >> log.txt 2>>err.txt
git push best-wiki-git HEAD:master                        >> log.txt 2>>err.txt


git checkout -b temp-wiki-git-local temp-wiki-git/master  >> log.txt 2>>err.txt
git merge technical-git/master                            >> log.txt 2>>err.txt
git push temp-wiki-git HEAD:master                        >> log.txt 2>>err.txt


git checkout master                                       >> log.txt 2>>err.txt
git pull                                                  >> log.txt 2>>err.txt
git branch -d temp-wiki-git-local                         >> log.txt 2>>err.txt
git branch -d best-wiki-git-local                         >> log.txt 2>>err.txt


