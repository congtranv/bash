#!/bin/bash
echo "source ~/.bashrc"
source ~/.bashrc
wait
clear

if [ -z "$1" ]; then
  echo "syntax error: ./connect_px4.sh gcs_url"
  echo "gcs_url set to default: udp://:14555@192.168.4.2:14550"
  gcs_url="udp://:14555@192.168.4.2:14550"
else
  gcs_url=$1
  echo "gcs_url set to: $1"
fi

roslaunch mavros px4.launch fcu_url:=/dev/ttyTHS1:921600 gcs_url:=$gcs_url
