#!/bin/bash

cd mkdocs
ln -s .. docs
cp style.css ..
mkdocs build --strict
cd ..
rm style.css
