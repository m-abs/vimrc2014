#!/bin/bash

BASEDIR=$(cd $(dirname $0); pwd -P);

cp $BASEDIR/vimrcs/basic.vim ~/.vimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
