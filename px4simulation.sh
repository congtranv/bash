#!/bin/bash
echo "source ~/.bashrc"
source ~/.bashrc
wait
clear

#echo "Export HOME gps coordinates"
#export PX4_HOME_LAT=21.0065641
#export PX4_HOME_LON=105.8429146
#export PX4_HOME_ALT=0
#echo "HOME [$PX4_HOME_LAT, $PX4_HOME_LON, $PX4_HOME_ALT]"
#wait

echo "run simulation"
roslaunch px4 mavros_posix_sitl.launch
