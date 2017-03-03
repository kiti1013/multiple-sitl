#ROS

ros_release="indigo"

echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116

apt-get update
apt-get install ros-${ros_release}-ros-base -y

#mavros
apt-get install ros-${ros_release}-mavros python-prettytable -y

#clean
apt-get clean

#init
rosdep init
