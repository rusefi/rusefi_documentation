#!/bin/bash

sudo apt update

# sudo apt install python-pip for 'pip'
sudo apt install python3-pip

# pip did not work for  in my case?
pip install mkdocs mkdocs-ezlinks-plugin mkdocs-exclude
