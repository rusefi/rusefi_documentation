#!/usr/bin/env bash
##################################################################################################
#                                         brokenlinks.sh                                         #
#                                           02/18/2021                                           #
#                                   Written By David Holdeman                                    #
#     Searches for broken links in a Github Wiki repo, and suggests and applies corrections.     #
#                      Usage: brokenlinks.sh [-s non-interactive] [-d debug]                     #
#                           [-w check web links] <optional file(s)> ...                          #
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
  if echo "$LINK" | grep -E '^http' >/dev/null; then
		if [ "$HTTP" != "1" ]; then
			return 2;
		fi
		R=$(wget -S -qO /dev/null --no-check-certificate --user-agent='Mozilla/5.0 (X11; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0' "$LINK" 2>&1 | awk '/HTTP\/[0-9.]+/{print $2;exit;}')
			case "$R" in
				"200"|"301"|"302"|"303"|"307"|"308"|"403"|"429"|"418")
				;;
				*)
					(
						flock -x 200
						echo "$1: $R $LINK" >&2
					) 200>brokenlinks.lock
					return 1
			esac
			return 2
  fi
  # Check for links that begin in ./ or /, as they won't function as expected everywhere.
  if echo "$LINK" | grep -E '^[.]?/' >/dev/null; then
    # Save the link for replacement
    OLDLINK="$LINK"
    # Correct the link.
    # We save this to $LINK because the next check in this function need the corrected version.
    LINK=$(echo "$LINK" | sed 's/^.\{0,1\}\///')
    # Lock user-facing input/output so that the user is presented with one fix at a time.
    (
			flock -x 200
			# Print the file and the old link
			echo "In $1:" >&2
			echo "$OLDLINK" >&2
			# Print the options as though they are a list in order to have the same UI as other types of correction
			echo "$LINK" | cat --number >&2
			# Make sure we aren't in non-interactive mode.
			if [ "$SCRIPT" -lt 1 ]; then
				echo "Type a number, then hit return to select an alternative, or just hit return to skip fixing:" >&2
				# Read the user input
				read -r PICK
				if [[ $PICK =~ ^[0-9]+$ ]] && [ "$PICK" -eq 1 ]; then
					# Replace the old link with the new one.
					# Parentheses are placed around both the old link and new one in order to ensure we replace the link,
					#   and not some other place in the file that happens to use the same words.
					REPLACE=$(escape '('"$OLDLINK""$HASH"')')
					REPLACEWITH=$(escapeReplace "$LINK""$HASH")
					sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
				fi
				# We don't continue here because the link we fixed might be broken.
			fi
			# File descriptor for the lock.
    ) 200>brokenlinks.lock
  fi
  # Skip links that are to an .md file and aren't broken.
  if [ "$(echo "$LIST" | grep "$LINK"".md" 2>/dev/null | wc -l)" -gt 0 ]; then
    # print the URL for use in `checkhash`
    echo "$LINK"
    return 0
  fi
  # Skip non-md links if they're not broken.
  if echo "$LINK" | grep -v '.md$' >/dev/null && ls "$LINK" 2>/dev/null >/dev/null; then
    return 2
  fi
  # Build the search term we will look for.
  # All hyphens and underscores are replaced with asterisks, so we
  #   can find files with mismatched hyphens or underscores.
  SEARCH='*'$(basename "$LINK" | sed 's/[-_ ]/*/g')'*'
  # Search for matching files.
  # We are using `find` here because we need to search for all files, while $LIST has only .md files
  FILES=$(find . -iname "$SEARCH")
  # Lock user-facing input/output so that the user is presented with one fix at a time.
  (
		flock -x 200
		# Print the filename and the broken link.
		echo "In $1:" >&2
		echo "$LINK" >&2
		# If there are no files, skip to next link.
		if [ -z "$FILES" ]; then
			echo "Could not find" >&2
			return 1
		fi
		# List the potential files, with numbers.
		echo "$FILES" | cat --number >&2
		# Make sure we aren't in non-interactive mode.
		if [ "$SCRIPT" -lt 1 ]; then
			echo "Type a number, then hit return to select an alternative, or just hit return to skip fixing:" >&2
			# Read the user input
			read -r PICK
			# If the selection isn't a number, skip to the next link.
			if ! [[ $PICK =~ ^[0-9]+$ ]]; then
				return 1
			fi
			# Get the selected file path, without the preceding ./
			FILE=$(echo "$FILES" | head -n "$PICK" | tail -n 1 | sed 's/^\.\///')
			# Track if the linked file is a .md file
			MD=0
			if echo "$FILE" | grep ".md$" >/dev/null; then
				MD=1
				# Drop the .md from the link
				FILE=$(basename "$FILE" .md)
			fi
			# Replace the old link with the new one.
			# Parentheses are placed around both the old link and new one in order to ensure we replace the link,
			#   and not some other place in the file that happens to use the same words.
			REPLACE=$(escape '('"$LINK""$HASH"')')
			REPLACEWITH=$(escapeReplace "$FILE""$HASH")
			sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$1"
			# print the URL for use in `checkhash`
			echo "$LINK"
			if [ "$MD" -eq 1 ]; then
				return 0
			else
				return 2
			fi
		fi
		return 1
		# File descriptor for the lock.
  ) 200>brokenlinks.lock
  # The returns within the lock closure don't return from the function, only from the closure.
  return $?
}
export -f checkurl

