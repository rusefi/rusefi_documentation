# Link Validation in Markdown Documents

We have a script to check for broken links in the wiki.

`bash ./wiki-tools/brokenlinks.sh`

It only searches for broken HTTP links if you pass it the flag `-w`, but note that this takes a long time.

By default, it will search for possible fixes to broken links, and prompt you to select one. To run non-interactively, pass the `-s` flag.

Another helpful tool we have is an automatically-generated [node map](https://wiki.rusefi.com/nodemap.html). This is helpful for showing the links between pages. The innermost ring contains the homepage and pages linked in the nav. The more rings away from the center a page is, the more clicks are needed to reach it. The outermost ring contains pages that have neither links from them nor any to them. The second-to-outermost ring contains pages that are not reachable from the homepage or nav using links.

Clicking on any node highlights the links to other pages in red, and the links from other pages in green.
