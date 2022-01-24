#!/bin/bash

# FACIAL, faci
# Copyright (c) 2021 Ryan Martin
# Copyright (c) 2022 Ryan Martin

declare readonly WORKING_DIR=$(pwd)
declare readonly SCRIPT_NAME="faci"

if [ -n "$HOME" ]; then
        declare readonly USER_DIR="$HOME"
else
        if [ "$USER" != "root" ]; then
        declare readonly USER_DIR="/home/$USER"
        else
        declare readonly USER_DIR="/root"
        fi
fi

IFS=";"

function rdstr()
{
        if [ -n "$1" ] && [ -n "$2" ] && [ "$2" != "\"\"" ]; then
                declare $1=$2
        fi
}

function unitrc()
{
        for str in $(cat .facirc); do
                rdstr ${str%%=*} ${str##*=}
        done
}

# replaced name at installtion
function [facirc]()
{
        echo
}

# declare environment variables from .unitrc and .facirc
# .unitrc covered same environment variables by .facirc

[facirc] && unitrc
