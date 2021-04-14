#!/bin/bash 

current=$(pacmd list-sinks | grep active)

#switch to speakers
if [[ $current == *"headphones"* ]]; then
    pacmd set-sink-port 0 analog-output-lineout
    amixer -c 1 sset "Auto-Mute Mode" Disabled

#switch to headphones
elif [[ $current == *"lineout"* ]]; then
    pacmd set-sink-port 0 analog-output-headphones
    amixer -c 1 sset "Auto-Mute Mode" Enabled
fi  
