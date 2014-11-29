#!/bin/bash

BASEDIR=$(cd $(dirname $0); pwd -P);

missing=();
function check() {
    cmd=$1;
    which ctags  > /dev/null 2>&1;
    if [ $? -ne 0 ]; then
        echo "$cmd is missing"
        missing+=('ctags');
    fi
}
check ctags
check jshint
check jscs

if [ ${#missing[@]} -ne 0 ]; then
    echo "Some binaries are missing, can't install"
    exit 255
fi

cat << EOF > ~/.vimrc
set runtimepath+=$BASEDIR

source $BASEDIR/vimrcs/basic.vim
source $BASEDIR/vimrcs/filetypes.vim
source $BASEDIR/vimrcs/plugins_config.vim
source $BASEDIR/vimrcs/extended.vim

try
    source $BASEDIR/my_configs.vim
catch
endtry
EOF

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
