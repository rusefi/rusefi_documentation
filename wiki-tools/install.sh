#!/bin/bash
set -euo pipefail

apt_script="$(dirname "$0")/apt.sh"
bash "$apt_script" update

# sudo apt install python-pip for 'pip'
bash "$apt_script" install python3-pip fonts-dejavu-core texlive-xetex pandoc

pip install zensical pymdown-extensions
