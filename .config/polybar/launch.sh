#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2

MONITOR="DP-3" polybar bigbar &
MONITOR="DVI-D-0" polybar traybar &
MONITOR="DP-0" polybar littlebar &
# MONITOR="DVI-D-0" polybar bottombar &

echo "Bars launched..."
