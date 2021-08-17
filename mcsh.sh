#!/bin/bash

# A bash-based Minecraft server management tool.
# mcsh v0.1 Alpha
# By AlexXuCN
# GitHub: https://github.com/AlexXuCN/msch

mcshver="MCSH v0.1"

if [ $0 == "./mcsh.sh" ]
then
    echo 'This Script isn't for execute'
    echo 'You should use `source mcsh.sh` to include this script'
elif [ $0 == "bash" ]
then
    echo 'This Script isn't for execute'
    echo 'You should use `source mcsh.sh` to include this script'
elif [ $0 == "sh" ]
then
    echo 'This Script isn't for execute'
    echo 'You should use `source mcsh.sh` to include this script'
else
    echo "${mcshver} Loaded!"
    echo 'Use `mc help` for help'
fi

# config

makemcshconfig(){
    touch ~/.mc/config/mcsh.config
    echo -e "# mcsh config \npackagemirror=https://cdn.jsdelivr.net/gh/AlexXuCN/mcsh-packages/\nmclocation=null"  > ~/.mc/config/mcsh.config
}

if test -d ~/.mc/config
then
    if test -f ~/.mc/config/mcsh.config
    then
        source ~/.mc/config/mcsh.config
    else
        makemcshconfig
        source ~/.mc/config/mcsh.config
    fi
elif test -d ~/.mc
then
    mkdir ~/.mc/config
    makemcshconfig
    source ~/.mc/config/mcsh.config
else
    mkdir ~/.mc/config
    makemcshconfig
    source ~/.mc/config/mcsh.config
fi


mc(){
    if [ $1 == "help" ]
    then
        echo ${mcshver}
        echo "Avaliable arguments:"
        echo "  help - Show this message."
        echo "  install - Install a Minecraft Server Version"
        echo "  list - List all available packages to install"
        echo "  start - Start a Minecraft Sevrer"
        echo "  script - Create a startup script"
        echo "  config - Change or view the config"
        echo "  update - Update package database
    elif [ $1 == "update" ]
    then

    fi
}
