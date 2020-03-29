#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR="DP-1-2-1" polybar bigbar &
sleep 2
MONITOR="eDP-1-1" polybar traybar &
MONITOR="DP-1-1-2" polybar minibar &

echo "Bars launched..."
