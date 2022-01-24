#!/usr/bin/env bash
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
  while IFS= read -r -u 3 link; do
    LINE=$(grep "$link" "$1")
    if [ "$LINE" != "$link" ]; then
      echo "$LINE"
    fi
    echo $link
    read -p "Enter a title or leave empty to use URL as title or enter 'n' to skip: " TITLE
    if [ "$TITLE" == "n" ]; then
      continue
    fi
    if [ $(echo -n "$TITLE" | wc -c) -lt 1 ]; then
      TITLE="$link"
    fi
    REPLACE=$(escape "$link")
    REPLACEWITH=$(escapeReplace '['"$TITLE"']''('"$link"')')
    sed -i "s/$REPLACE/$REPLACEWITH/" "$1"
  done 3< <(grep -oP '((?<![\(\[])http[s]?:\/\/[^\s]*)' "$1")
}
export -f searchfile

# run searchfile on every .md file in the repo
find . -iname "*.md" -exec bash -c 'searchfile "$0"' {} \;
