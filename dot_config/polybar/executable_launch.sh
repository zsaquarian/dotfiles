#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

MONITORS=$(xrandr --listmonitors | wc -l)

if [ $MONITORS -eq 3 ]
then
  polybar -q main -c "$DIR"/config.ini &
  polybar -q main2 -c "$DIR"/config.ini &
else
  polybar -q main3 -c "$DIR"/config.ini &
fi
