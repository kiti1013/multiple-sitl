#/bin/bash
#this file is to install toolchain for build PX4
usermod -a -G dialout $USER
add-apt-repository ppa:george-edison55/cmake-3.x -y
apt-get update
apt-get install python-argparse git-core wget zip \
     python-empy qtcreator cmake build-essential genromfs -y
apt-get install ant protobuf-compiler libeigen3-dev libopencv-dev openjdk-7-jdk openjdk-7-jre clang-3.5 lldb-3.5 -y
apt-get remove modemmanager
apt-get install python-serial openocd \
    flex bison libncurses5-dev autoconf texinfo build-essential \
    libftdi-dev libtool zlib1g-dev \
    python-empy  -y
apt-get remove gcc-arm-none-eabi gdb-arm-none-eabi binutils-arm-none-eabi gcc-arm-embedded
add-apt-repository --remove ppa:team-gcc-arm-embedded/ppa
wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2
tar -jxf gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2
exportline="export PATH=$HOME/multple-sitl/gcc-arm-none-eabi-4_9-2015q3/bin:\$PATH"
if grep -Fxq "$exportline" ~/.profile; then echo nothing to do ; else echo $exportline >> ~/.profile; fi
. ~/.profile
apt-get install libc6:i386 libgcc1:i386 libstdc++5:i386 libstdc++6:i386
apt-get install gcc-4.6-base:i386

add-apt-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install ruby2.3
