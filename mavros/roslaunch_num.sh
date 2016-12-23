if [ $# != 3 ]
then
  echo "$0 num inport outport"
  exit 0
fi

roslaunch px4_num.launch num:=$1 inport:=$2 outport:=$3 &
