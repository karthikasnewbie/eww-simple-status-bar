#!/bin/bash

volume() {
	wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep 'Volume' | cut -d':' -f2
}

vol=(`volume`)
mul=100
RES=$(echo "scale=2; $vol*$mul" | bc)
echo ${RES%.*}
