#!/bin/bash

set -e

cd $(dirname $0)
HERE=$PWD

git pull
git submodule foreach git clean -d -x -f
git submodule foreach git checkout master
git submodule foreach git pull origin master
git submodule update --init --recursive
git add -p sources_non_forked

cd $HERE/sources_non_forked/YouCompleteMe
./install.py --clang-completer --system-libclang

cd $HERE/sources_non_forked/vimproc.vim
make -j4
