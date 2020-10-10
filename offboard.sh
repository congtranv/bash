#!/bin/bash
echo "source ~/.bashrc"
source ~/.bashrc
wait
clear

if [ -z "$1" ]; then
  echo "syntax error: ./offboard.sh MODE"
  echo "MODE: hovering, setpoint or gps" 
  exit
else
  MODE=$1
fi

if [[ "$MODE" == "hovering" ]]; then
  echo "OFFBOARD mode: $MODE"
  echo "enter the height for hovering"
  rosrun offboard hovering
elif [[ "$MODE" == "setpoint" ]]; then
  echo "OFFBOARD mode: $MODE"
  echo "enter number of waypoint(s),"
  echo "then enter each waypoint position and yaw rotation"
  rosrun offboard offboard
elif [[ "$MODE" == "gps" ]]; then
  echo "OFFBOARD mode: $MODE"
  echo "enter global positon: latitude, longitude, altitude"
  rosrun offboard gps_offb
else
  echo "syntax error: ./offboard.sh MODE"
  echo "MODE: hovering, setpoint or gps" 
  exit
fi
