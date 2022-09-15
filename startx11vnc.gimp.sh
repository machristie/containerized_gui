#!/bin/bash

export DISPLAY=:0
Xvfb "$DISPLAY" -screen 0 1024x768x24 &
gimp &
exec /usr/bin/x11vnc -display "$DISPLAY" -usepw -forever