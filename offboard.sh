#!/bin/bash
echo "source ~/.bashrc"
source ~/.bashrc
wait
clear

# rosrun offboard setpoint
roslaunch offboard offboard.launch