checkhash() {
  # $1: file
  # $2: hash
  # $3: url - won't always be present
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
    # Break the link into URL and hash fragment, if one is present
    if echo "$LINK" | grep '#' >/dev/null; then
      URL=$(echo "$LINK" | cut -d '#' -f 1)
      HASH="#"$(echo "$LINK" | cut -d '#' -f 2)
    else
      URL="$LINK"
      HASH=""
    fi
    # We need to store the return status of `checkurl` to know whether we need to check the hash
    URLSTATUS=0
    if [ -n "$URL" ]; then
      # `checkurl` returns the URL if it is good,
      #   so that if it was fixed, we have the update version to use in `checkhash`.
      URL=$(checkurl "$1" "$URL" "$HASH")
      URLSTATUS=$?
      if [ "$URLSTATUS" -eq 1 ]; then
        STATUS=1
      fi
    fi
    # Only check the hash if it exists and the URL was good.
    if [ -n "$HASH" ] && [ "$URLSTATUS" -eq 0 ]; then
      # Parameters are reversed because we won't always have a URL - we might only have a hash fragment.
      checkhash "$1" "$HASH" "$URL"
	    # Check exit code directly https://www.shellcheck.net/wiki/SC2181
      if ! checkhash "$1" "$HASH" "$URL"; then
        STATUS=1
      fi
    fi
    if [ "$DEBUG" -eq 1 ]; then
      echo "$(date +%T.%N)	$1	$URL	$HASH"
    fi
	# This regex finds links in the file that is passed to searchfile
	# Results are fed to file descriptor 3 for the reasons previously explained.
  done 3< <(grep -oP '(?<=\]\()([^()]*|\([^()]*\))*(?=\))' "$1" | sed -e "s/^<//g" -e "s/>$//g" | cut -d '"' -f1 | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  return $STATUS
}
export -f searchfile

FILES=()

export SCRIPT=0
export DEBUG=0
for i in $@; do
	case "$i" in
		"-s")
			export SCRIPT=1
			;;
		"-d")
			export DEBUG=1
			;;
		"-w")
			export HTTP=1
			;;
		*)
			FILES+=("${i}")
  esac
done

# split into 2 commands to avoid masking of return values https://www.shellcheck.net/wiki/SC2155
LIST=$(find . -iname "*.md" ! -name '_*' ! -path "./generator/*")
export LIST

if [ "${#FILES[@]}" -gt 0 ]; then
  STATUS=0
  # Only run `searchfile` on passed-in file names.
  for f in "${FILES[@]}"; do
	  # Check exit code directly https://www.shellcheck.net/wiki/SC2181
    if ! searchfile "$f"; then
      STATUS=1
    fi
  done
  exit $STATUS
else
  # run `searchfile` on every .md file in the repo
  xargs -0 -P $(nproc --all) -a <(echo "$LIST" | tr '\n' '\0') -I {} bash -c 'searchfile "$@"' _ {}
fi
