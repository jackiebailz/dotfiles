#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
picture=(/home/jackiebailz/.config/lock/overlay.png)
N=1

for index in `shuf --input-range=0-$(( ${#picture[*]} - 1 )) | head -${N}`
    do
    figura=${picture[$index]} 
done

[[ -f $figura ]] && convert /tmp/screen.png $picture -gravity center -composite     -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
