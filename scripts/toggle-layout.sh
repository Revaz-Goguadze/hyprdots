#!/bin/bash
current_layout=$(hyprctl getoption input:kb_layout | awk '{print $2}')
current_layout=$(echo "$current_layout" | head -n 1)
if [ "$current_layout" == "us" ]; then
    hyprctl keyword input:kb_layout ge
else
    hyprctl keyword input:kb_layout us
fi
