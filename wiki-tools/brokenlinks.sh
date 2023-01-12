#!/usr/bin/env bash
##################################################################################################
#                                         brokenlinks.sh                                         #
#                                           02/18/2021                                           #
#                                   Written By David Holdeman                                    #
#     Searches for broken links in a Github Wiki repo, and suggests and applies corrections.     #
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
    # If it's an internet link, ignore it.
    # That's beyond the scope of this tool.
    if echo $link | grep -E '^[http|\/]' >/dev/null; then
      continue
    fi
    # At some point in this scripts development, fixed links to files/images were given the './' prefix.
    # This didn't really hurt anything, but it's not idiomatic.
    # I added this to fix the problems I caused, and decided it was worth keeping around.
    if echo $link | grep -E '^\./' >/dev/null; then
      # NEWLINK is the corrected link
      NEWLINK=$(echo $link | sed 's/^\.\///')
      # Print the file and the old link
      echo "In $1:"
      echo $link
      # Print the options as though they are a list in order to have the same UI as other types of correction
      echo $NEWLINK | cat --number
      # Read the user input
      read PICK
      if [ $PICK -eq 1 ]; then
        # Replace the old link with the new one.
        # Parentheses are placed around both the old link and new one in order to ensure we replace the link,
        #   and not some other place in the file that happens to use the same words.
        REPLACE=$(escape '('$link')')
        REPLACEWITH=$(escapeReplace "$NEWLINK")
        sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
      fi
      # We don't continue here because the link we fixed might be broken.
    fi
    # Skip links that are to an .md file and aren't broken.
    if [ $(find . -name "$link"".md" 2>/dev/null | wc -l) -gt 0 ]; then
      continue
    fi
    # Skip links that are to a hash fragment.
    if echo "$link" | grep "#" >/dev/null; then
      continue
    fi
    # Process links that are not to an .md file.
    # We need to do this separately because Github/gollum behave differently with different kinds of links.
    # .md files need the name of the file, without the .md extension.
    # Everything else needs the path relative to the repo root.
    if echo "$link" | grep -Ev ".md$" >/dev/null; then
      # Skip the link if it's not broken.
      if ls "$link" 2>/dev/null >/dev/null; then
        continue
      fi
      # Print the filename and the broken link.
      echo "In $1:"
      echo $link
      # Build the search term we will look for.
      # All hyphens and underscores are replaced with asterisks, so we
      #   can find files with mismatched hyphens or underscores.
      SEARCH='*'$(basename "$link" | sed 's/[-_ ]/*/g')'*'
      # Search for matching files.
      FILES=$(find . -iname "$SEARCH")
      # If there are no files, skip to next link.
      if [ $(echo -n "$FILES" | wc -c) -lt 1 ]; then
        echo "Could not find"
        continue
      fi
      # List the potential files, with numbers.
      echo "$FILES" | cat --number
      # Read the user input
      read PICK
      # If the selection isn't a number, skip to the next link.
      if ! [[ $PICK =~ ^[0-9]+$ ]]; then
        continue
      fi
      # Get the selected file path, without the preceding ./
      FILE=$(echo "$FILES" | head -n $PICK | tail -n 1 | sed 's/^\.\///')
      # Replace the old link with the new one.
      # Parentheses are placed around both the old link and new one in order to ensure we replace the link,
      #   and not some other place in the file that happens to use the same words.
      REPLACE=$(escape '('$link')')
      REPLACEWITH=$(escapeReplace "$(basename "$FILE" .md)")
      sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
      continue
    fi
    echo "In $1:"
    echo $link
    # Build the search term we will look for.
    # All hyphens and underscores are replaced with asterisks, so we
    #   can find files with mismatched hyphens or underscores.
    SEARCH='*'$(basename "$link" | sed 's/[-_ ]/*/g')'*'
    # Search for matching files.
    FILES=$(find . -iname "$SEARCH")
    # If there are no files, skip to next link.
    if [ $(echo -n "$FILES" | wc -c) -lt 1 ]; then
      echo "Could not find"
      continue
    fi
    # List the potential files, with numbers.
    echo "$FILES" | cat --number
    # Read the user input
    read PICK
    # If the selection isn't a number, skip to the next link.
    if ! [[ $PICK =~ ^[0-9]+$ ]]; then
      continue
    fi
    # Get the selected file path, without the preceding ./
    FILE=$(basename "$(echo "$FILES" | head -n $PICK | tail -n 1)" .md)
    # Replace the old link with the new one.
    # Parentheses are placed around both the old link and new one in order to ensure we replace the link,
    #   and not some other place in the file that happens to use the same words.
    REPLACE=$(escape '('$link')')
    REPLACEWITH=$(escapeReplace "$FILE")
    sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
  # This regex finds links in the file that is passed to searchfile
  # Results are fed to file descriptor 3 for the reasons previously explained.
  done 3< <(grep -oP '(?<=\]\().*?(?=[\)])' "$1" | sed -e "s/^<//g" -e "s/>$//g" | cut -d '"' -f1 | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
}
export -f searchfile

# run searchfile on every .md file in the repo
find . -iname "*.md" -exec bash -c 'searchfile "$0"' {} \;
