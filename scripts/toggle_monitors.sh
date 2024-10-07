#!/bin/bash

current_workspace=$(hyprctl active | grep -oP '(?<=active: )\d+')

if [ "$current_workspace" -eq 1 ]; then
    hyprctl dispatch workspace 7
else
    hyprctl dispatch workspace 1
fi

