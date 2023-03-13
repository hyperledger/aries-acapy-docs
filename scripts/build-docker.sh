#! /bin/bash

apt update
apt install rsync python python3-pip -y
pip install -U sphinx sphinx-markdown-builder

corepack enable
corepack prepare yarn@stable --activate
