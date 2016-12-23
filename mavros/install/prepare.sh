#ROS

ros_release="kinetic"

rosdep update

echo "source /opt/ros/${ros_release}/setup.bash" >> ~/.bashrc
source ~/.bashrc
