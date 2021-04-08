#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch 
MONITOR=$(polybar -m | awk -F'[:+]' '/primary/{print $1}');
polybar -c  ~/.config/polybar/config --reload main &
echo launching main on $MONITOR

for m in $(polybar -m | awk -F'[:+]' !'/primary/{print $1}'); do
	MONITOR=$m polybar -c  ~/.config/polybar/config --reload secondary &
	echo launching secondary on $MONITOR
done

