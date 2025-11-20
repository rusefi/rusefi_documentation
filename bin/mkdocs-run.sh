#!/bin/bash
shopt -s extglob
cd mkdocs
mkdir -p docs
cp -t docs -r ../!(mkdocs|wiki-tools|bin|_*)
cp style.css docs
zensical build
rm -r docs
if [ $? -ne 0 ]; then
	exit 1
fi
