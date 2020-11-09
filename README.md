# bash script for IVSR drone: OFFBOARD
## usage
#### in practice
- on laptop run `./ssh-nano.sh [nano IP]` to connect jetson nano on drone (run on each terminal)
- after ssh to jetson nano:
  
  *terminal 1*
  
  `./connect_px4.sh [gcs_url]`
  
  *terminal 2*
  
  `./offboard.sh [MODE]`
  
  *terminal 3*
  
  `check_imu.sh, check_local_pose.sh, check_state.sh, collect_data.sh or video.sh`

#### simulation
- on laptop terminal 1: `./px4simulation.sh`
- on laptop terminal 2: `./offboard.sh [MODE]`
- on laptop terminal 3: `./setmode.sh`

## build_offboard.sh
- after update offboard code, can use it to buid catkin workspace
- syntax:
```
./build_offboard.sh [/path/to/catkin_ws]
```
## check_imu.sh
- echo imu parameters to screen instead of `rostopic echo /mavros/imu/data`
- syntax:
```
./check_imu.sh
```
## check_local_pose.sh
- echo local position and orientation parameters to screen instead of `rostopic echo /mavros/local_position/pose`
- syntax:
```
./check_local_pose.sh
```
## check_state.sh
- echo state to screen instead of `rostopic echo /mavros/state`
- syntax:
```
./check_state.sh
```
## collect_data.sh
- write imu data, imu data raw, local pose, global position and record a bag file

  *need changing to your directory in script*
- syntax:
```
./collect_data.sh [nameOFfile]
```
## connect_px4.sh
- connect to pixhawk 4 and transfer data to QGround Control at *gcs_url*

  *gcs_url* example: `udp://:14555@192.168.x.x:14550`
- syntax:
```
./connect_px4.sh [gcs_url]
```
## offboard.sh
- run offboard code with one of 3 modes: hovering, setpoint local and setpoint GPS

  *MODE:*
  
  *hovering: hover at a height (along z-axis) - correspond to hovering node in [OFFBOARD code](https://github.com/congtranv/offboard)*
  
  *setpoint: input set of waypoints (x, y, z, yaw), drone will fly and reach each waypoint - correspond to offboard node in OFFBOARD code*
  
  *gps     : input set of GPS waypoint (lon, lat, alt), drone will fly and reach each waypoint - correspond to gps_offb node in OFFBOARD code*
  
- syntax:
```
./offboard.sh [MODE]
```
## px4simulation.sh
- run simulation in PC to test offboard code 

  *required px4 Firmware v1.10.1*
- syntax:
```
./px4simulation.sh
```
## setmode.sh
- use to set OFFBOARD mode and arm drone in simulation
- syntax:
```
./setmode.sh
```
## /ssh-nano.sh
- connect to companion PC (jetson nano) from laptop via ssh
- syntax:
```
./ssh-nano.sh [nano IP]
```
## ./video.sh
- record video from Logitech C270 camera
- syntax:
```
./video.sh [nameOFvideo]
```
