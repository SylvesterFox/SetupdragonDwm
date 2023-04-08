#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/colorblocks"

# Terminate already running bar instances
killall -q polybar

$HOME/.config/polybar/colorblocks/scripts/temp.sh

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q HDIM -c "$DIR"/config.ini & polybar -q vga -c "$DIR"/config.ini &

