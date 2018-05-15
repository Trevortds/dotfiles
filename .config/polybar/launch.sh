#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR="HDMI1" polybar bigbar &
MONITOR="HDMI2" polybar traybar &
MONITOR="DP1" polybar littlebar &

echo "Bars launched..."
