#!/bin/bash

echo try

if [ "$1" != "yes" ]; then
    echo Sorry, need a yes after...
    exit
fi

shutdown -h +0

