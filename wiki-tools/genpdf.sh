#!/usr/bin/env bash

mkdir -p generator/docs

pandoc --verbose -s --toc --toc-depth=2 \
			 --lua-filter wiki-tools/filter.lua \
			 -H wiki-tools/header.tex \
			 -B wiki-tools/before.tex \
			 -A wiki-tools/after.tex \
			 -o generator/docs/book.pdf \
			 --pdf-engine=xelatex  -V mainfont="DejaVu Sans" \
			 $@
