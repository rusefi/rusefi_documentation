#!/usr/bin/env bash
# For use with zensical serve
cd generator
mkdir -p docs
rsync -rav --exclude generator --exclude wiki-tools --exclude '_*' --exclude '.*' ../ docs
