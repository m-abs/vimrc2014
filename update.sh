#!/bin/bash

set -e

git pull
git submodule foreach git checkout master
git submodule foreach git pull origin master
git submodule update --init --recursive
git add -p sources_non_forked

cd sources_non_forked/YouCompleteMe/ && ./install.py && cd -
