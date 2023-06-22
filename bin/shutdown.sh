#!/bin/bash

echo try

if [ "$1" != "yes" ]; then
    echo Sorry, need a yes after...
    exit
fi

# Turn off podman
podman=$(ps aux | grep podman | grep -v grep | wc -l)
if [ "${podman}" != "0" ]; then
  echo -n "Stopping podman  "
  sudo podman stop -a
fi

# Turn off docker
systemctl status docker &> /dev/null
if [ $? != 3 ]; then
  echo -n "Stopping docker  "
  systemctl stop docker
fi


shutdown -h +0

