#!/bin/bash
# Build: bash wiki-tools/run.sh
# Serve: bash wiki-tools/run.sh serve --dev-addr=0.0.0.0:8000
# Update while running Serve in another shell: bash wiki-tools/run.sh update

# List of files to include in the PDF manual
SOURCES=$(cat <<ENDSOURCES
HOWTO-quick-start.md
HOWTO-create-tunerstudio-project.md
HOWTO-Get-Running-PnP.md
HOWTO-Get-Running.md
HOWTO-Start-An-Engine.md
How-Do-I-Set-My-Trigger-Offset.md
Get-tuning-with-TunerStudio-and-your-rusEFI.md
ENDSOURCES
			 )

# Copy files

shopt -s extglob

mkdir -p generator/docs
CHANGE=$(rsync -a --out-format="%f" --delete ./*.md generator/docs)

# Nodemap

cp generator/nodemap.html generator/docs

if [ -n "$CHANGE" ]; then
	(echo "from,to"; grep -Po '(?<=]\()((?!http)[^# /\n]+)(?=(#[^ /\n]*)?\))' !(_Sidebar).md 2>/dev/null | sed 's/\.md:/,/g' | sort | uniq) >generator/docs/map.csv

	comm -1 -3 <(grep -Po '(?<=]\()((?!http)[^# /\n]+)(?=(#[^ /\n]*)?\))' !(_Sidebar).md 2>/dev/null | sed 's/\.md:/\n/' | sort | uniq) <(find . -maxdepth 1 -name '*.md' -exec basename {} .md \; | grep -v "^_" | sort) >>generator/docs/map.csv

	(echo -e 'const nav = [\n"Home",'; grep -oP '(?<=")[^"]*(?=\.md)' generator/zensical.toml | sed -E -e 's/^/"/' -e 's/$/",/'; echo "];") >generator/docs/nav.js
fi

# PDF Manual

if [ $(comm -1 -2 <(echo "$CHANGE" | sed -E 's/^..\///' | sort) <(echo "$SOURCES" | sort) | wc -l) -gt 0 ]; then
	bash wiki-tools/genpdf.sh $SOURCES
fi

# Build the wiki

cd generator

cp style.css docs

if [ -n "$1" ]; then
	if [ "$1" != "update" ]; then
		# Run the server in the background because we need to hard link extra files
		# after zensical runs, but zensical serve doesn't exit/fork
		zensical $@ &
		SERVER=$!
		# Give zensical a little time to clear the destination directory
		sleep 1s
	fi
else
	zensical build
	if [ $? -ne 0 ]; then
		exit 1
	fi
fi

# Hard link all extra files
# This must be done after zensical because zensical clears the destination dir
cd ..
rsync -ra --link-dest="$(realpath .)" --exclude generator --exclude wiki-tools --exclude '_*' \
			--exclude '.*' --exclude nodemap.html --exclude style.css --exclude map.csv --exclude nav.js --exclude book.pdf --exclude '/*.md' ./ generator/wiki

if [ "$SERVER" != "" ]; then
	trap "kill $SERVER; exit" INT
	wait "$SERVER"
fi
