#!/usr/bin/env bash
##################################################################################################
#                                         linkifyurls.sh                                         #
#                                           01/24/2022                                           #
#                                   Written By David Holdeman                                    #
#          Searches for URLs in a Github Wiki repo, and turns them into markdown links.          #
##################################################################################################

# These two functions are used to escape variables for use in a sed command
# Passed a single string
escape() {
  sed 's/[^^]/[&]/g; s/\^/\\^/g' <<<"$1";
}
export -f escape
escapeReplace() {
  sed 's/[&/\]/\\&/g' <<<"$1";
}
export -f escapeReplace

# Main processing function
# Passed the path to a .md file
searchfile() {
  # This loops for every link in the file.
  # See the end of the function for the grep that finds the links in the file.
  # We use file descriptor 3, because if we used stdin, the read calls inside this loop would read from that instead of
  #  reading the user's input.
  while IFS= read -r -u 3 link; do
    # Get the line the link was in
    LINE=$(grep "$link" "$1")
    # If the line is different than the link, print it so the user can see the context of the link.
    if [ "$LINE" != "$link" ]; then
      echo "$LINE"
    fi
    # Print the link and prompt for a title
    echo $link
    read -p "Enter a title or leave empty or [n:skip|e:edit]: " TITLE
    # Do nothing if the user entered 'n'
    if [ "$TITLE" == "n" ]; then
      echo
      continue
    fi
    # Open the file in an editor if the user entered 'e'
    if [ "$TITLE" == "e" ]; then
      $EDITOR "$1"
      echo
      continue
    fi
    # Set the title to the URL if the user didn't enter anything
    if [ $(echo -n "$TITLE" | wc -c) -lt 1 ]; then
      TITLE="$link"
    fi
    # Build a markdown-style link
    REPLACE=$(escape "$link")
    REPLACEWITH=$(escapeReplace '['"$TITLE"']''('"$link"')')
    # Replace the old URL with the new link in the file
    sed -i "s/$REPLACE/$REPLACEWITH/" "$1"
    echo
  # This regex finds URLs in the file that is passed to searchfile
  # Results are fed to file descriptor 3 for the reasons previously explained.
  done 3< <(grep -oP '((?<![\(\[])http[s]?:\/\/[^\s]*)' "$1")
}
export -f searchfile

# run searchfile on every .md file in the repo
find . -iname "*.md" -exec bash -c 'searchfile "$0"' {} \;
