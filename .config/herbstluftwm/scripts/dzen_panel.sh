#! /bin/bash

source "$HOME/.config/herbstluftwm/scripts/colors"

cFG=${color["white"]};
cBG=${color["black"]};
monitor=${1:-0}
geometry=( $(herbstclient monitor_rect "$monitor") )

if [ -z "$geometry" ]; then
  echo "Invalid monitor $monitor"
  exit 1
fi

## geometry has the format: WxH+X+Y
x=${geometry[0]}
y=${geometry[1]}
width=${geometry[2]}
height=14
font="-*-terminus-*-*-*-*-12-*-*-*-*-*-*-*"

python $HOME/Code/python/dzenpanel/dzen_panel.py | dzen2 -w 400 -h $height -x 312 -y $y -bg "$cBG" -fg "$cFG" -fn "$font" -ta center
