#!/bin/bash
source ~/.bashrc
clear
rostopic echo /mavros/local_position/pose
