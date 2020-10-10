#!/bin/bash
echo "source ~/.bashrc"
source ~/.bashrc
wait
clear

echo "set drone to OFFBOARD mode"
rosrun offboard setmode_offb
