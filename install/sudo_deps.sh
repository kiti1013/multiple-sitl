#repos

echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list
wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -

apt-get update

#gazebo
apt-get install ros-indigo-gazebo7-ros ros-indigo-gazebo7-plugins -y

#sitl_gazebo
apt-get install libopencv-dev libeigen3-dev protobuf-compiler libprotobuf-dev libprotoc-dev -y

#px4
apt-get install python-argparse git-core wget zip python-empy cmake build-essential genromfs -y

#start script
apt-get install ruby -y

#clean
apt-get clean
