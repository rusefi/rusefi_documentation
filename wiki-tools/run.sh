#!/bin/bash
shopt -s extglob
cd generator
mkdir -p docs
cp -t docs -r ../!(generator|wiki-tools|_*)
cp style.css docs
zensical build
if [ $? -ne 0 ]; then
	rm -r docs
	exit 1
fi
rm -r docs
cp nodemap.html wiki
cd ..
bash wiki-tools/genpdf.sh \
		 HOWTO-quick-start.md \
		 HOWTO-create-tunerstudio-project.md \
		 HOWTO-Get-Running-PnP.md \
		 HOWTO-Get-Running.md \
		 HOWTO-Start-An-Engine.md \
		 Get-tuning-with-TunerStudio-and-your-rusEFI.md

(echo "from,to"; grep -Po '(?<=]\()((?!http)[^# /\n]+)(?=(#[^ /\n]*)?\))' !(_Sidebar).md 2>/dev/null | sed 's/\.md:/,/g' | sort | uniq) >generator/wiki/map.csv
