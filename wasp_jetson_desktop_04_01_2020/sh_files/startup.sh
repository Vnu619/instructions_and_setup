#!/bin/sh
sleep 5
#export ROS_HOSTNAME=192.168.1.153
#export ROS_MASTER_URI=http://192.168.1.150:11311
#export ROS_IP=192.168.1.153

#gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/raptor_ws/devel/setup.bash; nmcli device wifi connect raptor password raptor@sutd; roslaunch --wait raptor raptor_group.launch'
gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/wasp_ws/devel/setup.bash; roscore'
sleep 5
gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/wasp_ws/devel/setup.bash; sudo ds4drv ' 
gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/wasp_ws/devel/setup.bash; rosrun --wait joy joy_node'
sleep 10
gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/wasp_ws/devel/setup.bash; rosrun --wait learning_joy turtle_teleop_joy'
#sleep 3
#gnome-terminal -- /bin/bash -c 'source /opt/ros/melodic/setup.bash; source ~/raptor_ws/devel/setup.bash; ./Desktop/sh_files/export_IP.sh; roslaunch --wait raptor_2d_nav move_base_2_group.launch'
