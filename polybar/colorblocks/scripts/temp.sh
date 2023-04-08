#!/usr/bin/env bash

MODFILE="$HOME/.config/polybar/colorblocks/tempinfo.ini"



for i in /sys/class/hwmon/hwmon*/temp*_input; do 
  PATHTEMP="$(readlink -f $i)"; done


cat << EOF > $MODFILE
  [tempinfo]
  path = "$PATHTEMP"

EOF


