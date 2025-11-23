#!/usr/bin/env bash

escape() {
  sed 's/[^^]/[&]/g; s/\^/\\^/g' <<<"$1";
}

escapeReplace() {
  sed 's/[&/\]/\\&/g' <<<"$1";
}

replace() {
	LINK=$(realpath -s --relative-to . "$2")
	REPLACE=$(escape "($1)")
	REPLACEWITH=$(escapeReplace "$LINK")
	sed -i "s/$REPLACE/\($REPLACEWITH\)/" "$3"
}

LAST=""
NEW=""

grep -oP '!\[[^\]]*\]\(http.*?(?=[\)])' *.md | sort -t '(' -k 2 | while IFS='' read L; do
	F=$(echo "$L" | cut -d':' -f1)
	I=$(echo "$L" | cut -d':' -f2- | cut -d'(' -f2)
	if [ "$I" == "$LAST" ]; then
		replace "$I" "$NEW" "$F"
		continue
	fi
	LAST="$I"
	wget -O tmpimg "$I"
	if [ $? -eq 0 ]; then
		E=$(file --extension tmpimg | cut -d' ' -f2 | cut -d'/' -f1)
		display tmpimg
		echo $L
		N=$(zenity --entry --text "Enter new file name without extension")
		D=$(zenity --file-selection --directory --filename=./Images/)
		NEW="${D}/${N}.${E}"
		NI=1
		while [ -f "$NEW" ]; do
			NI=$((NI+1));
			NEW="${D}/${N}_${NI}.${E}"
		done
		mv tmpimg "$NEW"
		replace "$I" "$NEW" "$F"
	fi
done

R=$(grep -oP '!\[[^\]]*\]\(http.*?(?=[\)])' *.md)
if [ "$R" != "" ]; then
	echo "Failed files:"
	echo "$R"
	exit 1
fi
