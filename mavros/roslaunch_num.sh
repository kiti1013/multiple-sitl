if [ $# -ne 4 ]
then
  echo "$0 num inport outport bridge_inport"
  exit 0
fi

roslaunch px4_num.launch num:=$1 inport:=$2 outport:=$3 bridge_inport:=$4 &
