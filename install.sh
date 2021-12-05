#!/bin/bash

if [[ $EUID != 0 ]]; then
    echo "Please run as root"
    exit
fi

if [$# == 0 ]; then
    cp $PWD/pathtool /sbin
    cp $PWD/pathtool /usr/sbin
    echo "Successfully copied PathTool, try running \"pathtool\"."
else
    cp $PWD/pathtool $1
    echo "Successfully copied PathTool, try running \"pathtool\"."
    echo "Warning: You copied PathTool to $1, if $1 is not in your PATH variable already, you may have to add it for PathTool to function."
fi
  
