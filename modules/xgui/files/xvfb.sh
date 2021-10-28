#!/bin/bash
# This script is used to start up the Xvfb
# framebuffer. The sleep timer is not required
# but added so everything has time to get completely
# started before starting the next command as a 
# safety net.
Xvfb :10 -screen 0 1024x800x24 -fp /usr/share/X11/fonts/misc/ &
sleep 3
export DISPLAY=localhost:10.0
sleep 3
/usr/bin/xhost +
sleep 3
/usr/bin/mwm &

