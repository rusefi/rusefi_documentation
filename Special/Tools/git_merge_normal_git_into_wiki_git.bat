echo Fetching everything                                  >> log.txt 2>>err.txt
git fetch technical-git                                   >> log.txt 2>>err.txt
git fetch best-wiki-git                                   >> log.txt 2>>err.txt


echo Merging technical into best wiki                     >> log.txt 2>>err.txt
git checkout -b best-wiki-git-local best-wiki-git/master  >> log.txt 2>>err.txt
git merge technical-git/master                            >> log.txt 2>>err.txt
git push best-wiki-git HEAD:master                        >> log.txt 2>>err.txt


echo Cleanup                                              >> log.txt 2>>err.txt
git checkout master                                       >> log.txt 2>>err.txt
git pull                                                  >> log.txt 2>>err.txt
git branch -d best-wiki-git-local                         >> log.txt 2>>err.txt


