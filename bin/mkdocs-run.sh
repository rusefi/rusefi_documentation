#!/bin/bash

cd mkdocs
ln -s .. docs
cp style.css ..
mkdocs build --strict
if [ $? -ne 0 ]; then
	exit 1
fi
cd ..
rm style.css
