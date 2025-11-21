#!/bin/bash
shopt -s extglob
cd generator
mkdir -p docs
cp -t docs -r ../!(generator|wiki-tools|_*)
cp style.css docs
zensical build
rm -r docs
if [ $? -ne 0 ]; then
	exit 1
fi
