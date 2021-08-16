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

mc(){
    if [ $1 == "help" ]
    then
        echo ${mcshver}
        echo "Avaliable arguments:"
        echo "  help - Show this message."
        echo "  install - Install a Minecraft Server Version"
        echo "  start - Start a Minecraft Sevrer"
        echo "  script - Create a startup script
    fi
}
