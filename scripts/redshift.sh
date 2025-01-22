#!/bin/bash

# Temporary file to store the redshift state
STATE_FILE="/tmp/hyprshade_redshift_state"

# Initialize the state file if it doesn't exist
if [ ! -f "$STATE_FILE" ]; then
    echo "off" > "$STATE_FILE"
fi

# Read the current state
current_state=$(cat "$STATE_FILE")

if [ "$current_state" == "on" ]; then
   # echo "Disabling blue light filter..."
    hyprshade off
    echo "off" > "$STATE_FILE"
else
   # echo "Enabling blue light filter..."
    hyprshade on blue-light-filter
    echo "on" > "$STATE_FILE"
fi

