# bash script for IVSR drone: OFFBOARD

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
## px4simulation.sh
- run simulation in PC to test offboard code 

  *require installed px4 Firmware v1.10.1*
- syntax:
```
./px4simulation.sh
```
## ssh-nano.sh
- connect to companion PC (jetson nano) from laptop via ssh
- syntax:
```
./ssh-nano.sh [nano IP]
```
## video.sh
- record video from Logitech C270 camera
- syntax:
```
./video.sh [nameOFvideo]
```
## distanceGPS
- calculate the distance between GPS 1 point (lat1, lon1, alt1) and GPS 2 point (lat2, lon2, alt2)
- syntax:
```
./distanceGPS
```
