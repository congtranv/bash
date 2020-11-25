#!/bin/bash
clear
#CURDIR=$pwd

if [ -z "$1" ]; then
  echo "syntax error:"
  echo "./build_offboard.sh /path/to/catkin/ws"
  exit
else
  WS=$1
fi
#cd $WS
catkin build -w $WS
wait
#cd $CURDIR
