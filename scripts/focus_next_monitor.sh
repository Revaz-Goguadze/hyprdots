#!/bin/bash
# Get the current monitor index
# Focus the next monitor
current_monitor=$(hyprctl monitors | awk '/Monitor/{monitor=$2} /focused: yes/{print monitor}')

#echo $current_monitor
if [ "$current_monitor" = "eDP-1" ]; then
  hyprctl dispatch focusmonitor HDMI-A-1
else
  hyprctl dispatch focusmonitor eDP-1
fi

