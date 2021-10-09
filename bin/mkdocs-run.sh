#!/bin/bash

shopt -s extglob
cd mkdocs
mkdir docs
cp -r ../!(mkdocs) docs
mkdocs build