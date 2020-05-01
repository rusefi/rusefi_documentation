
git checkout master                         >> log.txt 2>>err.txt
git reset --hard origin/master              >> log.txt 2>>err.txt
git pull                                    >> log.txt 2>>err.txt
git fetch temp-wiki-git                     >> log.txt 2>>err.txt
git merge temp-wiki-git/master              >> log.txt 2>>err.txt
git push                                    >> log.txt 2>>err.txt

git fetch best-wiki-git                     >> log.txt 2>>err.txt
git merge best-wiki-git/master              >> log.txt 2>>err.txt

