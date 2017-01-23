#!/bin/bash

dir=`pwd`/`dirname $0`/../

cd $dir
git submodule update --init --remote --depth 1

#px4

cd $dir/Firmware
make posix_sitl_default

#sitl_gazebo

cd $dir/sitl_gazebo

git submodule update --init --recursive

mkdir -p build
cd build
cmake ..
make sdf rotors_gazebo_imu_plugin rotors_gazebo_mavlink_interface rotors_gazebo_motor_model rotors_gazebo_multirotor_base_plugin gazebo_lidar_plugin gazebo_opticalFlow_plugin
