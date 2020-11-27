#!/bin/bash
source ~/.bashrc
clear
#today=`date +%Y-%m-%d.%H-%M-%S`
day=`date +%Y%m%d`
if [ -d "~/ros/data/$day" ] # need changing to your directory
then 
 echo "~/ros/data/$day exists" # need changing to your directory
else
 echo "mkdir ~/ros/data/$day" # need changing to your directory
 `mkdir ~/ros/data/$day` # need changing to your directory
fi

CURDIR=$pwd
FILENAME=$1

if [[ "$FILENAME" == "" ]]; then
  echo "syntax error. try ./collect_data.sh nameOFfile"
  exit
fi

cd ~/ros/data/$day # need changing to your directory
#rosbag record -aO $FILENAME.bag &
echo "collecting IMU data"
rostopic echo /mavros/imu/data >> $FILENAME-imu.yaml &
echo "collecting IMU raw data"
rostopic echo /mavros/imu/data_raw >> $FILENAME-imu-raw.yaml &
echo "collecting Local Position data"
rostopic echo /mavros/local_position/pose >> $FILENAME-local.yaml &
echo "collecting Global Position data"
rostopic echo /mavros/global_position/global >> $FILENAME-global.yaml &
echo "record rosbag"
rosbag record -aO $FILENAME.bag && fg

cd $CURDIR
