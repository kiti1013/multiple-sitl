#ROS

ros_release="indigo"

rosdep update

echo "source /opt/ros/${ros_release}/setup.bash" >> ~/.bashrc
source ~/.bashrc
