#!/usr/bin/env bash
escape() {
  sed 's/[^^]/[&]/g; s/\^/\\^/g' <<<"$1";
}
export -f escape
escapeReplace() {
  sed 's/[&/\]/\\&/g' <<<"$1";
}
export -f escapeReplace
searchfile() {
  while IFS= read -r -u 3 link; do
    if echo $link | grep -E '^[http|\/]' >/dev/null; then
      continue
    fi
    if echo $link | grep -E '^\.\/' >/dev/null; then
      NEWLINK=$(echo $link | sed 's/^\.\///')
      echo "In $1:"
      echo $link
      echo $NEWLINK | cat --number
      read PICK
      if [ $PICK -eq 1 ]; then
        REPLACE=$(escape '('$link')')
        REPLACEWITH=$(escapeReplace "$NEWLINK")
        sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
      fi
    fi
    if [ $(find . -name "$link"".md" 2>/dev/null | wc -l) -gt 0 ]; then
      continue
    fi
    if echo "$link" | grep "#" >/dev/null; then
      continue
    fi
    if echo "$link" | grep -Ev ".md$" >/dev/null; then
      if ls "$link" 2>/dev/null >/dev/null; then
        continue
      else
        echo "In $1:"
        echo $link
        SEARCH='*'$(basename "$link" | sed 's/[-_ ]/*/g')'*'
        FILES=$(find . -iname "$SEARCH")
        if [ $(echo -n "$FILES" | wc -c) -lt 1 ]; then
          echo "Could not find"
          continue
        fi
        echo "$FILES" | cat --number
        read PICK
        if ! [[ $PICK =~ '^[0-9]+$' ]]; then
          continue
        fi
        FILE=$(echo "$FILES" | head -n $PICK | tail -n 1 | sed 's/^\.\///')
        REPLACE=$(escape '('$link')')
        REPLACEWITH=$(escapeReplace "$FILE")
        sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
        continue
      fi
    fi
    echo "In $1:"
    echo $link
    SEARCH='*'$(basename "$link" | sed 's/[-_ ]/*/g')'*'
    FILES=$(find . -iname "$SEARCH")
    if [ $(echo -n "$FILES" | wc -c) -lt 1 ]; then
      echo "Could not find"
      continue
    fi
    echo "$FILES" | cat --number
    read PICK
    if ! [[ $PICK =~ '^[0-9]+$' ]]; then
      continue
    fi
    FILE=$(basename "$(echo "$FILES" | head -n $PICK | tail -n 1)" .md)
    REPLACE=$(escape '('$link')')
    REPLACEWITH=$(escapeReplace "$FILE")
    sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
  done 3< <(grep -oP '(?<=\]\().+?(?=[\)])' "$1")
}
export -f searchfile
find . -iname "*.md" -exec bash -c 'searchfile "$0"' {} \;
