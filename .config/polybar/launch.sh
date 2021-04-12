#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch 
export MONITOR=$(polybar -m | awk -F'[:+]' '/primary/{print $1}');
polybar -c  ~/.config/polybar/config main &
notify-send polybar "launching main bar on $MONITOR"

for m in $(polybar -m | awk -F'[:+]' !'/primary/{print $1}'); do
	export MONITOR=$m;
	polybar -c  ~/.config/polybar/config secondary &
	notify-send polybar "launching secondary bar on $MONITOR"
done

