#!/bin/zsh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar example >>~/.config/polybar/polybar.log 2>&1 &
