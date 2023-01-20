#!/usr/bin/env bash
##################################################################################################
#                                         brokenlinks.sh                                         #
#                                           02/18/2021                                           #
#                                   Written By David Holdeman                                    #
#     Searches for broken links in a Github Wiki repo, and suggests and applies corrections.     #
#          Usage: brokenlinks.sh [-s non-interactive] [-d debug] <optional file(s)> ...          #
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

# return status:
# 0: file is good .md
# 1: file is bad
# 2: file is not .md
checkurl() {
  LINK="$2"
  HASH="$3"
  # If it's an internet link, ignore it.
  # That's beyond the scope of this tool.
  if echo "$LINK" | grep -E '^[http|\/]' >/dev/null; then
    return 2
  fi
  # At some point in this scripts development, fixed links to files/images were given the './' prefix.
  # This didn't really hurt anything, but it's not idiomatic.
  # I added this to fix the problems I caused, and decided it was worth keeping around.
  if echo "$LINK" | grep -E '^\./' >/dev/null; then
    # NEWLINK is the corrected link
    NEWLINK=$(echo "$LINK" | sed 's/^\.\///')
    (
    flock -x 200
    # Print the file and the old link
    echo "In $1:" >&2
    echo "$LINK" >&2
    # Print the options as though they are a list in order to have the same UI as other types of correction
    echo "$NEWLINK" | cat --number >&2
    if [ "$SCRIPT" -lt 1 ]; then
      # Read the user input
      read -r PICK
      if [ "$PICK" -eq 1 ]; then
        # Replace the old link with the new one.
        # Parentheses are placed around both the old link and new one in order to ensure we replace the link,
        #   and not some other place in the file that happens to use the same words.
        REPLACE=$(escape '('"$LINK""$HASH"')')
        REPLACEWITH=$(escapeReplace "$NEWLINK""$HASH")
        sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
      fi
      # We don't continue here because the link we fixed might be broken.
      LINK="$NEWLINK"
    fi
    ) 200>brokenlinks.lock
  fi
  # Skip links that are to an .md file and aren't broken.
  if [ "$(echo "$LIST" | grep "$LINK"".md" 2>/dev/null | wc -l)" -gt 0 ]; then
    # print the URL for use in checkhash
    echo "$LINK"
    return 0
  fi
  # Skip the link if it's not broken. (This catches non-broken non-md files)
  if ls "$LINK" 2>/dev/null >/dev/null; then
    return 2
  fi
  # Build the search term we will look for.
  # All hyphens and underscores are replaced with asterisks, so we
  #   can find files with mismatched hyphens or underscores.
  SEARCH='*'$(basename "$LINK" | sed 's/[-_ ]/*/g')'*'
  # Search for matching files.
  FILES=$(find . -iname "$SEARCH")
  (
  flock -x 200
  # Print the filename and the broken link.
  echo "In $1:" >&2
  echo "$LINK" >&2
  # If there are no files, skip to next link.
  if [ "$(echo -n "$FILES" | wc -c)" -lt 1 ]; then
    echo "Could not find" >&2
    return 1
  fi
  # List the potential files, with numbers.
  echo "$FILES" | cat --number >&2
  if [ "$SCRIPT" -lt 1 ]; then
    # Read the user input
    read -r PICK
    # If the selection isn't a number, skip to the next link.
    if ! [[ $PICK =~ ^[0-9]+$ ]]; then
      return 1
    fi
    # Get the selected file path, without the preceding ./
    FILE=$(echo "$FILES" | head -n "$PICK" | tail -n 1 | sed 's/^\.\///')
    if echo "$FILE" | grep ".md$" >/dev/null; then
      FILE=$(basename "$FILE" .md)
    fi
    # Replace the old link with the new one.
    # Parentheses are placed around both the old link and new one in order to ensure we replace the link,
    #   and not some other place in the file that happens to use the same words.
    REPLACE=$(escape '('"$LINK""$HASH"')')
    REPLACEWITH=$(escapeReplace "$FILE""$HASH")
    sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
    # print the URL for use in checkhash
    echo "$LINK"
    return 0
  fi
  return 1
  ) 200>brokenlinks.lock
  return $?
}
export -f checkurl

checkhash() {
  # TODO check hash fragment validity
  return 0
}
export -f checkhash

# Main processing function
# Passed the path to a .md file
searchfile() {
  STATUS=0
  # This loops for every link in the file.
  # See the end of the function for the grep that finds the links in the file.
  # We use file descriptor 3, because if we used stdin, the read calls inside this loop would read from that instead of
  #  reading the user's input.
  while IFS= read -r -u 3 LINK; do
    if echo "$LINK" | grep '#' >/dev/null; then
      URL=$(echo "$LINK" | cut -d '#' -f 1)
      HASH="#"$(echo "$LINK" | cut -d '#' -f 2)
    else
      URL="$LINK"
      HASH=""
    fi
    URLSTATUS=0
    if [ -n "$URL" ]; then
      URL=$(checkurl "$1" "$URL" "$HASH")
      URLSTATUS=$?
      if [ "$URLSTATUS" -eq 1 ]; then
        STATUS=1
      fi
    fi
    if [ -n "$HASH" ] && [ "$URLSTATUS" -eq 0 ]; then
      checkhash "$1" "$HASH" "$URL"
      if [ "$?" -gt 0 ]; then
        STATUS=1
      fi
    fi
    if [ "$DEBUG" -eq 1 ]; then
      echo "$(date +%T.%N)	$1	$URL	$HASH"
    fi
  # This regex finds links in the file that is passed to searchfile
  # Results are fed to file descriptor 3 for the reasons previously explained.
  done 3< <(grep -oP '(?<=\]\().*?(?=[\)])' "$1" | sed -e "s/^<//g" -e "s/>$//g" | cut -d '"' -f1 | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  return $STATUS
}
export -f searchfile

FILES=()

export SCRIPT=0
export DEBUG=0
for i in $@; do
  if [ "$i" == "-s" ]; then
    export SCRIPT=1
  elif [ "$i" == "-d" ]; then
    export DEBUG=1
  else
    FILES+=("${i}")
  fi
done

export LIST=$(find . -iname "*.md")

if [ "${#FILES[@]}" -gt 0 ]; then
  for f in "${FILES[@]}"; do
    searchfile "$f"
    exit $?
  done
else
  # run searchfile on every .md file in the repo
  xargs -0 -P $(nproc --all) -a <(echo "$LIST" | tr '\n' '\0') -I {} bash -c 'searchfile "$@"' _ {}
fi
