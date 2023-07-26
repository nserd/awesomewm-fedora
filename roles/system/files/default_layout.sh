#!/bin/bash

function one_monitor_layout {
    /usr/bin/xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output HDMI-2 --off
}

function two_monitors_layout {
    /usr/bin/xrandr --output eDP-1 --mode 1920x1080 --pos 0x644 --rotate normal --output HDMI-1 --off --output HDMI-2 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
}

TRIGGER="$1"
HDMI_STATUS="$(cat /sys/class/drm/card1-HDMI-A-2/status)"

[ "$HDMI_STATUS" == "connected" ] && two_monitors_layout || one_monitor_layout
[ "$TRIGGER" != "awesome" ] && /usr/bin/pkill -HUP awesome