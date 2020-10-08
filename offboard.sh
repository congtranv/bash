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
  echo "Simulation OFFBOARD mode: $MODE"
  rosrun offboard hovering
elif [[ "$MODE" == "setpoint" ]]; then
  echo "Simulation OFFBOARD mode: $MODE"
  rosrun offboard offboard
elif [[ "$MODE" == "gps" ]]; then
  echo "Simulation OFFBOARD mode: $MODE"
  rosrun offboard gps_offb
else
  echo "syntax error: ./offboard.sh MODE"
  echo "MODE: hovering, setpoint or gps" 
  exit
fi
