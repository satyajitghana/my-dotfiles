#!/usr/bin/env bash

# Terminate already running bar instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -x picom >/dev/null; do sleep 1; done
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/picom.log
picom --experimental-backends --backend glx 2>&1 | tee -a /tmp/picom.log &
disown

echo "Picom launched..."
