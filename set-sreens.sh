#!/bin/bash

LAPTOP=eDP
EXTERNAL=HDMI-A-0

# Check if external monitor is connected
if xrandr | grep "$EXTERNAL connected" >/dev/null; then
    # Dual monitor: external on left, laptop on right
    xrandr --output $EXTERNAL --primary --mode 1920x1080 --pos 0x0 --rotate normal \
           --output $LAPTOP --mode 1920x1080 --pos 1920x0 --rotate normal
else
    # Only laptop screen
    xrandr --output $LAPTOP --primary --mode 1920x1080 --pos 0x0 --rotate normal \
           --output $EXTERNAL --off
fi
